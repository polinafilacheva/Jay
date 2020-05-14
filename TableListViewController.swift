//
//  TableListViewController.swift
//  Jay
//
//  Created by DMITRY FILACHEV on 14.05.2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit

class TableListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let list: [listPlaces] = [listPlaces(heading: "Лондонский Тауэр", description: "Rрепость, стоящая на северном берегу Темзы, — исторический центр Лондона", image: UIImage(named: "7-2 16.png")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension TableListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "List") as! TableListViewCell
        
        cell.imageList.image = list[indexPath.row].image
        cell.lableList.text = list[indexPath.row].heading
        cell.textList.text = list[indexPath.row].description
       
        
        return cell
        
    }
    
}

struct listPlaces {
    var heading: String
    var description: String
    var image: UIImage
}
