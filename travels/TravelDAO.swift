//
//  Travel.swift
//  travels
//
//  Created by ivan favarin on 20/10/19.
//  Copyright © 2019 ivan favarin. All rights reserved.
//


import UIKit

class TravelDAO: NSObject {
    
    func returnAllTravels() -> Array<Travel> {
        let ceara = Travel(title: "Ceará", numberOfDays: 3, price: "1.800,59", imagePath: "img1.png")
        let rioDeJaneiro = Travel(title: "Rio de Janeiro", numberOfDays: 6, price: "1.200,00", imagePath: "img2.jpg")
        let interiorSaoPaulo = Travel(title: "Atibaia - Sao Paulo", numberOfDays: 1, price: "890,00", imagePath: "img3.jpg")
        let paraiba = Travel(title: "Paraíba", numberOfDays: 3, price: "1.385,00", imagePath: "img4.jpg")
        let fortaleza = Travel(title: "Fortaleza", numberOfDays: 4, price: "3.120,00", imagePath: "img5.jpg")
        let travelList:Array<Travel> = [rioDeJaneiro, ceara, interiorSaoPaulo, paraiba, fortaleza]
        
        return travelList
    }
}
