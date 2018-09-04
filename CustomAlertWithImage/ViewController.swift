//
//  ViewController.swift
//  CustomAlertWithImage
//
//  Created by Uniqolabel Developer on 04/09/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertView: CustomAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       alertView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlertButtonAction(_ sender: Any) {
         showImagealertView()
        
    }
    

    
    private func showImagealertView(){
        animateIn()
        alertView.isHidden = false
//        alertView.layer.cornerRadius = 10
        alertView.title.text = "CustomAlertView"
        alertView.subTitle.text = "Designed By Anup Gupta"
        alertView.alertImage.image = #imageLiteral(resourceName: "myImg")
        alertView.okButton.addTarget(self, action: #selector(self.okButtonAction(_:)), for: .touchUpInside)
        alertView.cancelButton.addTarget(self, action: #selector(self.cancelButtonAction(_:)), for: .touchUpInside)
        
    }
    
    @objc private func okButtonAction(_ sender: Any) {
        print("OK Button Press")
        animateOut ()
    }
    
    @objc private func cancelButtonAction(_ sender: Any) {
        print("Cancel Button Press")
         animateOut ()
    }
    
    func animateIn() {
//       alertView.isHidden = false
        
        alertView.transform = CGAffineTransform.init(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 0.4) {
            self.alertView.isHidden = false
            self.alertView.alpha = 1
            self.alertView.transform = CGAffineTransform.identity
        }
        
    }
    
    
    func animateOut () {
        alertView.transform = CGAffineTransform.init(scaleX: 1, y: 1)
        UIView.animate(withDuration: 0.2) {

            self.alertView.alpha = 0
            self.alertView.transform = CGAffineTransform.identity
        }
        
//        self.alertView.isHidden = true
//
//        self.alertView.transform = CGAffineTransform.init(scaleX: 0, y: 0)
//        UIView.animate(withDuration: 0.3, animations: {
//
//            self.alertView.alpha = 0
//           }) { (success:Bool) in
//        }
    }
    
}

