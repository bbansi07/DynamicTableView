//
//  ViewController.swift
//  DynamicTableView
//
//  Created by Bansi Bhatt on 27/03/17.
//  Copyright © 2017 Bansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tblList : UITableView!
    
    let arrayLabel : [String] = ["This is single line","This is Double line which need two number of line to display on cell","Use the Assistant editor to link the labels to the CustomCell class. Once opened the Assistant editor in the bottom view be sure that the CustomCell class is selected. By holding CTRL, drag and drop the two component inside the CustomCell class and assign the variables index and name, respectively."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tblList.delegate = self
        tblList.dataSource = self
        tblList.estimatedRowHeight = 70
        tblList.rowHeight = UITableViewAutomaticDimension
        tblList.reloadData()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //MARK:- UItableview Delegates and Datasourse
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Video Cell"
        case 1:
            return "Audio Cell"
        default:
            return "Dynamic Label"
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        //let cell = tableView.dequeueReusableCell(withIdentifier: "video", for: indexPath) as! VideoCell
       // return cell
            
        switch indexPath.section {
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "video", for: indexPath) as! VideoCell
            cell.lblTitle?.text = "Video Name"
            cell.slider.value = 0
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "audio", for: indexPath) as! AudioCell
            cell.lblTitle?.text = "Audio Name"
            cell.slider.value = 0
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath) as! LabelCell
            cell.lblText.text = arrayLabel[indexPath.section - 2]
            return cell
            
        
        }
     
    }
}
