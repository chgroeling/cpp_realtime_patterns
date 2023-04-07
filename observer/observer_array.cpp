
#include <iostream>
#include <algorithm>

constexpr int kMaxObservers = 10;

enum class ErrorCode {
  kSuccess = 0,
  kMaxObserversReached = 1
};

// Observer interface
class Observer {
 public:
  virtual ~Observer() = default;
  virtual void Update(int value) = 0;
};

// Subject interface
class Subject {
 public:
  virtual ~Subject() = default;
  virtual ErrorCode Attach(Observer* observer) = 0;
  virtual void Detach(Observer* observer) = 0;
  virtual void Notify() = 0;
};

// Concrete subject
class ConcreteSubject : public Subject {
 private:
  int value_;
  Observer* observers_[kMaxObservers];
  int observer_count_;

 public:
  ConcreteSubject() : observer_count_(0) {
    for (int i = 0; i < kMaxObservers; ++i) {
      observers_[i] = nullptr;
    }
  }

  void SetValue(int value) {
    value_ = value;
    Notify();
  }

  ErrorCode Attach(Observer* observer) override {
    if (observer_count_ < kMaxObservers) {
      observers_[observer_count_++] = observer;
      return ErrorCode::kSuccess;
    } else {
      return ErrorCode::kMaxObserversReached;
    }
  }

  void Detach(Observer* observer) override {
    auto it = std::find(observers_, observers_ + observer_count_, observer);
    if (it != observers_ + observer_count_) {
      std::swap(*it, observers_[--observer_count_]);
    }
  }

  void Notify() override {
    for (int i = 0; i < observer_count_; ++i) {
      observers_[i]->Update(value_);
    }
  }
};

// Concrete observer
class ConcreteObserver : public Observer {
 private:
  int value_;
  ConcreteSubject& subject_;

 public:
  explicit ConcreteObserver(ConcreteSubject& subject) : subject_(subject) {
    subject_.Attach(this);
  }

  ~ConcreteObserver() {
    subject_.Detach(this);
  }

  void Update(int value) override {
    value_ = value;
    std::cout << "Observer updated with value: " << value_ << std::endl;
  }
};

int main() {
  ConcreteSubject subject;
  ConcreteObserver observer1(subject);
  ConcreteObserver observer2(subject);

  subject.SetValue(42);
  subject.SetValue(56);

  return 0;
}
