// ------------------------------------------------------------------
// State pattern example in c++
//
// Implementation of a turnstil. State transistion by object.
// ------------------------------------------------------------------

#include <iostream>
#include <memory> // use smart pointer in this example

// -------------------------------------------------
// State interface definition
// -------------------------------------------------
class IState
{
public:
    virtual ~IState(){};

    // Try to go through the turnstil
    virtual void Push() = 0;

    // Try to insert a coin.
    virtual void Coin() = 0;
};

// -------------------------------------------------
// Context definition
//
// Context doesn't depend on States.
// -------------------------------------------------
class Context
{
public:
    Context(std::shared_ptr<IState> initial_state);
    void ChangeState(std::shared_ptr<IState> state);
    void Push();
    void Coin();

private:
    std::shared_ptr<IState> state_;
};

// -------------------------------------------------
// LockedConcreteState definition
// -------------------------------------------------
class LockedConcreteState : public IState
{
public:
    LockedConcreteState();
    virtual ~LockedConcreteState();
    void SetContext(std::shared_ptr<Context> context);
    void Push();
    void Coin();

private:
    std::shared_ptr<Context> context_;
};

// -------------------------------------------------
// UnlockedConcreteState definition
// -------------------------------------------------
class UnlockedConcreteState : public IState
{
public:
    UnlockedConcreteState();
    virtual ~UnlockedConcreteState();
    void SetContext(std::shared_ptr<Context> context);
    void Push();
    void Coin();

private:
    std::shared_ptr<Context> context_;
};

// -------------------------------------------------
// Context implementation
// -------------------------------------------------
Context::Context(std::shared_ptr<IState> initial_state)
{
    state_ = initial_state;
}

void Context::ChangeState(std::shared_ptr<IState> state)
{
    state_ = state;
}

void Context::Push()
{
    state_->Push();
}

void Context::Coin()
{
    state_->Coin();
}

// -------------------------------------------------
// LockedConcreteState implementation
// -------------------------------------------------
LockedConcreteState::LockedConcreteState()
{
}

LockedConcreteState::~LockedConcreteState()
{
}

void LockedConcreteState::SetContext(std::shared_ptr<Context> context)
{
    context_ = context;
}

void LockedConcreteState::Push()
{
    std::cout << "LockedState: Go through turnstil -> LOCKED !!!" << std::endl;
}

void LockedConcreteState::Coin()
{
    std::cout << "LockedState: Inserting Coin -> State transition" << std::endl;
    auto unlocked_state = std::make_shared<UnlockedConcreteState>();
    unlocked_state->SetContext(context_);
    context_->ChangeState(unlocked_state);
}

// -------------------------------------------------
// UnlockedConcreteState implementation
// -------------------------------------------------
UnlockedConcreteState::UnlockedConcreteState()
{
}

UnlockedConcreteState::~UnlockedConcreteState()
{
}

void UnlockedConcreteState::SetContext(std::shared_ptr<Context> context)
{
    context_ = context;
}

void UnlockedConcreteState::Push()
{
    std::cout << "UnlockedState: Go through turnstil. -> State Transition" << std::endl;
    auto locked_state = std::make_shared<LockedConcreteState>();
    locked_state->SetContext(context_);
    context_->ChangeState(locked_state);
}

void UnlockedConcreteState::Coin()
{
    std::cout << "UnlockedState: Inserting Coin -> Coin was already inserted." << std::endl;
}

// -------------------------------------------------
// CLient code ... uses context
// -------------------------------------------------
void Client()
{

    auto locked_state = std::make_shared<LockedConcreteState>();
    auto context = std::make_shared<Context>(locked_state);
    locked_state->SetContext(context);

    // Person A
    context->Push(); // locked
    context->Coin(); // insert coin - ok
    context->Coin(); // insert another coin - not ok
    context->Push(); // go through

    // Person B
    context->Push(); // locked
}

int main()
{
    Client();
    return 0;
}
