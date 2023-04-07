# State patterns

## Intent
Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.

## Class diagram
![alt text](./etc/state_pattern.png "State pattern class diagram.")
* A `ConcreteState` has a direct reference to the `Context` instance. It is used to 
  replace the state via `ChangeState` method.

## Credits
* [Github-Repo: Design patterns implemented in Java / State Pattern](https://github.com/iluwatar/java-design-patterns/tree/master/state)
* [Refactoring Guru: State-Pattern](https://refactoring.guru/design-patterns/state)