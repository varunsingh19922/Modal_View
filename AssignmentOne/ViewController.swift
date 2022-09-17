//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/5/22.
//

import UIKit

class ViewController: UIViewController, Modal_View_Delegate
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
   
    
    @IBOutlet weak var label: UILabel!
    
    //private let vc = Modal_View()
    //vc.delegate = self
       
   func credits_viewing_time(time: Int )
    {
     
            label.text = String(time) + " seconds Professor viewed the credits "
            
    }
}
           



