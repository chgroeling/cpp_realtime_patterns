// ------------------------------------------------------------------
// State pattern example in c++
//
// Implementation of a turnstil. State transistion indicated by enum
// ------------------------------------------------------------------
#include <iostream>

// -------------------------------------------------
// State interface definition
// -------------------------------------------------
class IState {
public:
    virtual ~IState() {};
    
    // Try to go through the turnstil
    virtual void Push() = 0; 

    // Try to insert a coin.
    virtual void Coin() = 0;
};

// Forward declaration of context
class Context;

// -------------------------------------------------
// State enum
// -------------------------------------------------
enum StateId {
    kLockedState,
    kUnlockedState
};

// -------------------------------------------------
// LockedConcreteState definition
// -------------------------------------------------
class LockedConcreteState : public IState {
public:
    LockedConcreteState();
    virtual ~LockedConcreteState();
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
    virtual ~UnlockedConcreteState();
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
        case kLockedState:
            state_ = &locked_state;
        break;

        case kUnlockedState:
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
LockedConcreteState::~LockedConcreteState() {
}

void LockedConcreteState::SetContext(Context* context) {
    context_ = context;
}

void LockedConcreteState::Push() {
    std::cout << "LockedState: Go through turnstil -> LOCKED !!!" << std::endl;
}

void LockedConcreteState::Coin() {
    std::cout << "LockedState: Inserting Coin -> State transition" << std::endl;
    context_->ChangeState(StateId::kUnlockedState);
}

// -------------------------------------------------
// UnlockedConcreteState implementation
// -------------------------------------------------
UnlockedConcreteState::UnlockedConcreteState() {
}

UnlockedConcreteState::~UnlockedConcreteState() {
}


void UnlockedConcreteState::SetContext(Context* context) {
    context_ = context;
}

void UnlockedConcreteState::Push() {
    std::cout << "UnlockedState: Go through turnstil. -> State Transition" << std::endl;
    context_->ChangeState(StateId::kLockedState);
}

void UnlockedConcreteState::Coin() {
    std::cout << "UnlockedState: Inserting Coin -> Coin was already inserted." << std::endl;
}

// -------------------------------------------------
// CLient code ... uses context
// -------------------------------------------------
void Client() {
    Context context(kLockedState);

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
