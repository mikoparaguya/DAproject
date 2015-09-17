import Foundation

func calculator(a: Int, b: Int) -> Int {
    return a + b
}

// 1. Call calculator() function with 1 and 2

// 2. Change calculator to return both a + b and a * b

// 3. Call arrayPrinter with an array with a printer function that greets the value it receives (for example, "Moshe" will return "Hello, Moshe!")
func arrayPrinter(array: [String], printer: String -> String) {
    for s in array {
        println(printer(s))
    }
}

// 4. Create an incrementer function. It receives a number (incrementAmount) and then returns a function that receives a number (x) and returns x + incrementAmount
// For example:
// let tenIncrementer = incrementer(10)
// tenIncrementer(10) returns 20
// tenIncrementer(3) returns 13

// 5. Use the map function on this array to create an array of Strings. Use trailing closure syntax:
let numbers = [1, 2, 3, 4, 5]

// 6. Write an intMap function that receives [Int] and a closure to change the value of each int in the array to a different int

// Uncomment the following line to make sure your implementation of intMap works:
//let results = intMap([1, 2, 3, 4]) { $0 * $0 }
//println(results)

// 7. Create a function called memoize() that receives a function of type Int -> Int, and returns a memoized
// version of it

// 8. Write a function called logger that takes a closure and runs it, but logs before and after that function is run.
// For example: logger("myFunc") { println("I ran!") } should print:
// [*] Running myFunc
// I ran!
// [*] myFunc done

// 9. Create an enum of the days of the week, with appropriate raw values

// 10. Create enum of TimeUnit with values Second, Minute, Hour, Day and Week.
// Add a method for converting between them. e.g. TimeUnit.Day.convertTo(TimeUnit.Hour) == 24.0
