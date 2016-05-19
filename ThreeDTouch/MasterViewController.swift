//
//  ViewController.swift
//  ThreeDTouch


import UIKit

class MasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var menuTable: UITableView!
    var data    = ["Awesome", "Interesting", "Wonderful"]
    var values  = ["Car", "Book", "Place"]

    var stuffType:String!
    var quickActionString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTable.delegate = self
        menuTable.dataSource = self
        
        // Verify availability of Force Touch
        if traitCollection.forceTouchCapability == .Available {
            
            registerForPreviewingWithDelegate(self, sourceView: menuTable)
            
        }
        
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel!.text = data[indexPath.row]
        
        return cell
    
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = menuTable.cellForRowAtIndexPath(indexPath) {
            stuffType = cell.textLabel!.text
            self.performSegueWithIdentifier("showStuff", sender: self)
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showStuff" {
            let stuffVC = segue.destinationViewController as! AddStuffViewController
            stuffVC.detailInfo = stuffType
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

