//
//  TableViewController.swift
//  TableWebImage
//
//  Created by Im100ruv on 30/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var imageURLS = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageURLS = ["https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb"]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageURLS.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TblCtrlCell") as! TblCtrlCell
        
        let targetImageView = cell.TblCtrlImageView
        
        return cell
    }

}

class TblCtrlCell: UITableViewCell {
    @IBOutlet weak var TblCtrlImageView: UIImageView!
}
