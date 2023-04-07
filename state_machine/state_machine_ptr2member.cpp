// ------------------------------------------------------------------
// State machine in c/c++
//
// Implementation of a turnstil. State transistion indicated by enum
// State code reached by pointer to class member. Pointers can be stored
// in a table which makes this approach a bit more flexible.
// ------------------------------------------------------------------
#include <iostream>

// -------------------------------------------------
// State enum
// -------------------------------------------------
enum StateId
{
    kLockedState = 0,
    kUnlockedState,
    kNumStates
};

class StateMachine
{
public:
    StateMachine(StateId state_id)
    {
        if (state_id == kNumStates)
        {
            actual_state_ = kLockedState;
        }
        else
        {
            actual_state_ = state_id;
        }
    }

    void Push()
    {
        (this->*push_members[actual_state_])();
    }

    void Coin()
    {
        (this->*coin_members[actual_state_])();
    }

private:
    void StateLocked_Coin()
    {
        actual_state_ = kUnlockedState;
        std::cout << "LockedState: Inserting Coin -> State transition" << std::endl;
    }

    void StateUnlocked_Coin()
    {
        actual_state_ = kUnlockedState;
        std::cout << "UnlockedState: Inserting Coin -> Coin was already inserted." << std::endl;
    }

    void StateLocked_Push()
    {
        actual_state_ = kLockedState;
        std::cout << "LockedState: Go through turnstil -> LOCKED !!!" << std::endl;
    }

    void StateUnlocked_Push()
    {
        actual_state_ = kLockedState;
        std::cout << "UnlockedState:  Go through turnstil. -> State Transition." << std::endl;
    }

    using push_type = void (StateMachine::*)();

    // List every possible implementation of push() for each state
    push_type push_members[kNumStates] = {
        &StateMachine::StateLocked_Push,
        &StateMachine::StateUnlocked_Push};

    // List every possible implementation of coin() for each state
    push_type coin_members[kNumStates] = {
        &StateMachine::StateLocked_Coin,
        &StateMachine::StateUnlocked_Coin};

    StateId actual_state_ = kLockedState;
};

// -------------------------------------------------
// CLient code ... uses statemachine
// -------------------------------------------------
void Client()
{
    StateMachine sm(kLockedState);

    // Person A
    sm.Push(); // locked
    sm.Coin(); // insert coin - ok
    sm.Coin(); // insert another coin - not ok
    sm.Push(); // go through

    // Person B
    sm.Push(); // locked
}

int main()
{
    Client();
    return 0;
}
