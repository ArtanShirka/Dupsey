//
//  ViewController.swift
//  SQLiteWrapper
//
//  Created by Cindy Oakes on 5/28/16.
//  Copyright © 2016 Cindy Oakes. All rights reserved.
//

import UIKit

class SQLViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    //MARK: Properties & Variables
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: [String] = []
    
    
    //MARK:  Init & Load
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //SQLLiteWrapper commands called here and table data created to show output
        
        items = SQLDataIO.PerformedSQLCommands()
        items.insert("datebase commands started", at: 0)
        items.append("database commands completed")
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:  Table View Methods
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 50.0
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count;
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                               for: indexPath) 
        let item = items[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = item
        return cell
    }



}

