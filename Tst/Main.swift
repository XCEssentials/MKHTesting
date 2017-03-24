//
//  Main.swift
//  MKHTestingTst
//
//  Created by Maxim Khatskevich on 3/13/17.
//  Copyright © 2017 Maxim Khatskevich. All rights reserved.
//

import XCTest

@testable
import MKHTesting

//===

class Main: XCTestCase {
    
    func testExample()
    {
        let val = RXC.value("The value exists") {
            
            // Will fail if get 'nil'
            return 1 // nil
        }
        
        //===
        
        RXC.isTrue("The value is equal to 1") {
            
            val == 1
        }
        
        //===
        
        RXC.isNil("This expression returns nil") {
            
            nil
        }
        
        //===
        
        RXC.isNotNil("This expression returns NON-nil value") {
            
            23
        }
    }
}
