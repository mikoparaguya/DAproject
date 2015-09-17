import Foundation

// First, some examples of values:
"Hello, World!"
"Hello, Emoji 👍"
42
3.14
["an", "array", 1]
["a": "dictionary", "with": "values"]

// 1. Declare a variable called "one" that holds the value 1

// 2. Change "one"'s value to 4

// 3. Change "one"'s value to 1.2 (you might need to change "one"'s declaration first)

// 4. Declare a variable called "string" that holds the value "my string"

// 5. Print the length of "string"

// 6. Print the first character in "string"

// 7. Print the 4th character in "string"

// 8. Print the first 3 characters in "string"

// 9. Print the last 3 characters in "string"

// 10. Print the last 3 characters in "string", reversed

// 11. Print the 2nd word in "string"

// 12. Create a string that contains the values of "one" and "string" variables

// 13. Create an array that contains "a", "b", "c", called "myArray"

// 14. Get the length of "myArray"

// 15. Get the 2nd item in "myArray"

// 16. Print "long" if the length of "myArray" is more than 5, else print "short"

// 17. Print each element in "myArray" on a line by itself

// 18. Create a constant array called "myStrings" that contains the strings: "these" "are" "my" "strings"

// 19. Try to add the string "constant?" to to "myStrings", what happens?
//myStrings.append("constant?")

// 20. Try to change "myStrings" to the value ["hey"], what happens?
//myStrings = ["hey"]

// 21. Print the index of "my" in myStrings, if it is in the array

// 22. Print "success" if the following variable is not nil
let response: String? = "response data"

// 23. Remove the "default" clause from this switch statement. What happens?
let number = 42
switch number {
case 365:
    println("Days in year")
case 1024:
    println("Bytes in a Kilobyte")
case 0:
    println("Where arrays start")
case 42:
    println("The answer to life, the universe and everything")
default:
    println("Some uninteresting number")
}

// 24. Print each key and value in the follow dictionary
let capitals = ["Israel": "Jerusalem", "France": "Paris", "England": "London"]

// 25. Add "a" to the value in the key "hello" in this dictionary - you can only add one line of code
var someDict = ["hello": ["b", "c"]]
