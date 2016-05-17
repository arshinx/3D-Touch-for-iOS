//
//  AddStuffViewController.swift
//  ThreeDTouch
//
//  Created by Training on 28/10/15.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

class AddStuffViewController: UIViewController {

    @IBOutlet weak var stuffLabel: UILabel!
    
    var detailInfo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let stuffType = detailInfo {
            stuffLabel.text = stuffType
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dissmissVC(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
