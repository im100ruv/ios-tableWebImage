//
//  ViewController.swift
//  TableWebImage
//
//  Created by Im100ruv on 30/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var imageURLS = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        imageURLS = ["https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/34950/pexels-photo.jpg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb", "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?h=350&auto=compress&cs=tinysrgb"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageURLS.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableCell
        
        let imgURL = URL(string: imageURLS[indexPath.row])
        do {
            let imgData = try Data(contentsOf: imgURL!)
            cell.imgView.image = UIImage(data: imgData)
        } catch let err {
            print(err.localizedDescription)
        }
        
        return cell
    }
    
}

class TableCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
}


