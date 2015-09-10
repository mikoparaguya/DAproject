//
//  ViewController.swift
//  CoreMotion
//
//  Created by Alex Martinez on 9/7/15.
//  Copyright © 2015 Alex Martinez. All rights reserved.
//

//import UIKit
//import CoreMotion
//
//class ViewController: UIViewController {
//    
//    // Instance Variables
//    
//    var currentMaxAccelX: Double = 0.0
//    var currentMaxAccelY: Double = 0.0
//    var currentMaxAccelZ: Double = 0.0
//    var currentMaxRotX: Double = 0.0
//    var currentMaxRotY: Double = 0.0
//    var currentMaxRotZ: Double = 0.0
//    
//    var motionManager = CMMotionManager()
//    
//    // Outlets
//    
//    @IBOutlet var accX: UILabel?
//    @IBOutlet var accY: UILabel?
//    @IBOutlet var accZ: UILabel?
//    @IBOutlet var maxAccX: UILabel?
//    @IBOutlet var maxAccY: UILabel?
//    @IBOutlet var maxAccZ: UILabel?
//    @IBOutlet var rotX: UILabel?
//    @IBOutlet var rotY: UILabel?
//    @IBOutlet var rotZ: UILabel?
//    @IBOutlet var maxRotX: UILabel?
//    @IBOutlet var maxRotY: UILabel?
//    @IBOutlet var maxRotZ: UILabel?
//    
//}

let manager = CMMotionManager()

manager.accelerometerUpdateInterval = 0.3
manager.startAccelerometerUpdates()
print(manager.accelerometerData?.acceleration.x)  // prints just nil

manager.accelerometerUpdateInterval = 0.3
manager.startAccelerometerUpdatesToQueue(NSOperationQueue()) { (data: CMAccelerometerData?, error: NSError?) in
    guard data != nil else {
        print("There was an error: \(error)")
        return
    }
    print(data!.acceleration.x) // prints nothing
}
