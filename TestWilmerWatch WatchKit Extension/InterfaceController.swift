//
//  InterfaceController.swift
//  TestWilmerWatch WatchKit Extension
//
//  Created by pachie on 20/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnVibrateClick() {
        
        //direction
        //directionUp
        //failure
        //notificqtion
        //retry
        //start
        //stop
        
        
        
//        WKInterfaceDevice.current().play(.)
//        print("Vibrate executed")
        
        vibrate(hepticsType: .directionDown)
        
    }
    
    func vibrate(hepticsType: WKHapticType)  {
       
        WKInterfaceDevice.current().play(hepticsType)
        print("Executed : \(hepticsType.rawValue)")
    }
    
    
    @IBAction func btnDirectionUp()
    {
        vibrate(hepticsType: .directionUp)
    }
    
    @IBAction func btnFailure()
    {
        vibrate(hepticsType: .failure)
    }
    
    @IBAction func btnStart()
    {
        vibrate(hepticsType: .start)
    }
    
    @IBAction func btnStop()
    {
        vibrate(hepticsType: .stop)
    }
    
    @IBAction func btnSuccess()
    {
        
        print("-------->")
        for n in 1...10
        {
            vibrate(hepticsType: .success)
            print("btn success \(n)")
            sleep(1)
        }
        
        
    }
}
