//
//  ViewController.swift
//  beautyful-things
//
//  Created by Mostafijur Rahaman on 6/24/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var beautifulThings = ["https://3.bp.blogspot.com/-Ue1BNDfjTwE/UPFybkYOckI/AAAAAAAACB0/SfkwREI3KHM/s640/A-Beautiful-Path-Villaviciosa-Asturias-Spain-700x525.jpg", "https://beautiful-images.org/wp-content/uploads/2016/03/Images-Beautiful-morning-Pictures.jpg","https://hdwallpaperbackgrounds.net/wp-content/uploads/2016/05/Beautiful-Images-1.jpg","https://hdwallpaperbackgrounds.net/wp-content/uploads/2016/05/Beautiful-Images-4.jpg","https://www.technocrazed.com/wp-content/uploads/2015/12/beautiful-wallpaper-download-13.jpg"]
    var imageTitle = ["Please let me drop there", "Kill me or take me there", "I can't wait to go there", "Bless me Nature!", "I am just amazed!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("BeautifulCell") as? BeautifulCell{
            let url = NSURL(string: beautifulThings[indexPath.row])!
            var img: UIImage!
            if let data = NSData(contentsOfURL: url){
                img = UIImage(data: data)
            }else{
                img = UIImage(named: "default")
            }
            
            cell.configureCell(img, text: imageTitle[indexPath.row])
            
            return cell
        }else{
            return BeautifulCell()
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beautifulThings.count
    }

}

