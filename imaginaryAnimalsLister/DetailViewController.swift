//
//  DetailViewController.swift
//  imaginaryAnimalsLister
//
//  Created by Ryan Lei on 9/14/15.
//  Copyright © 2015 Ryan Lei. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var animal: ImaginaryAnimal?
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLastSeenLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
        }
        
        if let name = animal?.name {
            self.nameLabel.text = "Name:  " + name
        }
        
        if let height = animal?.height {
            self.heightLabel.text = "Height:  " + String(height)
        }
        
        if let location = animal?.location {
            self.locationLabel.text = "Location:  " + location
        }
        
        if let dateLastSeen = animal?.dateLastSeen {
            self.dateLastSeenLabel.text = "Date Last Seen:  " + dateLastSeen + "AD"
        }
    }
    
    
}
