// ------------------------------------------------------------------
// Repository-Pattern in c/c++
//
// Implementation of repository pattern without dynamic memory allocation
// using a conventional array.
//
// The entity intentionally does not contain complex data types
// like std::string. These require dynamic memory allocation, which
// is deliberately omitted.
// ------------------------------------------------------------------

#include <stdio.h>
#include <vector>
#include <limits>

struct Entity
{
    // This is the handle to the repository entry. 0 indicates not assigned.
    // Never change this it is used by the repository. I currently have no
    // good idea to hide it from the user without introducing a lot of runtime
    // overhead. Do you?
    unsigned internal_id;

    int token;
    int data;
};

// Small factory method to initialize a Entity struct
// This keeps it clean of business logic.
Entity MakeEntity(int token, int data)
{
    Entity f = {0, token, data};
    return f;
}

enum ReturnCode : int
{
    kPoolExceeded = -2,
    kNotFound = -1,
    kFail = 0,
    kSuccess = 1,
};

// Abstract interface to Entity repository class
class IEntityRepository {
public:
    virtual ReturnCode Add(const Entity &entity) = 0;
    virtual ReturnCode Edit(const Entity &entity) =0;
    virtual ReturnCode Delete(const Entity &entity) = 0;
    virtual ReturnCode GetFirstWithToken(int token, Entity &out_entity) const = 0;
};

// Assumptions:
//
// - It is assumed that the number of maximal ids (on 32bit 4294967294 unique ids)
//   will never be exceeded. If this assumption breaks you have to add extra 
//   code to handle such cases.
// - The array entities are not initialized because its not necessary but would be nice. 
//   You can add initialization code by yourself if needed.
class EntityRepository : public IEntityRepository
{
public:
    EntityRepository()
    {
        for (int i = 0; i < kMaxNumberOfEntities; i++)
        {
            entities_[i].internal_id = kUnusedId; // assign unused id
        }
    }
    ReturnCode Add(const Entity &entity) override
    {
        Entity *own;
        auto ret = SearchFreeSlot(&own);
        if (ret != ReturnCode::kSuccess)
        {
            return ret; // propagate return value;
        }

        *own = entity; // copy it to internal data structure
        own->internal_id = internal_id_counter_;
        internal_id_counter_++;
        return ReturnCode::kSuccess;
    }

    ReturnCode Edit(const Entity &entity) override
    {
        for (int i = 0u; i < kMaxNumberOfEntities; i++)
        {
            auto &i_entity = entities_[i];

            if (i_entity.internal_id == entity.internal_id)
            {
                entities_[i] = entity; // copy
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kNotFound;
    }

    ReturnCode Delete(const Entity &entity) override
    {
        for (int i = 0u; i < kMaxNumberOfEntities; i++)
        {
            auto &i_entity = entities_[i];

            if (i_entity.internal_id == entity.internal_id)
            {
                entities_[i].internal_id = kUnusedId;
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kNotFound;
    }

    // Example getter. One can add as much as needed.
    ReturnCode GetFirstWithToken(int token, Entity &out_entity) const override
    {
        for (int i = 0u; i < kMaxNumberOfEntities; i++)
        {
            auto &entity = entities_[i];

            if ((entity.token == token) && (entity.internal_id != kUnusedId))
            {
                out_entity = entity; // copy
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kNotFound;
    }

private:
    inline ReturnCode SearchFreeSlot(Entity **entity)
    {
        for (unsigned i = 0u; i < kMaxNumberOfEntities; i++)
        {
            if (entities_[i].internal_id == kUnusedId) // indicates a free slot
            {
                *entity = &entities_[i];
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kPoolExceeded;
    }
    
    static constexpr unsigned kUnusedId = std::numeric_limits<unsigned>::max(); // use maximal number to flag an id as unused
    static constexpr unsigned kMaxNumberOfEntities = 10u; //< maximal number of storeable entities. 

    unsigned internal_id_counter_ = 1u; // start with id 1. Zero is the initialized state

    // Statically allocate a pool of entities. This will throw away memory if to high and 
    // leads to loots of problems if set to low ;-)
    Entity entities_[kMaxNumberOfEntities];
};

// -------------------------------------------------
// Client code ... uses Repository
// -------------------------------------------------
void Client()
{

    Entity entity, entity2;
    EntityRepository repo;

    // Add some entities to the repo
    repo.Add(MakeEntity(10, 12));
    repo.Add(MakeEntity(11, 13));
    repo.Add(MakeEntity(12, 14));

    // Get Entity 1 with token 11
    auto re = repo.GetFirstWithToken(11, entity);
    printf("%i: %i %i\n", re, entity.token, entity.data);

    // only change the copy so far.
    entity.token = 15;
    entity.data = 23;

    // Get Entity 2 with token 11. The result shouldn't have changed.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(11, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    // Update the repo with the changes in entity 1
    repo.Edit(entity);

    // Get Entity 2 with token 11. This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(11, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    // Get Entity 2 with token 15. This should return the changed entity.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(15, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    repo.Delete(entity); // this should now delete the corresponding entry.

    // Get Entity 2 with token 15.  This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(15, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);
}

int main()
{
    Client();
    return 0;
}
