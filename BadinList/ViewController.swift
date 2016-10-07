//
//  ViewController.swift
//  BadinList
//
//  Created by BHSRam6 on 10/6/16.
//  Copyright © 2016 BHSRam6. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var listTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        listTable.dataSource = self
        
        listTable.delegate = self
    }

    var ArtsClasses = ["Art I","Art II", "Art III", "Art IV", "AP Studio Art 2D", "Ceramics", "Digital Photography", "Art Exploration", "Fashion Illustration", "Theater I", "Theater II", "Badin Rocks", "Music Technology", "Beginner Guitar", "Advanced Guitar", "Piano", "Jazz Band", "Publications", "Music Appreciation", "Art Appreciation"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArtsClasses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = ArtsClasses[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
