//
//  ViewController.swift
//  MyCameraFilter
//
//  Created by 後閑諒一 on 2021/08/28.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
// todo これでうまく行かない理由を後で調べる
//        guard let navC = segue.destination as? UINavigationController,
//              let _ = navC.viewControllers.first as? PhotoCollectionViewController else {
//                        fatalError("Segue destination is not found")
//
//                }
        
//              let photoCVC = navC.viewControllers.first as? PhotoCollectionViewController else {
//            fatalError("Segue destination is not found")
//        }

        let photoCVC = segue.destination as? PhotoCollectionViewController // todo 一時的に直接viewContollerを取得
        photoCVC?.selectedPhoto.subscribe(onNext: {[weak self] photo in
            self?.photoImageView.image = photo
        }).disposed(by: disposeBag)
    }


}

