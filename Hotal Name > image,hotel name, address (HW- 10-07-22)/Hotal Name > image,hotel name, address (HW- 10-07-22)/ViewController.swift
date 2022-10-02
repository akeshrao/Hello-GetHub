//
//  ViewController.swift
//  Hotal Name > image,hotel name, address (HW- 10-07-22)
//
//  Created by TryCatch Pro 4 on 10/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var TabelViewHotal: UITableView!
    
    var HNameArray = ["Aura Restaurant","Veg Treat Regalia","Mumbai Masti","Swadam Bhog Pure Veg Restaurant","Bhurji Katta","Bombay Earth","Gossip Fine Dine","Bhau Fast food","Paanjo Taste","Gaja Food"]
    
    var HAddArray = ["ADD:- B-6, Brindavan Apartment. Jn.Opp Link Rd. &, Yogi Nagar Rd, Mumbai, Maharashtra 400091","ADD:- Mumbai, Yogi Nagar, Borivali West, Mumbai, Maharashtra 400091","ADD:-  Creek View Apartment, E-20, Shop No.006 CHS.LTD, Eksar Rd, Yogi Nagar, Borivali, W, 400091","ADD:- Yogi Plaza Commercial Complex Premises New Road Towards Ashok Nagar & Jairaj Nagar, Yogi Nagar, Borivali West, Mumbai, Maharashtra 400091","ADD:- Vazira, Borivali, Mumbai, Maharashtra 400091","ADD:- Western Suburbs, Eskay Resorts, Off, Linking Road, Borivali West, Mumbai, Maharashtra 400091","ADD:- C, B WING, Yogi Nagar Marg, Yogi Nagar, Borivali West, Mumbai, Maharashtra 400091","ADD:- Shop No:6,Prabhu Ashish chs, near Gokhle College, Gorai 3, Borivali West, Mumbai, Maharashtra 400091","ADD:- 27-A, Shop no. 1, D-26, Eksar Rd, Yogi Nagar, Borivali West, Mumbai, Maharashtra 400091","ADD:- Shop No.8,Shree Gayatri Ganesh CHS.,L.T.Road, Gorai, Old MHB Colony, Borivali West, Mumbai, Maharashtra 400091"]
    
    var HImgArray = ["H1-IMG","H2-IMG","H3-IMG","H4-IMG","H5-IMG","H6-IMG","H7-IMG","H8-IMG","H9-IMG","H10-IMG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TabelViewHotal.dataSource = self
        TabelViewHotal.delegate = self
        
        
        
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotelNameTableViewCell") as! HotelNameTableViewCell
        
        let ImageName = HImgArray[indexPath.row]
        cell.HotalImage.image = UIImage(named: ImageName)
        let Hotalnames = HNameArray[indexPath.row]
 
        cell.HotalImage.layer.cornerRadius = cell.HotalImage.frame.height / 2
     
        
        cell.HotalNameGoesHereLab.text = Hotalnames
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let VC2 = storyboard?.instantiateViewController(withIdentifier: "View2ForHotal") as! View2ForHotal
        VC2.hoimg = UIImage(named: HImgArray[indexPath.row])!
        VC2.honame = HNameArray[indexPath.row]
        VC2.hoadd = HAddArray[indexPath.row]
        
        self.navigationController?.pushViewController(VC2, animated: true)
        
    }

}
