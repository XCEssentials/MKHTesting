//
//  Main.swift
//  MKHTestingTst
//
//  Created by Maxim Khatskevich on 3/13/17.
//  Copyright © 2017 Maxim Khatskevich. All rights reserved.
//

import XCTest

//@testable
import XCETesting

//===

class Main: XCTestCase {
    
    func testExample()
    {
        let valToCheck: Int? = 1
        
        let val = Assert("The value exists").isNotNil(valToCheck)
        
        //===
        
        Assert("The value is equal to 1").isTrue(val == 1)
        
        //===
        
        Assert("This expression returns nil").isNil(nil)
        
        //===
        
        Assert("This expression returns NON-nil value").isNotNil(23)
    }
}
