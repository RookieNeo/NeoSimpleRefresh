//
//  ViewController.swift
//  NeoSimpleRefresh
//
//  Created by Rookieneo on 01/26/2018.
//  Copyright (c) 2018 Rookieneo. All rights reserved.
//

import UIKit
import NeoSimpleRefresh
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.pd.addPullRefresh {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4, execute: {
                self.tableView.pd.endHeaderRefreshing()
            })
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        return cell
    }
}
