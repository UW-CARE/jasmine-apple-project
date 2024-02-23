# Nodes for hacking with swift

## Day11 to Day 15

- How to limit access to internal data using access control

1. private : Don’t let anything outside the struct use this.
2. fileprivate : Don’t let anything outside the current file use this.
3. public : Let anyone, anywhere use this.
4. private(set): canonly  read property, but only internal can write it, can't be modified


- Static properties and methods
Static properties and methods are really about providing functionality that is relevant to the type as a whole, rather than to individual instances. 
···
class Game {
    static var numberOfPlayers = 0

    class func addPlayer() {
        numberOfPlayers += 1
    }
}

// Adding players without needing to instantiate Game
Game.addPlayer()
Game.addPlayer()

print(Game.numberOfPlayers) // Output: 2
···
In this example, numberOfPlayers is a static property that tracks the number of players in the game, and addPlayer() is a static method that increments this number. Both are accessed directly on the Game class without creating an instance of it.


### Classes

- how class and struct different?

First, the things that classes and structs have in common include:

1. You get to create and name them.
2. You can add properties and methods, including property observers and access control.
3. You can create custom initializers to configure new instances however you want.

However, classes differ from structs in five key places:

1. You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.

2. Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.

3. When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.

4. When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.

5. Even if you make a class constant, you can still change its properties as long as they are variables.


- inherit from another class
```
class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}
```

if we wanted developers to have a unique printSummary() method, we’d add this to the Developer class:
```
override func printSummary() {
    print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
}
```


- initializers for classes
```
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
```
super is another one of those values that Swift automatically provides for us, similar to self: it allows us to call up to methods that belong to our parent class, such as its initializer. You can use it with other methods if you want; it’s not limited to initializers.

- copy classes

- structs do not share their data amongst copies

- Class share the same copies, so if you change one, another one will also change. 

so we use:
- deep copy
```
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
```

- create a deinitializer for a class

1. Just like initializers, you don’t use func with deinitializers – they are special.
2. Deinitializers can never take parameters or return data, and as a result aren’t even written with parentheses.
3. Your deinitializer will automatically be called when the final copy of a class instance is destroyed. That might mean it was created inside a function that is now finishing, for example.
4. We never call deinitializers directly; they are handled automatically by the system.
5. Structs don’t have deinitializers, because you can’t copy them.
```
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}
```

- deinitializer's scope: 
1. If you create a variable inside a function, you can’t access it from outside the function.
2. If you create a variable inside an if condition, that variable is not available outside the condition.
3. If you create a variable inside a for loop, including the loop variable itself, you can’t use it outside the loop.
```
for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}
```
Deinit will run when the for loop finishes.


###  Protocols
