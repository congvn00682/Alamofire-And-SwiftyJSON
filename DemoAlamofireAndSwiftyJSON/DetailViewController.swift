//
//  DetailViewController.swift
//  DemoAlamofireAndSwiftyJSON
//
//  Created by nws on 8/1/18.
//  Copyright © 2018 nws. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var nameData: String?
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = nameData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    static var instance : DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    }

}
