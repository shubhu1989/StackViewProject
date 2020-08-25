//
//  ViewController.swift
//  StackViewProject
//
//  Created by CitySpidey on 8/24/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var editBtn: UIBarButtonItem!
    @IBOutlet var bottomView: UIView!
    @IBOutlet var tableView: UITableView!

    //@IBOutlet var bottomViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    // MARK: - EditButton Click Function
    @IBAction func btnEditClick(_ sender: UIBarButtonItem) {
        editBtn.title = "Done"
        editBtn.action = #selector(btnDoneClick)
        bottomView.isHidden = true;
        //bottomViewHeight.constant = 0;
    }
    
    @objc func btnDoneClick(){
        editBtn.title = "Edit"
        editBtn.action = #selector(btnEditClick(_:))
        bottomView.isHidden = false;
        //bottomViewHeight.constant = 50;
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row) row"
        return cell
    }
}
