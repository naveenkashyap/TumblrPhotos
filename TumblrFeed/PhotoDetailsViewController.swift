//
//  PhotoDetailsViewController.swift
//  TumblrFeed
//
//  Created by Naveen Kashyap on 1/25/17.
//  Copyright © 2017 Naveen Kashyap. All rights reserved.
//

import UIKit
import AFNetworking

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    var post: NSDictionary!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let photos = post.value(forKeyPath: "photos") as? [NSDictionary] {
            let imageURLString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageURL = URL(string: imageURLString!) {
                detailImage.setImageWith(imageURL)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
