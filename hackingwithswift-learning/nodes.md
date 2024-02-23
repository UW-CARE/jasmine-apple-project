# Nodes for hacking with swift

## Day1 to Day 10
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

// convert array into set
Set(someArray)

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


- condition check

```
if someCondition {
    print("Do something")
}

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

```
 - * That default: at the end is the default case, which will be run if all cases have failed to match.
```
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5

// fallthrough
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

```
- error handling
```
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
```

- - ternary conditional operator
```
let canVote = age >= 18 ? "Yes" : "No"
```

- loop
```
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for platform in platforms {
    print("Swift works great on \(platform).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for _ in 1...5 {
}

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

```

- - break and continue the loop
```
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

 for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
 }

```

- functions
```
// general case, include "return"
func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

// only return single
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

// return two or more values
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser() -> (String, String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.0) \(user.1)")
```

- parameters' labal
```
// underscore
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
```

- closure
```
var greetCopy: () -> Void = greetUser
```
1. The empty parentheses marks a function that takes no parameters.
2. The arrow means just what it means when creating a function: we’re about to declare the return type for the function.
3. Void means “nothing” – this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.

```
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
```

- trailing closure syntax
```
let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
```

- shorthand syntax
```
parameters: Swift provides for us: $0 and $1, for the first and second strings respectively.
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1 }
```

- filter
```
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)
```


- accept functions as parameters
```
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)
```

- -  multiple function parameters
```
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
```


-  struct
Swift’s structs let us create our own custom, complex data types, complete with their own variables and their own functions.
```
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
```

- dynamic property 
More importantly, notice newValue – that’s automatically provided to us by Swift, and stores whatever value the user was trying to assign to the property.
```
var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }

    set {
        vacationAllocated = vacationTaken + newValue
    }
}
```