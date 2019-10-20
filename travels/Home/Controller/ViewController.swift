//
//  ViewController.swift
//  travels
//
//  Created by ivan favarin on 20/10/19.
//  Copyright © 2019 ivan favarin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var travelTable: UITableView!
    @IBOutlet weak var viewHotels: UIView!
    @IBOutlet weak var viewPackages: UIView!
    
    let travelList: Array<Travel> = TravelDAO().returnAllTravels()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.travelTable.dataSource = self
        self.travelTable.delegate = self
        self.viewPackages.layer.cornerRadius = 10
        self.viewHotels.layer.cornerRadius = 10
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let travel = travelList[indexPath.row]
        
        cell.labelTitle.text = travel.title
        cell.labelNumberOfDays.text = "\(travel.numberOfDays) dias"
        cell.labelPrice.text = "R$ \(travel.price)"
        cell.travelImage.image = UIImage(named: travel.imagePath)
        
        cell.travelImage.layer.cornerRadius = 10
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 175 : 260
    }
}

