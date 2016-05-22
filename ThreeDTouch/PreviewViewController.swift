//
//  PreviewViewController.swift
//  ThreeDTouch

import UIKit

class PreviewViewController: UIViewController {

    var selectedItem:String!
    
    var previewActions:[UIPreviewActionItem] {
        
        let item1 = UIPreviewAction(title: "Take Action", style: .Default) { (action:UIPreviewAction, UIViewController) -> Void in
            print("Select")
        }
        
        let item2 = UIPreviewAction(title: "Take Another Action", style: .Default) { (UIPreviewAction, UIViewController) -> Void in
            print("Delete")
        }
        
        return [item1, item2]
    }
    
    // Preview Label - Outlet
    @IBOutlet weak var previewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        previewLabel.text = selectedItem
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
