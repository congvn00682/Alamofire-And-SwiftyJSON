//
//  UsersViewController.swift
//  DemoAlamofireAndSwiftyJSON
//
//  Created by nws on 7/31/18.
//  Copyright © 2018 nws. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class UsersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var userData : [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 50
        self.tableView.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: "userCell")
        
        fetchUsersData()
    }
    
    func fetchUsersData() {
        DispatchQueue.main.async {
            Alamofire.request("https://raw.githubusercontent.com/arimunandar/API/master/users.json").responseJSON(completionHandler: { (response) in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    let data = json["data"]
                    data["users"].array?.forEach({ (user) in
                        let user = UserModel(name: user["name"].stringValue, email: user["email"].stringValue)
                        self.userData.append(user)
                    })
                    self.tableView.reloadData()
                case .failure(let error):
                    print(error.localizedDescription)
                }
            })
        }
    }

}
extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UsersTableViewCell
        cell.nameLabel.text = self.userData[indexPath.row].name
        cell.emailLabel.text = self.userData[indexPath.row].email
        
        return cell
    }
    
}
