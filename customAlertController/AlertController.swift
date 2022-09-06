//
//  AlertController.swift
//  TabBarApp
//
//  Created by Mohamed Ashik Buhari on 04/08/22.
//

import UIKit

class AlertController: UIViewController {
    
    
    
    @IBOutlet var titlelabel: UILabel!
    
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var OkButton: UIButton!
    
    @IBOutlet var imageView: UIView!
    
    @IBOutlet var alertView: UIView!
    
    var alertTitle = String()
    
    var alertBody = String()
    
    var actionButtonTitle = String()
    
    var buttonAction:(() -> Void)?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
        imageView.layer.cornerRadius = 30
        alertView.layer.cornerRadius = 23
        OkButton.layer.cornerRadius = 10
       
        imageView.layer.borderWidth = 1.0
        imageView.layer.borderColor = UIColor.gray.cgColor
        imageView.clipsToBounds = true
        //okActionButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        OkButton.layer.shadowOpacity = 0.30
        alertView.layer.shadowOpacity = 0.25

        
        
    }

    func setUpView(){
        titlelabel.text = alertTitle
        subtitleLabel.text = alertBody
        OkButton.setTitle(actionButtonTitle, for: .normal)}
    
   
    
    
    @IBAction func OkButtonAction(_ sender: Any) {
        
        dismiss(animated: true)
        
        buttonAction?()
        
        
    }
    
    
    
    

}
