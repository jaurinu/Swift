//
//  ViewController.swift
//  IMAGEWEEK9
//
//  Created by Apple Device 9 on 11/23/19.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UIImageView: UITextView!
    @IBOutlet weak var UIImageText: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    explanationTextView.text = ""
    let photoInfoController = PhotoInfoNetController()
    
        photoInfoController.fetchPhotoInfo { (PhotoInfo) in
            guard let photoInfo = photoInfo else {return}
       
        DispatchQueue.main.async {
            self.navigationItem.title = photoInfo.title
            self.explanationTextView.text = photoInfo.explanation
        }
      
        }
        
    }


}

