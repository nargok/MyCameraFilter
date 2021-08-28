//
//  PhotoCollectionViewController.swift
//  MyCameraFilter
//
//  Created by 後閑諒一 on 2021/08/28.
//

import Foundation
import UIKit
import Photos

class PhotoCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populatePhotos()
    }
    
    private func populatePhotos() {
        
        PHPhotoLibrary.requestAuthorization { status in
            
            if status == .authorized {
                // access the photos from photo libraries
            }
            
        }
        
    }
    
}
