//
//  Travel.swift
//  travels
//
//  Created by ivan favarin on 20/10/19.
//  Copyright © 2019 ivan favarin. All rights reserved.
//

import UIKit

class Travel: NSObject {
    
    let title: String
    let numberOfDays: Int
    let price: String
    let imagePath: String
    
    
    init(title: String, numberOfDays: Int, price: String, imagePath: String)
    {
        self.title = title
        self.numberOfDays = numberOfDays
        self.price = price
        self.imagePath = imagePath
    }

}
