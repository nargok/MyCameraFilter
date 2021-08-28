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
    
    private var images =  [PHAsset]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populatePhotos()
    }
    
    private func populatePhotos() {
        
        PHPhotoLibrary.requestAuthorization { [ weak self ] status in
            
            if status == .authorized {
                // access the photos from photo libraries
                let assets = PHAsset.fetchAssets(with: PHAssetMediaType.image, options: nil)
                
                assets.enumerateObjects { (object, count, stop) in
                    self?.images.append(object)
                }
                
                self?.images.reverse()
                print(self?.images)
            }
            
        }
        
    }
    
}
