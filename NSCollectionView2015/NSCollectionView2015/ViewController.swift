//
//  ViewController.swift
//  NSCollectionView2015
//
//  Created by Harry Ng on 10/1/2016.
//  Copyright © 2016 STAY REAL. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.backgroundColors = [NSColor.grayColor()]
        
//        let layout = NSCollectionViewGridLayout()
//        layout.maximumNumberOfColumns = 1
//        layout.maximumNumberOfRows = 5
//        layout.minimumItemSize = NSSize(width: 0, height: 50)
        
//        collectionView.collectionViewLayout = layout
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    
    func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItemWithIdentifier("ImageCollectionViewItem", forIndexPath: indexPath)
        return item
    }
}

extension ViewController: NSCollectionViewDelegate {
    func collectionView(collectionView: NSCollectionView, didSelectItemsAtIndexPaths indexPaths: Set<NSIndexPath>) {
        print(indexPaths)
    }
}