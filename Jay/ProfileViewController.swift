//
//  ProfileViewController.swift
//  Jay
//
//  Created by DMITRY FILACHEV on 26.04.2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {


   
    @IBOutlet weak var aditProfile: UIButton!
    @IBOutlet weak var btnSelect: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aditProfile.layer.borderWidth = 1.0
        aditProfile.layer.borderColor = UIColor.purple.cgColor
        aditProfile.layer.cornerRadius = 15.0
        aditProfile.clipsToBounds = true
        
        
        
        btnSelect.backgroundColor = .clear
        btnSelect.layer.cornerRadius = 5
        btnSelect.layer.borderWidth = 0.5
        btnSelect.layer.borderColor = UIColor.lightGray.cgColor
        
        let cn : String = Shared.shared.companyName ?? "Select"
        btnSelect.setTitle(cn,for: .normal)


        
    }
    

    

}
