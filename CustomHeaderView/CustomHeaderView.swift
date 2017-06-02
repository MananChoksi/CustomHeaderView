//
//  CustomHeaderView.swift
//  CustomHeaderView
//
//  Created by Manan Choksi on 26/05/17.
//  Copyright © 2017 Manan Choksi. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {

    var view:UIView!;
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnOne: UIButton!
    
    @IBInspectable var lblTitleText : String?
        {
        get{
            return lblTitle.text;
        }
        set(lblTitleText)
        {
            lblTitle.text = lblTitleText!;
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib ()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib ()
    }
    
    func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CustomHeaderView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view);
    }
}
