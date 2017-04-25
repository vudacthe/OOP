//
//  CityTableViewController.swift
//  OOP
//
//  Created by Vũ Đắc Thế on 4/24/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class CityTableViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        data = DataService.shared.cities
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let selectedIndex = tableView.indexPathForSelectedRow {
            DataService.shared.selectedCity = DataService.shared.cities[selectedIndex.row]
        }
    }

}
