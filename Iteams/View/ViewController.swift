//
//  ViewController.swift
//  Iteams
//
//  Created by Eman on 16/01/2023.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {
    var detailedItem : Item?
    
    @IBOutlet weak var titleeee: UILabel!
    
    
    
    @IBOutlet weak var rank: UILabel!
    
    
    
    
    @IBOutlet weak var gross: UILabel!
    
    
    
    @IBOutlet weak var imageee: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleeee.text = detailedItem?.header
        rank.text = detailedItem?.rank
        gross.text = detailedItem?.gross
     
        var url = URL(string: (detailedItem?.image)!)
        imageee.kf.setImage(with: url)
//imageee.image = detailedItem?.image
        
    }


}

