//
//  ViewController.swift
//  segmentLearn
//
//  Created by Александр Усольцев on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        label.textAlignment = .center
        label.font = label.font.withSize(35)
        label.numberOfLines = 2
    }

    @IBAction func choiseSegment(_ sender: UISegmentedControl) {
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "First segment"
            label.textColor = .red
        case 1:
            label.text = "Second segment"
            label.textColor = .yellow
        case 2:
            label.text = "Third segment"
            label.textColor = .green
        default:
            label.text = "Херня какая то!"
        }
    }
    
    

}

