//
//  CustomAlertView.swift
//  UniqolabelMonolith
//
//  Created by Uniqolabel Developer on 03/09/18.
//  Copyright © 2018 uniqolabel. All rights reserved.
//

import UIKit

class CustomAlertView: UIView {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var alertImage: UIImageView!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet var alertView: UIView!
    
    override init(frame: CGRect) { // for using CustomView in code
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) { // for using CustomView in IB
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("CustomAlertView", owner: self, options: nil)
        guard let content = alertView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(content)
    }
}
