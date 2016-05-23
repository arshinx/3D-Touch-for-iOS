//
//  MasterViewController+UIViewControllerPreviewing.swift
//  ThreeDTouch


import UIKit

extension MasterViewController: UIViewControllerPreviewingDelegate {
    
    
    
    // PEEK
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        guard let indexPath  = menuTable.indexPathForRowAtPoint(location),
                        cell = menuTable.cellForRowAtIndexPath(indexPath)
            else { return nil }
        
        guard let previewVC = storyboard?.instantiateViewControllerWithIdentifier("PreviewVC") as? PreviewViewController
            else { return nil }
        
        previewVC.selectedItem = data[indexPath.row]
        
        // Prepare POP
        quickActionString = data[indexPath.row] + values[indexPath.row]
        
        previewVC.preferredContentSize = CGSize(width: 0, height: 320)
        previewingContext.sourceRect = cell.frame
        
        return previewVC
    }
    
    // POP
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
 
        if let itemsVC = storyboard?.instantiateViewControllerWithIdentifier("addItemsVC") as? AddStuffViewController {
            
            itemsVC.detailInfo = quickActionString
            
            showViewController(itemsVC, sender: self)
            
        }
        
        
    }
}
