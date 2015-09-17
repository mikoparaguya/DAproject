import Foundation


// 1. Write an IntStack class, with push() and pop() methods
class IntStack {
    var ints: [Int] = []

    func push(int: Int) {
        ints.append(int)
    }

    func pop() -> Int? {
        if ints.isEmpty {
            return nil
        }

        return ints.removeLast()
    }
}

// 2. Extend String to add the method reverseWords()
// e.g. "mary had a little lamb".reverseWords() == "lamb little a had mary"
extension String {
    func reverseWords() -> String {
        return " ".join(reverse(componentsSeparatedByString(" ")))
    }
}

"mary had a little lamb".reverseWords()

// 3. Add a subclass of Vehicle called Car which implements makeNoise()
// Car should be initializable like so:
// let car = Car(seats: 5)
// car.motionType == Vehicle.MotionType.Driving

class Vehicle {
    enum MotionType { case Driving, Flying, Sailing }

    let motionType: MotionType

    init(motionType: MotionType) {
        self.motionType = motionType
    }

    func makeNoise() {
        // Nothing here yet
    }
}

class Car: Vehicle {
    let seats: Int

    init(seats: Int) {
        self.seats = seats
        super.init(motionType: .Driving)
    }

    override func makeNoise() {
        println("Beep beep!")
    }
}

// 4. Create a protocol called Commentable. It should have an option to get all comments
// and a function to add a comment. Implement the protocol in a new class called BlogPost
protocol Commentable {
    var comments: [String] { get }

    mutating func addComment(comment: String)
}

class BlogPost {
    let title: String
    let content: String
    var comments: [String] = []

    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}

extension BlogPost: Commentable {
    func addComment(comment: String) {
        comments.append(comment)
    }
}

// 5. Write a generic type called UniqueQueue that has functions queue() and dequeue()
// If the user tries to queue() an object that is already in the queue, it should be ignored.
class UniqueQueue<T: Equatable> {
    var queue: [T] = []

    func queue(obj: T) {
        if find(queue, obj) == nil {
            queue.append(obj)
        }
    }

    func dequeue() -> T? {
        if queue.isEmpty { return nil }
        return queue.removeAtIndex(0)
    }
}

let queue = UniqueQueue<String>()
queue.queue("a")
queue.queue("b")
queue.queue("a")
queue.dequeue() == "a"
queue.dequeue() == "b"
queue.dequeue() == nil
