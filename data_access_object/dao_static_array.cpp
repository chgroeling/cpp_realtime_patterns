// ------------------------------------------------------------------
// DAO-Pattern in c/c++
//
// Implementation of DAO pattern without dynamic memory allocation
// using a conventional array.
//
// The Entity class intentionally does not contain complex data types
// like std::string. These require dynamic memory allocation, which
// is deliberately omitted.
// ------------------------------------------------------------------

#include <iostream>

struct Entity
{
    // This is the handle to the DAO internal storage structure.
    // Never change this it is used by the DAO. I currently have no
    // good idea to hide it from the user without introducing a lot of runtime
    // overhead. Do you?
    int internal_id;

    int token;
    int data;
};

// Small factory method to initialize a Entity struct
// This keeps it clean of business logic.
Entity MakeEntity(int token, int data)
{
    // Attention: -1 is assigned to indicate that the object has no valid
    // index in a DAO.
    Entity f = {-1, token, data};
    return f;
}

enum ReturnCode : int
{
    kPoolExceeded = -2,
    kNotFound = -1,
    kFail = 0,
    kSuccess = 1,
};

// Abstract interface to Entity DAO class
class IEntityDAO
{
public:
    virtual ~IEntityDAO(){};
    virtual ReturnCode Add(const Entity &entity) = 0;                              // CRUD - C(reate)
    virtual ReturnCode GetFirstWithToken(int token, Entity &out_entity) const = 0; // CRUD - R(ead)
    virtual ReturnCode Edit(const Entity &entity) = 0;                             // CRUD - U(pdate)
    virtual ReturnCode Delete(const Entity &entity) = 0;                           // CRUD - D(elete)
};

// Assumptions:
//
// - The array entities are not initialized because its not necessary but would be nice.
//   You can add initialization code by yourself if needed.
class EntityDAO : public IEntityDAO
{
public:
    EntityDAO()
    {
        for (int i = 0; i < kMaxNumberOfEntities; i++)
        {
            entities_[i].internal_id = kUnusedId; // assign unused id
        }
    }
    virtual ~EntityDAO(){};

    ReturnCode Add(const Entity &entity) override
    {
        // no check of internal id here because it will only be assigned.
        Entity *own;
        int idx;

        auto ret = SearchFreeSlot(/*out*/ idx, &own);
        if (ret != kSuccess)
        {
            return ret; // propagate return value;
        }

        *own = entity;          // copy it to internal data structure
        own->internal_id = idx; // set internal id to index
        return kSuccess;
    }

    ReturnCode Edit(const Entity &entity) override
    {
        if ((entity.internal_id < 0) && (entity.internal_id >= kMaxNumberOfEntities))
        {
            return kNotFound;
        }

        entities_[entity.internal_id] = entity; // copy
        return kSuccess;
    }

    ReturnCode Delete(const Entity &entity) override
    {
        if ((entity.internal_id < 0) && (entity.internal_id >= kMaxNumberOfEntities))
        {
            return kNotFound;
        }

        entities_[entity.internal_id].internal_id = kUnusedId;
        return kSuccess;
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
                return kSuccess;
            }
        }
        return kNotFound;
    }

private:
    inline ReturnCode SearchFreeSlot(int &idx, Entity **entity)
    {
        for (int i = 0; i < kMaxNumberOfEntities; i++)
        {
            if (entities_[i].internal_id == kUnusedId) // indicates a free slot
            {
                *entity = &entities_[i];
                idx = i;
                return kSuccess;
            }
        }
        return kPoolExceeded;
    }

    static constexpr int kUnusedId = -1;            // use negative value as unused id
    static constexpr int kMaxNumberOfEntities = 10; // maximal number of storeable entities.

    // Statically allocate a pool of entities. This will throw away memory if too high and
    // leads to lots of problems if set to low ;-)
    Entity entities_[kMaxNumberOfEntities];
};

// -------------------------------------------------
// Client code ... uses DAO
// -------------------------------------------------
void Client()
{

    Entity entity, entity2;
    EntityDAO dao;

    // Add some entities to the dao
    dao.Add(MakeEntity(10, 12));
    dao.Add(MakeEntity(11, 13));
    dao.Add(MakeEntity(12, 14));

    // Get Entity 1 with token 11
    auto re = dao.GetFirstWithToken(11, entity);
    std::cout << re << ": " << entity.token << " " << entity.data << std::endl;

    // only change the copy so far.
    entity.token = 15;
    entity.data = 23;

    // Get Entity 2 with token 11. The result shouldn't have changed.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(11, entity2);
    std::cout << re << ": " << entity2.token << " " << entity2.data << std::endl;

    // Update the repo with the changes in entity 1
    dao.Edit(entity);

    // Get Entity 2 with token 11. This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(11, entity2);
    std::cout << re << ": " << entity2.token << " " << entity2.data << std::endl;

    // Get Entity 2 with token 15. This should return the changed entity.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(15, entity2);
    std::cout << re << ": " << entity2.token << " " << entity2.data << std::endl;

    dao.Delete(entity); // this should now delete the corresponding entry.

    // Get Entity 2 with token 15.  This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(15, entity2);
    std::cout << re << ": " << entity2.token << " " << entity2.data << std::endl;
}

int main()
{
    Client();
    return 0;
}
