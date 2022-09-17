//
//  Modal_View.swift
//  AssignmentOne


import UIKit
protocol Modal_View_Delegate
{
    func credits_viewing_time(time: Int )
    
}


class Modal_Vie: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    var delegate: Modal_View_Delegate?;
    var delegateFuncTime = -2
    var seconds = 20;
    var timer = Timer()
    
    
    
    
    //slider
    @IBAction func slider(_ sender: UISlider)
    {

        seconds = Int(sender.value)
        delegateFuncTime = Int(sender.value)
        label.text = String(seconds) + " Seconds"
        
    }
    
    // start
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
