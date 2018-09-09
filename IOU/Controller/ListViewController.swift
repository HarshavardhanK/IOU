//
//  ListViewController.swift
//  IOU
//
//  Created by Harshavardhan K on 18/08/18.
//  Copyright © 2018 Harshavardhan K. All rights reserved.
//

import UIKit
import ViewAnimator

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 5, 5, 5, 5, 5, 5, 5, 5]
    var list: Array<People> = Array<People>()
    
    private let animations = [AnimationType.from(direction: .bottom, offset: 30.0)]

    @IBOutlet weak var listTableView: UITableView!
    
    func animateTableViewData() {
        
        //Animate the view
        listTableView.reloadData()
        UIView.animate(views: listTableView.visibleCells, animations: animations, animationInterval: 0.25) {print("Animated")}
        
    }
    
    func registerNib() {
        listTableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: nil), forCellReuseIdentifier: "listCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //registerNib()
        
        //label.text = thisUser.email
        loadDummyData()
        /// Delegate
        listTableView.delegate = self
        listTableView.dataSource = self

        animateTableViewData()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- LIST TABLEVIEW
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! CustomCellTableViewCell
        //cell.imageView?.image = cell.chooseImage()
        //cell.userName?.text = "Cell: \(indexPath.row + 1)"
//        cell.userName?.textColor = UIColor.black
      //  cell.netAmount?.text = "\(indexPath.row)"
        listTableView.separatorStyle = .none
        
        cell.createCard()
        
        cell.selectionStyle = .none
        
        cell.name.text = list[indexPath.row].name
        cell.name.textColor = UIColor.white
        cell.name.textAlignment = .center
        cell.name.backgroundColor = cell.chooseColor()
        cell.layer.cornerRadius = 8
        cell.name.layer.cornerRadius = 8
        
       //r cell.amount.text = "\(indexPath.row * 5)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "userDetail" {
            
            if let destinationViewcontroller = segue.destination as? PayViewController {
                destinationViewcontroller.person = list[(listTableView.indexPathForSelectedRow?.row)!]
                print(list[(listTableView.indexPathForSelectedRow?.row)!].name)
                print("User Detail Segue completed..")
                
            }
           //print("User Detail Segue completed..")
            
        }
        
    }
    
    //MARK:- LOAD STORE METHODS
    //MARK:- DUMMY INIT
    func loadDummyData() {
        
        let person1 = People(name: "Adam", theyOwe: 300.0, youOwe: 200)
        let person2 = People(name: "Pont", theyOwe: 45, youOwe: 12)
        let person3 = People(name: "Haley", theyOwe: 456, youOwe: 123)
        let person4 = People(name: "Phil", theyOwe: 12, youOwe: 0)
        let person5 = People(name: "Alex", theyOwe: 0, youOwe: 200)
        let person6 = People(name: "Luke", theyOwe: 0, youOwe: 300)
        
        list.append(person1)
        list.append(person2)
        list.append(person3)
        list.append(person4)
        list.append(person5)
        list.append(person6)
        
    }

}
