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
        
        imageURLS = ["https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/556416/pexels-photo-556416.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39629/tiger-tiger-baby-tigerfamile-young-39629.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/556416/pexels-photo-556416.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39629/tiger-tiger-baby-tigerfamile-young-39629.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39629/tiger-tiger-baby-tigerfamile-young-39629.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39629/tiger-tiger-baby-tigerfamile-young-39629.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/556416/pexels-photo-556416.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?h=350&auto=compress&cs=tinysrgb"]
        
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
        //let targetImageView = cell.viewWithTag(1) //as! UIImageView
        targetImageView?.sd_setImage(with: URL(string: imageURLS[indexPath.row]), placeholderImage: #imageLiteral(resourceName: "pieces.jpg"), options: [.progressiveDownload])
    
        return cell
    }

}

class TblCtrlCell: UITableViewCell {
    @IBOutlet weak var TblCtrlImageView: UIImageView!
}
