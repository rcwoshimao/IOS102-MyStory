//
//  DetailViewController.swift
//  MyStory
//
//  Created by Rebecca Chen on 2023/2/22.
//

import UIKit

class DetailViewController: UIViewController {
    var page: Page?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let page = page {
            print(page.detailText)
        }
        
        // Do any additional setup after loading the view.
        if let page = page {
            // Configure the dinosaur image and dynamic labels

            detailImage.image = page.image
            detailTextbox.text = page.detailText;
        }
        
        
    }
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailTextbox: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
