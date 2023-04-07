// ------------------------------------------------------------------
// State machine in c/c++
//
// Implementation of a turnstil. State transistion indicated by enum
// State code reached by "if", "else"
// ------------------------------------------------------------------
#include <iostream>

// -------------------------------------------------
// State enum
// -------------------------------------------------
enum StateId
{
    kLockedState,
    kUnlockedState
};

class StateMachine
{
public:
    StateMachine(StateId state_id) {
        actual_state_ = state_id;
    }
    
    void Push()
    {
        if (actual_state_ == kLockedState) {
            StateLocked_Push();
        } else {
            StateUnlocked_Push();
        }
    }

    void Coin()
    {
        if (actual_state_ == kLockedState) {
            StateLocked_Coin();
        } else {
            StateUnlocked_Coin();
        }
    }

private:
    void StateLocked_Coin() {
        actual_state_ = kUnlockedState;
        std::cout << "LockedState: Inserting Coin -> State transition" << std::endl;
    }

    void StateUnlocked_Coin() {
        actual_state_ = kUnlockedState;
        std::cout << "UnlockedState: Inserting Coin -> Coin was already inserted." << std::endl;
    }
 
    void StateLocked_Push() {
        actual_state_ = kLockedState;
        std::cout << "LockedState: Go through turnstil -> LOCKED !!!" << std::endl;
    }

    void StateUnlocked_Push() {
        actual_state_ = kLockedState;
        std::cout << "UnlockedState:  Go through turnstil. -> State Transition." << std::endl;
    }

    StateId actual_state_ = kLockedState;
};

// -------------------------------------------------
// Client code ... uses statemachine
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
