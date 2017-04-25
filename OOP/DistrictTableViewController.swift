//
//  DistrictTableViewController.swift
//  OOP
//
//  Created by Vũ Đắc Thế on 4/24/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class DistrictTableViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        data = DataService.shared.selectedDistrictByCodeCity
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }



}
