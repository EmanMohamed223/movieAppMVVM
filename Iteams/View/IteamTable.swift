//
//  IteamTable.swift
//  Iteams
//
//  Created by Eman on 16/01/2023.
//

import UIKit

class IteamTable: UITableViewController {
    var viewModel : ViewModel?
    func renderdata() {
        self.tempitems = viewModel?.result
     //  self.tempitems = newresult
        DispatchQueue.main.async {
        
                       self.tableView.reloadData()
               }
    }
    
    var tempitems : [Item]?
    override func viewDidLoad() {
        super.viewDidLoad()
tempitems=[]
      
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "mycell")
     viewModel  = ViewModel()
   
        viewModel!.getItems()
        viewModel?.bindResultToViewController =
        {() in self.renderdata()}

       // tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tempitems!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! TableViewCell
        var temp = tempitems![indexPath.row]
        cell.tmovieTitle?.text = temp.header
        cell.movierate.text = temp.gross
        var url = URL(string: (temp.image)!)
        cell.movieImg.kf.setImage(with: url)
        // Configure the cell...

        return cell
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var details = self.storyboard?.instantiateViewController(withIdentifier: "data")as!ViewController
        details.detailedItem = tempitems![indexPath.row]
        self.navigationController?.pushViewController(details, animated: true)
    }
   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 146
    }
  
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

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
