
#include <iostream>
#include <vector>
#include <algorithm>

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
  virtual void Attach(Observer* observer) = 0;
  virtual void Detach(Observer* observer) = 0;
  virtual void Notify() = 0;
};

// Concrete subject
class ConcreteSubject : public Subject {
 private:
  int value_;
  std::vector<Observer*> observers_;

 public:
  void SetValue(int value) {
    value_ = value;
    Notify();
  }

  void Attach(Observer* observer) override {
    observers_.push_back(observer);
  }

  void Detach(Observer* observer) override {
    observers_.erase(std::remove(observers_.begin(), observers_.end(), observer), observers_.end());
  }

  void Notify() override {
    for (auto observer : observers_) {
      observer->Update(value_);
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

  subject.SetValue(42); // Both observers will be notified and updated
  subject.SetValue(56); // Both observers will be notified and updated again

  return 0;
}
