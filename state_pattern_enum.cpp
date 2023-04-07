// --------------------------------------------------------------
// State pattern example in c++
//
// Implementation of a turnstil. State transistion indicated by enum
// --------------------------------------------------------------
#include <stdio.h>
#include <memory> // use smart pointer in this example

// -------------------------------------------------
// State interface definition
// -------------------------------------------------
class IState {
public:
    /// @brief Try to go through the turnstil
    virtual void Push() = 0; 

    /// @brief Try to insert a coin.
    virtual void Coin() = 0;
};

// Forward declaration of context
class Context;

// -------------------------------------------------
// State enum
// -------------------------------------------------
enum StateId {
    kLockState,
    kUnlockState
};

// -------------------------------------------------
// LockedConcreteState definition
// -------------------------------------------------
class LockedConcreteState : public IState {
public:
    LockedConcreteState();
    void SetContext(Context* context) ;
    void Push();
    void Coin();
private:
    Context* context_;
};

// -------------------------------------------------
// UnlockedConcreteState definition
// -------------------------------------------------
class UnlockedConcreteState : public IState {
public:
    UnlockedConcreteState();
    void SetContext(Context* context);
    void Push();
    void Coin();
private:
    Context* context_;
};

// -------------------------------------------------
// Context definition 
// -------------------------------------------------
class Context {
public:
    Context(StateId state_id);
    void ChangeState(StateId state_id);
    void Push();
    void Coin();

private:
    IState* state_;
    LockedConcreteState locked_state;
    UnlockedConcreteState unlocked_state;
};

// -------------------------------------------------
// Context implementation
//
// Context depends on States.
// -------------------------------------------------
Context::Context(StateId state_id) {
    locked_state.SetContext(this);
    unlocked_state.SetContext(this);
    ChangeState(state_id);
}

void Context::ChangeState(StateId state_id) {
    switch (state_id) {
        case kLockState:
            state_ = &locked_state;
        break;

        case kUnlockState:
            state_ = &unlocked_state;
        break;
    }
}

void Context::Push() {
    state_->Push();
}

void Context::Coin() {
    state_->Coin();
}

// -------------------------------------------------
// LockedConcreteState implementation
// -------------------------------------------------
LockedConcreteState::LockedConcreteState() {
}

void LockedConcreteState::SetContext(Context* context) {
    context_ = context;
}

void LockedConcreteState::Push() {
    printf("  LockedConcreteState: Go through turnstil -> LOCKED !!!\n");
}

void LockedConcreteState::Coin() {
    printf("  LockedConcreteState: Inserting Coin -> State transition\n");
    context_->ChangeState(StateId::kUnlockState);
}

// -------------------------------------------------
// UnlockedConcreteState implementation
// -------------------------------------------------
UnlockedConcreteState::UnlockedConcreteState() {
}

void UnlockedConcreteState::SetContext(Context* context) {
    context_ = context;
}

void UnlockedConcreteState::Push() {
    printf("UnlockedConcreteState: Go through turnstil. -> State Transition\n");
    context_->ChangeState(StateId::kLockState);
}

void UnlockedConcreteState::Coin() {
    printf("UnlockedConcreteState: Inserting Coin -> Coin was already insertd.\n");
}

// -------------------------------------------------
// CLient code ... uses context
// -------------------------------------------------
void Client() {
    Context context(kLockState);

    // Person A        
    context.Push(); // locked
    context.Coin(); // insert coin - ok
    context.Coin(); // insert another coin - not ok
    context.Push(); // go through

    // Person B
    context.Push(); // locked 
}

int main() {
    Client();
    return 0;
}
