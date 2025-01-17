//
//  TableViewController.swift
//  HW-w5d2
//
//  Created by Osama folta on 20/03/1443 AH.
//

import UIKit

struct prodct {
    var prodctTitel:String
    var descrbtin:String
    var cost:Double
    var imgProdct:UIImage?
}

class TableViewController: UITableViewController {
    
    var item:[prodct] = [prodct(prodctTitel: "Mercedes-Benz EQC", descrbtin: "Used", cost: 110000, imgProdct:UIImage(named: "imgaa")),
prodct(prodctTitel: "Mercedes-Benz G Class", descrbtin: "New", cost: 480000, imgProdct:UIImage(named: "imgag")),
prodct(prodctTitel: "Mercedes-Benz S Class", descrbtin: "Used", cost: 380000, imgProdct:UIImage(named: "imgac")),
prodct(prodctTitel: "Mercedes-Benz AMG", descrbtin: "New", cost: 250000, imgProdct:UIImage(named: "imgad"))]


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "bannerid")

        tableView.rowHeight = 150
        
        tableView.register(UINib(nibName: "TableViewCell2",bundle: nil), forCellReuseIdentifier: "itemcell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {return 1}
        else{
        return item.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
     let  cellA = tableView.dequeueReusableCell(withIdentifier: "bannerid", for: indexPath) as! TableViewCell
       return cellA
    }
        else{
 let  cellB = tableView.dequeueReusableCell(withIdentifier:
        "itemcell", for: indexPath) as! TableViewCell2
            cellB.titl.text = item[indexPath.row].prodctTitel
            cellB.descrb.text = item[indexPath.row].descrbtin
            cellB.cost.text = String(item[indexPath.row].cost)
            cellB.cellimg.image = item[indexPath.row].imgProdct
            
        return cellB
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

