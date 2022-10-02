//
//  View2ForHotal.swift
//  Hotal Name > image,hotel name, address (HW- 10-07-22)
//
//  Created by TryCatch Pro 4 on 10/07/22.
//

import UIKit

class View2ForHotal: UIViewController {

    
    @IBOutlet weak var HotalImageV2: UIImageView!
    @IBOutlet weak var HotalNameV2: UILabel!
    @IBOutlet weak var HotelAddV2: UITextView!
    
    @IBOutlet weak var V2View: UIView!
    
    
    var hoimg = UIImage()
    var honame = ""
    var hoadd = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        HotalImageV2.image = hoimg
        HotalNameV2.text = honame
        HotelAddV2.text = hoadd
        
        V2View.layer.cornerRadius = 20
        HotalImageV2.layer.cornerRadius = 20
        HotelAddV2.layer.cornerRadius = 20
        
    }

}
