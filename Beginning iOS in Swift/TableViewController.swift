//
//  TableViewController.swift
//  Beginning iOS in Swift
//
//  Created by Jeff Hurray on 10/26/15.
//  Copyright © 2015 jhurray. All rights reserved.
//

import UIKit
import Parse

class TableViewController: UIViewController {
    
    // Declare members of a class at the top
    
    // UI Elements
    private let tableView = UITableView()
    private let pullToRefreshControl = UIRefreshControl()
    
    // Data
    private var data : Array<PFObject> = []
    
    // Constants
    private static let CellIdentifier = "kMyCellIdentifier"

    
    // MARK: Apple's API functions
    
    // This function is called by the ViewController after the view loads.
    // This is where you should set up any UI elements
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
        // 1) set title for the View Controller
        // self.title = ...
        // This is what will be displayed on your nav bar
        
        
        
        // 2) Call all of the setup functions you implemented

        
        // 3) Add the tableView to the view
        // self.view.addSubview(...)
        
        
        
    }

    // MARK: Helper functions
    
    private func setupTableView() {
        
        // 1) Set the tableView's delegate and dataSource (both are self)

        
        
        // 2) Set the tableView's frame
        
        
        
        // 3) Load Data 
        
        
    }
    
    private func setupRereshControl() {
        
        // 1) Tell the refresh control what function to call when it is activated
        
        
        // 2) Add the refresh control to the tableView

    
    }
    
    private func setupNavigationBar() {
        
        // 1) Create compose button (UIBarButtonItem)
        // let composeBarButton = ...
        
        
        
        // 2) Add composeBarButton to navigationItem
        // self.navigationItem.rightBarButtonItem = ...

        
    
    }
    
    
    typealias CompletionBlock = ()->()
    private func loadData(completion : CompletionBlock) {
        
        // 1) Create Parse query
        
        
        // 2) Use query to make a network request to parse
        
        
        // 3) Make sure you call completion() inside the parse request closure
        
    }
    
    internal func refreshData() {
        self.loadData { () -> () in
            
            // 1) Stop the pullToRefreshControl Spinning

            
            // 2) Reload the tableView data

        
        }
    }
    
    internal func postButtonTapped() {
        
        print("The post button was tapped")
        
        // 1) Create a PostComposeViewController
        // let postComposeViewController = ...

        
        
        // 2) Create a UINavigationController to hold the PostComposeViewController
        // let navigationController = ...

        
        
        // 3) Present the navigationController
        // self.presentViewController(...)

    
    }
    
    // MARK: TableView Delegate / DataSource
    
    // Returns the number of sections in our table view
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1;
        
    }
    
    // Returns the number of rows in each section our table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        // Implement this
        
        return 0
        
    }
    
    // Returns the height of each row in our table view
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        // Implement this
        
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // 1) call dequeueReusableCellWithIdentifier to get a blank cell from the tableView

        
        
        // 2) If the cell hasnt been allocated yet, create it

        
        
        // 3) Setup the cell

        
        
        
        // 4) Return the cell

        
        // Delete this
        // I only added this so the project would build originally
        return UITableViewCell()
    }

}
