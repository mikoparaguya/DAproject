import Foundation

func calculator(a: Int, b: Int) -> Int {
    return a + b
}

// 1. Call calculator() function with 1 and 2
calculator(1, 2)

// 2. Change calculator to return both a + b and a * b
func calcualtor2(a: Int, b: Int) -> (Int, Int) {
    return (a + b, a * b)
}

// 3. Call arrayPrinter with an array with a printer function that greets the value it receives (for example, "Moshe" will return "Hello, Moshe!")
func arrayPrinter(array: [String], printer: String -> String) {
    for s in array {
        println(printer(s))
    }
}


func greeter(name: String) -> String {
    return "Hello, \(name)!"
}

arrayPrinter(["Moshe", "David"], greeter)

// 4. Create an incrementer function. It receives a number (incrementAmount) and then returns a function that receives a number (x) and returns x + incrementAmount
// For example:
// let tenIncrementer = incrementer(10)
// tenIncrementer(10) returns 20
// tenIncrementer(3) returns 13

func incrementer(incrementAmount: Int) -> Int -> Int {
    func internalIncrementer(number: Int) -> Int {
        return number + incrementAmount
    }
    return internalIncrementer
}

let tenIncrementer = incrementer(10)
tenIncrementer(32)

// 5. Use the map function on this array to create an array of Strings. Use trailing closure syntax:
let numbers = [1, 2, 3, 4, 5]

let strings = numbers.map { String($0) }

// 6. Write an intMap function that receives [Int] and a closure to change the value of each int in the array to a different int
func intMap(array: [Int], closure: (Int) -> (Int)) -> [Int] {
    var newArray : [Int] = []
    for i in array {
        newArray.append(closure(i))
    }
    return newArray
}

// Uncomment the following line to make sure your implementation of intMap works:
let results = intMap([1, 2, 3, 4]) { $0 * $0 }
println(results)

// 7. Create a function called memoize() that receives a function of type Int -> Int, and returns a memoized
// version of it
func memoize(function: Int -> Int) -> Int -> Int {
    var cache: Dictionary<Int, Int> = [:]

    func betterFunc(num: Int) -> Int {
        if let cachedResult = cache[num] {
            return cachedResult
        }

        let result = function(num)
        cache[num] = result
        return result
    }

    return betterFunc
}

// 8. Write a function called logger that takes a closure and runs it, but logs before and after that function is run.
// For example: logger("myFunc") { println("I ran!") } should print:
// [*] Running myFunc
// I ran!
// [*] myFunc done
func logger(name: String, function: () -> ()) {
    println("[*] Running \(name)")
    function()
    println("[*] \(name) done")
}

logger("myFunc") { println("I ran!") }

// 9. Create an enum of the days of the week, with appropriate raw values
enum Day: Int {
    case Sunday = 1, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

// 10. Create enum of TimeUnit with values Second, Minute, Hour, Day and Week.
// Add a method for converting between them. e.g. TimeUnit.Day.convertTo(TimeUnit.Hour) == 24.0
enum TimeUnit: Int {
    case Second = 1, Minute = 60, Hour = 3_600, Day = 86_400, Week = 2_073_600

    func convertTo(otherUnit: TimeUnit) -> Double {
        return Double(rawValue) / Double(otherUnit.rawValue)
    }
}

TimeUnit.Day.convertTo(TimeUnit.Hour) == 24.0
