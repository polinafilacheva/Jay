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
    
    let list: [listPlaces] = [listPlaces(heading: "Лондонский Тауэр", description: "Крепость, стоящая на северном берегу Темзы,в историческом центре Лондона", image: UIImage(named: "7-2 16.png")!),
                              listPlaces(heading: "Графити", description: "Крепость, стоящая на северном берегу Темзы,в исторический центр Лондона", image: UIImage(named: "7-2 20.png")!),
                              listPlaces(heading: "По местам Шерлока", description: "Rрепость, стоящая на северном берегу Темзы, — исторический центр Лондона", image: UIImage(named: "7-2 21.png")!),
                              listPlaces(heading: "Готический Лондон", description: "Rрепость, стоящая на северном берегу Темзы, — исторический центр Лондона", image: UIImage(named: "7-2 10.png")!),
                              listPlaces(heading: "Лучшие пабы", description: "Rрепость, стоящая на северном берегу Темзы, — исторический центр Лондона", image: UIImage(named: "7-2 23.png")!),
                              listPlaces(heading: "Сияние Лондона", description: "Rрепость, стоящая на северном берегу Темзы, — исторический центр Лондона", image: UIImage(named: "7-2 24.png")!),
                              listPlaces(heading: "Будущее рядом", description: "Rрепость, стоящая на северном берегу Темзы, — исторический центр Лондона", image: UIImage(named: "7-2 25.png")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
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
