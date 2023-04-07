// ------------------------------------------------------------------
// State machine in c/c++
//
// Implementation of a turnstil. State transistion indicated by enum
// Transitions by "if", "else"
// ------------------------------------------------------------------
#include <stdio.h>

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
    StateMachine(StateId state_id) {
        actual_state_ = state_id;
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
    void StateLocked_Coin() {
        actual_state_ = kUnlockedState;
        printf("LockedState: Inserting Coin -> State transition\n");
    }

    void StateUnlocked_Coin() {
        actual_state_ = kUnlockedState;
        printf("UnlockedState: Inserting Coin -> Coin was already inserted.\n");
    }
 
    void StateLocked_Push() {
        actual_state_ = kLockedState;
        printf("LockedState: Go through turnstil -> LOCKED !!!\n");
    }

    void StateUnlocked_Push() {
        actual_state_ = kLockedState;
        printf("UnlockedState:  Go through turnstil. -> State Transition.\n");
    }

    using push_type = void (StateMachine::*)();          


    push_type push_members[kNumStates] = {
        &StateMachine::StateLocked_Push,
        &StateMachine::StateUnlocked_Push
    };

    push_type coin_members[kNumStates] = {
        &StateMachine::StateLocked_Coin,
        &StateMachine::StateUnlocked_Coin
    };

    StateId actual_state_ = kLockedState;
};

// -------------------------------------------------
// CLient code ... uses statemachine
// -------------------------------------------------
void Client() {
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
