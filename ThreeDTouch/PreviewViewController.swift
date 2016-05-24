//
//  PreviewViewController.swift
//  ThreeDTouch

import UIKit

class PreviewViewController: UIViewController {

    var selectedItem:String!
    
    var previewActions:[UIPreviewActionItem] {
        
        let item1 = UIPreviewAction(title: "Share", style: .Default) { (action:UIPreviewAction, UIViewController) -> Void in
            print("Select")
        }
        
        let item2 = UIPreviewAction(title: "Save", style: .Default) { (UIPreviewAction, UIViewController) -> Void in
            print("Delete")
        }
        
        return [item1, item2]
    }
    
    // Preview Label - Outlet
    @IBOutlet weak var previewLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        previewLabel.text = selectedItem
        
    }

}
