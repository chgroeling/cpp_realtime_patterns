// ------------------------------------------------------------------
// DAO-Pattern in c/c++
//
// Implementation of DAO pattern with dynamic memory allocation
// using std::vector.
//
// The Entity class intentionally does not contain complex data types
// like std::string. These require dynamic memory allocation, which
// is deliberately omitted.
// ------------------------------------------------------------------

#include <stdio.h>
#include <vector>

struct Entity
{
    // This is the handle to the DAO internal storage structure. 
    // Never change this it is used by the DAO. I currently have no
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
    kNotFound = -1,
    kFail = 0,
    kSuccess = 1,
};


// Abstract interface to Entity DAO class
class IEntityDAO {
public:
    virtual ReturnCode Add(const Entity &entity) = 0;
    virtual ReturnCode Edit(const Entity &entity) =0;
    virtual ReturnCode Delete(const Entity &entity) = 0;
    virtual ReturnCode GetFirstWithToken(int token, Entity &out_entity) const = 0;
};


// Assumptions:
//
// - It is assumed that the number of maximal ids (on 32bit 4294967294 unique ids)
//   will never be exceeded. If this assumption breaks you have to add extra code
//   to handle such cases.
class EntityDAO  : public IEntityDAO
{
public:
    ReturnCode Add(const Entity &entity) override
    {
        Entity own = entity;                    // copy
        own.internal_id = internal_id_counter_; // assign internal_id
        entities_.push_back(std::move(own));
        internal_id_counter_++;
        return ReturnCode::kSuccess;
    }

    ReturnCode Edit(const Entity &entity) override
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
        return ReturnCode::kNotFound;
    }

    ReturnCode Delete(const Entity &entity) override
    {
        for (int i = 0u; i < entities_.size(); i++)
        {
            auto &i_entity = entities_[i];

            if (i_entity.internal_id == entity.internal_id)
            {
                entities_.erase(entities_.begin() + i); // delete in DAO
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kNotFound;
    }

    ReturnCode GetFirstWithToken(int token, Entity &out_entity) const override
    {
        for (int i = 0u; i < entities_.size(); i++)
        {
            auto &entity = entities_[i];

            if (entity.token == token)
            {
                out_entity = entity; // copy entry. This is a core tennent of the DAO pattern.
                return ReturnCode::kSuccess;
            }
        }
        return ReturnCode::kNotFound;
    }

private:
    int internal_id_counter_ = 1; // start with id 1. Zero indicates unassinged.
    std::vector<Entity> entities_;
};

// -------------------------------------------------
// Client code ... uses DAO
// -------------------------------------------------
void Client()
{

    Entity entity, entity2;
    EntityDAO dao;

    // Add some entities to the data access object
    dao.Add(MakeEntity(10, 12));
    dao.Add(MakeEntity(11, 13));
    dao.Add(MakeEntity(12, 14));

    // Get Entity 1 with token 11
    auto re = dao.GetFirstWithToken(11, entity);
    printf("%i: %i %i\n", re, entity.token, entity.data);

    // only change the copy so far.
    entity.token = 15;
    entity.data = 23;

    // Get Entity 2 with token 11. The result shouldn't have changed.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(11, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    // Update the repo with the changes in entity 1
    dao.Edit(entity);

    // Get Entity 2 with token 11. This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(11, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    // Get Entity 2 with token 15. This should return the changed entity.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(15, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);

    dao.Delete(entity); // this should now delete the corresponding entry.

    // Get Entity 2 with token 15.  This shouldn't exists anymore.
    entity2 = MakeEntity(0, 0);
    re = dao.GetFirstWithToken(15, entity2);
    printf("%i: %i %i\n", re, entity2.token, entity2.data);
}

int main()
{
    Client();
    return 0;
}
