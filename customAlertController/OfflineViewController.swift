//
//  OfflineViewController.swift
//  TabBarApp
//
//  Created by Mohamed Musharaf on 25/08/22.
//

import UIKit

class OfflineViewController: UIViewController {

    @IBOutlet weak var offlineView: UIView!
    @IBOutlet weak var OfflineVrihodhaIcon: UIImageView!
    @IBOutlet weak var tryAgainButton: UIButton!
    
    var buttonAction:(() ->Void)?
    
    var refreshButtonTitle = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        OfflineVrihodhaIcon.layer.cornerRadius = 30
        OfflineVrihodhaIcon.layer.borderWidth = 1.0
        OfflineVrihodhaIcon.layer.borderColor = UIColor.gray.cgColor
        OfflineVrihodhaIcon.clipsToBounds = true
        
        offlineView.layer.cornerRadius = 23
        offlineView.layer.shadowOpacity = 0.25
        
        tryAgainButton.layer.cornerRadius = tryAgainButton.layer.frame.size.width/10
     
    }
    
    @IBAction func tryAgainSender(_ sender: Any) {
        
        dismiss(animated: true)
        
        buttonAction?()
        
    }
    
 
}
