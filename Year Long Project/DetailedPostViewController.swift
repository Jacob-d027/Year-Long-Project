//
//  DetailedPostViewController.swift
//  Year Long Project
//
//  Created by Jacob Davis on 10/6/23.
//

import UIKit

class DetailedPostViewController: UIViewController {

    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postDescriptionLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
    var post: Posts?
    
    init?(post: Posts, coder: NSCoder) {
        super.init(coder: coder)
        self.post = post
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
        // Do any additional setup after loading the view.
    }
 
    func updateView() {
        if let image = UIImage(named: post?.imageName ?? "") {
            imageDisplay.image = image
        }
        dateLabel.text = post?.date
        postDescriptionLabel.text = post?.bodyText
        commentsLabel.text = post?.comments
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
