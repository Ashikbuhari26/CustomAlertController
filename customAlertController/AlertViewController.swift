//
//  AlertViewController.swift
//  TabBarApp
//
//  Created by Mohamed Ashik Buhari on 03/08/22.
//

import UIKit

class AlertViewController: UIViewController {
    
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var OkActionButton: UIButton!
    
    @IBOutlet var CancelActionButton: UIButton!
    
    @IBOutlet var AlertView: UIView!
    
    @IBOutlet var imageView: UIImageView!
    
    
    
    var alertTitle = String()
    
    var alertBody = String()
    
    var actionButtonTitle = String()
    
    var cancelActionTitle = String()
    
    var buttonAction:(() -> Void)?
    
    var cancelAction:(() -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         setUpView()
         
         imageView.layer.cornerRadius = 30
         AlertView.layer.cornerRadius = 23
         OkActionButton.layer.cornerRadius = OkActionButton.layer.frame.size.width/6
         CancelActionButton.layer.cornerRadius = CancelActionButton.layer.frame.size.width/6
         imageView.layer.borderWidth = 1.0
         imageView.layer.borderColor = UIColor.gray.cgColor
         imageView.clipsToBounds = true
         //okActionButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor

//         OkActionButton.layer.shadowOpacity = 0.30
//         CancelActionButton.layer.shadowOpacity = 0.30
         AlertView.layer.shadowOpacity = 0.25

    }
    
    func setUpView(){
        titleLabel.text = alertTitle
        descriptionLabel.text = alertBody
        OkActionButton.setTitle(actionButtonTitle, for: .normal)
        CancelActionButton.setTitle(cancelActionTitle, for: .normal)    }
    
    
    
    
    
    @IBAction func OkTapAction(_ sender: Any) {
        
        dismiss(animated: true)
        
        buttonAction?()
        
    }
    
    
    @IBAction func cancelTapAction(_ sender: Any) {
        
        dismiss(animated: true)
        
        cancelAction?()
        
    }
    
   

}
