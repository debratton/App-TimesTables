//
//  ViewController.swift
//  TimesTables
//
//  Created by David E Bratton on 10/20/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderTextValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderTextValue.text = String((Int(slider.value * 20)))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        //cell.textLabel?.text = "Hello World"
        // Have to convert slider value to String
        // But it is also a FLoat and you can't multiply by indexPath row which is an Int so Convert to Int
        cell.textLabel?.text = String((Int(slider.value * 20)) * (indexPath.row + 1))
        return cell
    }
    

    @IBAction func sliderChanged(_ sender: Any) {
        sliderTextValue.text = String((Int(slider.value * 20)))
        tableView.reloadData()
    }
    
    
    
}

