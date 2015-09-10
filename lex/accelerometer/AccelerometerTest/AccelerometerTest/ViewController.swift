//
//  ViewController.swift
//  AccelerometerTest
//
//  Created by Alex Martinez on 9/7/15.
//  Copyright © 2015 Alex Martinez. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}

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
//    // Functions
//    
//    @IBAction func resetMaxValues() {
//        
//        currentMaxAccelX = 0
//        currentMaxAccelY = 0
//        currentMaxAccelZ = 0
//        
//        currentMaxRotX = 0
//        currentMaxRotY = 0
//        currentMaxRotZ = 0
//        
//    }
//    
//    override func viewDidLoad() {
//        
//        self.resetMaxValues()
//        
//        //Set Motion Manager Properties
//        motionManager.accelerometerUpdateInterval = 0.2
//        motionManager.gyroUpdateInterval = 0.2
//        
//        //Start Recording Data
//        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue(), withHandler: { (accelerometerData: CMAccelerometerData!, error: NSError!) -> Void in
//            self.outputAccelerationData(accelerometerData.acceleration)
//            if (error != nil) {
//                println("\(error)")
//            }
//        })
//
//        
//        motionManager.startGyroUpdatesToQueue(NSOperationQueue(), withHandler: { (gyroData: CMGyroData!, error:NSError!) -> Void in
//            self.outputRotationData(gyroData.rotationRate)
//        })
//        
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        
//    }
//    
//    func outputAccelerationData(acceleration: CMAcceleration) {
//        accX?.text = "\(acceleration.x).2fg"
//        
//        if fabs(acceleration.x) > fabs(currentMaxAccelX)
//        {
//            currentMaxAccelX = acceleration.x
//        }
//        
//        accY?.text = "\(acceleration.y).2fg"
//        
//        if fabs(acceleration.y) > fabs(currentMaxAccelY)
//        {
//            currentMaxAccelY = acceleration.y
//        }
//        
//        accZ?.text = "\(acceleration.z).2fg"
//        
//        if fabs(acceleration.z) > fabs(currentMaxAccelZ)
//        {
//            currentMaxAccelZ = acceleration.z
//        }
//        
//        maxAccX?.text = "\(currentMaxAccelX) .2f"
//        maxAccY?.text = "\(currentMaxAccelY) .2f"
//        maxAccZ?.text = "\(currentMaxAccelZ) .2f"
//    }
//    
//    func outputRotationData(rotation: CMRotationRate) {
//        
//        rotX?.text = "\(rotation.x).2fr/s"
//        
//        if fabs(rotation.x) > fabs(currentMaxRotX)
//        {
//            currentMaxRotX = rotation.x
//        }
//        
//        rotY?.text = "\(rotation.y).2fr/s"
//        
//        if fabs(rotation.y) > fabs(currentMaxRotY)
//        {
//            currentMaxRotY = rotation.y
//        }
//        
//        rotZ?.text = "\(rotation.z).2fr/s"
//        
//        if fabs(rotation.z) > fabs(currentMaxRotZ)
//        {
//            currentMaxRotZ = rotation.z
//        }
//        
//        maxRotX?.text = "\(currentMaxRotX) .2f"
//        maxRotY?.text = "\(currentMaxRotY) .2f"
//        maxRotZ?.text = "\(currentMaxRotZ) .2f"
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//}

import UIKit
import CoreMotion

class ViewController: UIViewController {

    // Instance Variables
    
    var currentMaxAccelX: Double = 0.0
    var currentMaxAccelY: Double = 0.0
    var currentMaxAccelZ: Double = 0.0
    var currentMaxRotX: Double = 0.0
    var currentMaxRotY: Double = 0.0
    var currentMaxRotZ: Double = 0.0
    
    // Outlets
    
    @IBOutlet var accX: UILabel?
    @IBOutlet var accY: UILabel?
    @IBOutlet var accZ: UILabel?
    @IBOutlet var maxAccX: UILabel?
    @IBOutlet var maxAccY: UILabel?
    @IBOutlet var maxAccZ: UILabel?
    @IBOutlet var rotX: UILabel?
    @IBOutlet var rotY: UILabel?
    @IBOutlet var rotZ: UILabel?
    @IBOutlet var maxRotX: UILabel?
    @IBOutlet var maxRotY: UILabel?
    @IBOutlet var maxRotZ: UILabel?
    
    // Functions
    
    @IBAction func resetMaxValues() {
    
        currentMaxAccelX = 0
        currentMaxAccelY = 0
        currentMaxAccelZ = 0
            
        currentMaxRotX = 0
        currentMaxRotY = 0
        currentMaxRotZ = 0
            
    }
    
    lazy var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resetMaxValues()
        
//        Set Motion Manager Properties
        motionManager.accelerometerUpdateInterval = 0.2
        motionManager.gyroUpdateInterval = 0.2
        
        if motionManager.accelerometerAvailable{
            let queue = NSOperationQueue()
            motionManager.startAccelerometerUpdatesToQueue(queue, withHandler:
                {data, error in
                    
                    guard let data = data else{
                        return
                    }
                    
                    print("X = \(data.acceleration.x)")
                    print("Y = \(data.acceleration.y)")
                    print("Z = \(data.acceleration.z)")
                    
//                    self.accX?.text = "\(data.acceleration.x).2fg"
//                    
//                    if fabs(data.acceleration.x) > fabs(self.currentMaxAccelX)
//                    {
//                        self.currentMaxAccelX = data.acceleration.x
//                    }
//                    
//                    self.accY?.text = "\(data.acceleration.y).2fg"
//                    
//                    if fabs(data.acceleration.y) > fabs(self.currentMaxAccelY)
//                    {
//                        self.currentMaxAccelY = data.acceleration.y
//                    }
//                    
//                    self.accZ?.text = "\(data.acceleration.z).2fg"
//                    
//                    if fabs(data.acceleration.z) > fabs(self.currentMaxAccelZ)
//                    {
//                        self.currentMaxAccelZ = data.acceleration.z
//                    }
//                            
//                    self.maxAccX?.text = "\(self.currentMaxAccelX) .2f"
//                    self.maxAccY?.text = "\(self.currentMaxAccelY) .2f"
//                    self.maxAccZ?.text = "\(self.currentMaxAccelZ) .2f"
                    
                }
            )
        } else {
            print("Accelerometer is not available")
        }
        
    }
    
}