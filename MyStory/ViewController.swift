//
//  ViewController.swift
//  MyStory
//
//  Created by Rebecca Chen on 2023/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    let intro = Page(image: UIImage(named: "introImage")!, detailText: "Hello! My name is Rebecca, and I am a freshman studying in UCSD. I am a huge cat person, and my current favorite subject is astro physics!");
    let contact = Page(image: UIImage(named: "contactImage")!, detailText: "You can contact me via email: example@ucsd.edu, or my instagram: @exampleUsername !");
    let expertise = Page(image: UIImage(named: "expertiseImage")!, detailText: "I have been making art for six years. I started programming in my junior year, and have made several AI-related project since. (All artsworks here are created by me!)");
    
    // Array for storing Dinosaurs
    var pages: [Page] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("App is loaded")
        
        // Store Dinosaur models
        pages = [intro, contact, expertise]

        
    }
    

    @IBAction func didTapLink(_ sender: UITapGestureRecognizer) {
        print("This button works")
         if let tappedView = sender.view {
             performSegue(withIdentifier: "detailSegue", sender: tappedView)
         }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("THIS WORKS")

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.page = pages[0]
            } else if tappedView.tag == 1 {
                detailViewController.page = pages[1]
            } else if tappedView.tag == 2 {
                detailViewController.page = pages[2]
            } else {
                print("no Page was tapped, please check your selection.")
            }
        }
    }
    
    @IBOutlet weak var stack: UIStackView!
   
    
    
    
    
}
    

