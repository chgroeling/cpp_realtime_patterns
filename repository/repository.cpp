// ------------------------------------------------------------------
// Repository-Pattern in c/c++
//
// Implementation of repository pattern with dynamic memory allocation
// using std::vector.
//
// The entity intentionally does not contain complex data types
// like std::string. These require dynamic memory allocation, which
// is deliberately omitted.
// ------------------------------------------------------------------

#include <stdio.h>
#include <vector>

struct Entity
{
    // This is the handle to the repository entry. 0 indicates not assigned.
    // Never change this it is used by the repository. I currently have no
    // good idea to hide it from the user without introducing a lot of runtime
    // overhead.
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
    kFail = 0,
    kSuccess = 1,
};

// Assumptions:
//
// - It is assumed that the number of maximal ids (on 32bit 4294967294 unique ids)
//   will never be exceeded.
class EntityRepository
{
public:
    void Add(const Entity &entity)
    {
        Entity own = entity;                    // copy
        own.internal_id = internal_id_counter_; // assign internal_id
        entities_.push_back(std::move(own));
        internal_id_counter_++;
    }

    ReturnCode Edit(const Entity &entity)
    {
        for (int i = 0u; i < entities_.size(); i++)
        {
            auto &i_entity = entities_[i];

            if (i_entity.internal_id == entity.internal_id)
            {
                entities_[i] = entity; // copy
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kFail;
    }

    ReturnCode Delete(const Entity &entity)
    {
        for (int i = 0u; i < entities_.size(); i++)
        {
            auto &i_entity = entities_[i];

            if (i_entity.internal_id == entity.internal_id)
            {
                entities_.erase(entities_.begin() + i); // delete in repository
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kFail;
    }

    ReturnCode GetFirstWithToken(int token, Entity *out_entity) const
    {
        for (int i = 0u; i < entities_.size(); i++)
        {
            auto &entity = entities_[i];

            if (entity.token == token)
            {
                *out_entity = entity; // copy
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kFail;
    }

private:
    int internal_id_counter_ = 1; // start with id 1. Zero is the initialized state
    std::vector<Entity> entities_;
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
    auto re = repo.GetFirstWithToken(11, &entity);
    printf("%i: %i %i\n", re, entity.token, entity.data);

    // only change the copy so far.
    entity.token = 15;
    entity.data = 23;

    // Get Entity 2 with token 11. The result shouldn't have changed.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(11, &entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    // Update the repo with the changes in entity 1
    repo.Edit(entity);

    // Get Entity 2 with token 11. This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(11, &entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    // Get Entity 2 with token 15. This should return the changed entity.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(15, &entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    repo.Delete(entity); // this should now delete the corresponding entry.

    // Get Entity 2 with token 15.  This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = repo.GetFirstWithToken(15, &entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);
}

int main()
{
    Client();
    return 0;
}
