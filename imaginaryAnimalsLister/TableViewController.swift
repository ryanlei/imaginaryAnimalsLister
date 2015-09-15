//
//  TableViewController.swift
//  imaginaryAnimalsLister
//
//  Created by Ryan Lei on 9/14/15.
//  Copyright © 2015 Ryan Lei. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var animalsArray:[ImaginaryAnimal]
    
    required init?(coder aDecoder: NSCoder) {
        animalsArray = AnimalsLoader().loadAnimals()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        
        let animal = animalsArray[indexPath.row]
        
        // Configure the cell...
        cell.textLabel?.text = "\(indexPath.row + 1). \(animal.name)"

        return cell
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destinationViewController = segue.destinationViewController as? DetailViewController,
            let selectedIndex = self.tableView.indexPathForSelectedRow?.row{
                let selectedAnimal = animalsArray[selectedIndex]
                destinationViewController.animal = selectedAnimal
        }
    }
    

}
