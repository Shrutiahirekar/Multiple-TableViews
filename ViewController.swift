//
//  ViewController.swift
//  TwoTableViews
//
//  Created by Mac on 02/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TableView1: UITableView!
    
    @IBOutlet weak var TableView2: UITableView!
    let Flowers = ["Rose","Lotus","sunflower","Lily","Jasmine","Marigold"]
    let Animals = ["Dog","Cat","Buffalo","Horse","Elephant","Zebra"]
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView1.dataSource = self
        TableView1.delegate = self
        TableView2.dataSource = self
        TableView2.delegate = self
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0
        {
            return Flowers.count
        }
        else{
            return Animals.count
    }
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 0
        {
            let cell = TableView1.dequeueReusableCell(withIdentifier: "cell6", for: indexPath)
            cell.textLabel?.text = Flowers[indexPath.row]
            return cell
        }
        else{
            let cell = TableView2.dequeueReusableCell(withIdentifier: "cell6", for: indexPath)
            cell.textLabel?.text = Animals[indexPath.row]
            return cell
        }
    }

}
