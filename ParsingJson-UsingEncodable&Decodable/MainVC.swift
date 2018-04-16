//
//  MainVC.swift
//  ParsingJson-UsingEncodable&Decodable
//
//  Created by Vikentor Pierre on 4/16/18.
//  Copyright © 2018 mosDev. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        VicksetupNavigationBar()
        setupTableView()
    }
    
    func VicksetupNavigationBar(){
        tableView.backgroundColor = .white
        navigationItem.title = "Json"
    }
    func setupTableView(){
        tableView.register(Mycell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? Mycell else {return UITableViewCell()}

        //cell.backgroundColor = .red
        cell.textLabel?.text = "yes"
        cell.detailTextLabel?.text = "No"

        return cell
    }

}
class Mycell:UITableViewCell{
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: "cell1")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



