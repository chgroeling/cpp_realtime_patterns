// ------------------------------------------------------------------
// State machine in c/c++
//
// Implementation of a turnstil. State transistion indicated by enum
// ------------------------------------------------------------------
#include <stdio.h>

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
        _actual_state = state_id;
    }
    
    void Push()
    {
        if (_actual_state == kLockedState) {
            StateLocked_Push();
        } else {
            StateUnlocked_Push();
        }
    }

    void Coin()
    {
        if (_actual_state == kLockedState) {
            StateLocked_Coin();
        } else {
            StateUnlocked_Coin();
        }
    }

private:
    void StateLocked_Coin() {
        _actual_state = kUnlockedState;
        printf("LockedState: Inserting Coin -> State transition\n");
    }

    void StateUnlocked_Coin() {
        _actual_state = kUnlockedState;
        printf("UnlockedState: Inserting Coin -> Coin was already inserted.\n");
    }
 
    void StateLocked_Push() {
        _actual_state = kLockedState;
        printf("LockedState: Go through turnstil -> LOCKED !!!\n");
    }

    void StateUnlocked_Push() {
        _actual_state = kLockedState;
        printf("UnlockedState:  Go through turnstil. -> State Transition.\n");
    }


    StateId _actual_state = kLockedState;

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
