//
//  PostComposeViewController.swift
//  Beginning iOS in Swift
//
//  Created by Jeff Hurray on 10/26/15.
//  Copyright © 2015 jhurray. All rights reserved.
//

import Parse
import UIKit

class PostComposeViewController: UIViewController {

    // UI Elements
    let titleTextField = UITextField()
    let messageTextField = UITextField()
    
    
    
    // MARK: Apple's API functions
    
    // This function is called by the ViewController after the view loads.
    // This is where you should set up any UI elements
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // 1) Set title and background color for the view of the viewController

        
        
        // 2) Call all the setup functions you implemented

        
        
        // 3) Add your UI Elements to the view

        
    }
    
    
     // MARK: Helper functions
    
    private func setupNameTextView() {
        
        // 1) Set the delegate for the textfield

        
        
        // 2) Set the placeholder for the text field

        
        
        // 3) Set the backgroundColor for the text field

        
        
        // 4) Set the frame for the text field

    
    }
    
    private func setupMessageTextField() {
        
        // Setup using the same steps as above
        

    }
    
    private func setupNavigationBar() {
        
        // 1) Create cancel and post buttons (UIBarButtonItem)
        // let composeBarButton = ...

        
        
        
        // 2) Add buttons to navigationItem
        // self.navigationItem.leftBarButtonItem = ...

        
        
    }
    
    
    // This is a check to see if our post is valid
    // We want the body and title to have at least 1 character and for the body to be no longer than 140 chars
    private func inputForPostIsValid() -> Bool {
        return self.messageTextField.text?.characters.count > 0
            && self.titleTextField.text?.characters.count > 0
            && self.messageTextField.text?.characters.count <= 140
    }
    
    internal func createPost() {
        
        // This is a check to see if our post is valid
        // the 'guard' statement means make sure that this is true, and if its not do something that raises an error or exits the function
        guard self.inputForPostIsValid() else {
            print("Invalid input!!!! Please try again")
            return
        }
        
        // 1) Create new Post PFObject
        // let post = PFObject(...)
        
        
        // 2) Set fields for object
        // 'Body' and 'Title'

        
        
        // 3) Make Parse request to save the post and deal with the success or faliure of the save request
        // ~~> if succeess: dismiss the view controller | if faliure : print the error
        
        
    }
    
    internal func cancel() {
        
        // 1) Dismiss the view controller when cancel is pressed
        // self.navigationController?.dismissViewControllerAnimated(...)

    
    }

    
    
    // MARK: UITextFieldDelegate functions
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        // dismisses keyboard when return is hit
        textField.resignFirstResponder()
        return true
    }
    
}
