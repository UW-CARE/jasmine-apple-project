# Nodes for hacking with swift

## day1 to day 10
- constant(let) and variables(var)

- create text: put a backslash before inside double quotes
```
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
```

- join texts
```
let lyric = people + " gonna " + action
```

- create numbers
```
let reallyBig = 100000000 // 100000000
let reallyBig = 100_000_000 // 100,000,000
let singleNum = 1
let doubleNum = 1.0 
```

- convert int/double to double/int
```
let c = a + Int(b)
let c = Double(a) + b
```

- check isMultiple funtion
```
print(120.isMultiple(of: 3))
```

- flip the true and false
```
var gameOver = false
print(gameOver) // false

gameOver.toggle()
print(gameOver) // true
```


### Complex data types
- array
```
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var cities: [String] = ["London", "Paris", "New York"]
var scores = Array<Int>() // create an empty int array
var albums = Array<String>() // create an empty string array
var albums = [String]() // more usually way

beatles[0] // get the index 0 element

beatles.append("Adrian") // add new element to the array
beatles.remove(at: 2) //  remove index 2 element
characters.removeAll() / remove all


print(albums.count) // get the number of items
bondMovies.contains("Frozen") // check whether contains
cities.sorted() // sort the array alphabetically/numerically
presidents.reversed() //reverse an array
```

- dictionary
```
let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]

// get by key
employee2["name"]

// make the default to 2012 if not found
print(olympics[2012, default: "Unknown"])
```

- set
```
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

```

- enum ( enumeration)
is a set of named values we can create and use in our code. They don’t have any special meaning to Swift, but they are more efficient and safer, so you’ll use them a lot in your code.
```
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

//skip the enum name after the first assignment
var day = Weekday.monday
day = .tuesday
day = .friday
```