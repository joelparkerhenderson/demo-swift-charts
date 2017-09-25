//
//  ViewController.swift
//  Demo Swift Charts
//
//  Created by Joel on 9/24/17.
//  Copyright © 2017 JoelParkerHenderson.com. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var demoBarChartView: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demoBarChartView.noDataText = "This is the chart ready for data."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

