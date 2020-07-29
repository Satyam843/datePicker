//
//  ViewController.swift
//  datePicker
//
//  Created by soc-admin on 7/29/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
   //IB Outlets
    @IBOutlet weak var tableView: UITableView!
    
    

   // var dateData : String = []
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.reloadData()
        donePressed()
        //createDatePicker()
        // Do any additional setup after loading the view.
    }
    @IBAction func saveData(_ sender: Any) {
        let cell1 = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! TableViewCell
        cell1.dateText.text = "\(datePicker.date)"
        print(cell1.dateText.text!)
    }
    //Private function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed))
        cell.dateText.inputAccessoryView = toolBar
       cell.dateText.inputView = datePicker
        //cell.dateText.text = "\(datePicker.date)"
        toolBar.setItems([doneBtn], animated: true)
        return cell
    }
    @objc func donePressed() {
        let cell1 = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! TableViewCell
        cell1.dateText.text = "\(datePicker.date)"
        self.view.endEditing(true)
        
    }
   
   /* func createDatePicker()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed))
        dateText.inputAccessoryView = toolBar
        dateText.inputView = datePicker
        toolBar.setItems([doneBtn], animated: true)
    }*/



    
}

