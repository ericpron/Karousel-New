//
//  GalleryViewController.swift
//  20141021_Carousel
//
//  Created by Eric Eriksson on 10/27/14.
//  Copyright (c) 2014 Eric Eriksson. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var galleryScrollView: UIScrollView!
    @IBOutlet weak var galleryImageStackView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        galleryScrollView.contentSize = CGSize(width: 320, height: galleryImageStackView.frame.size.height)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
