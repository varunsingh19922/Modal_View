//
//  Modal_View.swift
//  AssignmentOne
//
//  Created by tushar jagtap on 9/16/22.
//

import UIKit

protocol Modal_View_Delegate: AnyObject
{
    func credits_viewing_time(time: Int )
    }

class Modal_View: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        }
    
    
    var delegate: Modal_View_Delegate?;
    var delegateFuncTime = 20
    var seconds = 20;
    var timer = Timer()
    
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    @IBAction func slider(_ sender: UISlider!)
    {
        seconds = Int(sender.value)
        delegateFuncTime = Int(sender.value)
        label.text = String(seconds) + " Seconds"
        sender.addTarget(self, action:#selector(moved_slider), for: .touchUpInside)
        
        }
    
    @objc private func moved_slider()
    {
        delegate?.credits_viewing_time(time : delegateFuncTime)//Notify value of slider changed
        }
    
    @IBAction func start(_ sender: Any)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Modal_View.counter), userInfo: nil, repeats: true)
        
        sliderOutlet.isHidden = true
        startOutlet.isEnabled = false // button disabled
        startOutlet.backgroundColor = .gray
        }
    
    @objc func counter()
    {
        seconds = seconds - 1; // countdown Timer updated
        
        label.text = String(seconds) + " Seconds" // label text updated
        
        if(seconds == 0)
        {
            dismiss(animated: true, completion: nil) // Modal view pop up dismissed when timer                                              reaches 0
            sliderOutlet.isHidden = false
            startOutlet.isEnabled = true
            delegate?.credits_viewing_time(time: delegateFuncTime)
            }
        
        
        }
}
