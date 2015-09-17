import Foundation


// 1. Write an IntStack class, with push() and pop() methods

// 2. Extend String to add the method reverseWords()
// e.g. "mary had a little lamb".reverseWords() == "lamb little a had mary"

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

// 4. Create a protocol called Commentable. It should have an option to get all comments
// and a function to add a comment. Implement the protocol in a new class called BlogPost

// 5. Write a generic type called UniqueQueue that has functions queue() and dequeue()
// If the user tries to queue() an object that is already in the queue, it should be ignored.
