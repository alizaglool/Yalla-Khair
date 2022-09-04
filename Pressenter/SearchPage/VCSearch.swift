//
//  ViewController.swift
//  Search
//
//  Created by A_Z on 2/7/20.
//  Copyright © 2020 A_Z. All rights reserved.
//

import UIKit

class VCSearch: UIViewController , UITableViewDataSource , UITableViewDelegate , UISearchBarDelegate {
    @IBOutlet weak var SearchData: UISearchBar!
    @IBOutlet weak var Tabledata: UITableView!
    
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    var filteredData: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if filteredData.count != 0  {
            return filteredData.count}
        else { return 0 }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TabeSearch = tableView.dequeueReusableCell(withIdentifier: "cellSearch", for: indexPath) as! TabeSearch
        cell.LaNameSearch.text = filteredData[indexPath.row]
        return cell
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = data
        filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
            
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        Tabledata.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
        searchBar.text = " "
        searchBar.resignFirstResponder()
    }
    
}

