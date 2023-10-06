//
//  PostListViewController.swift
//  Year Long Project
//
//  Created by Jacob Davis on 10/5/23.
//

import UIKit

class PostListViewController: UIViewController {
    
    var posts: [Posts] = [Posts(date: "10/04/23", imageName: "pixel 8 Products.jpeg", postDescription: "Pretty excited to hear about the annoucement for the Google Pixel 8s. Can't wait to see these phones sold in stores!")]

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    @IBSegueAction func prepareForDetailedViewSegue(_ coder: NSCoder) -> DetailedPostViewController? {
        
    }

}

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}

extension PostListViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostTableViewCell else {return UITableViewCell()}
        let post = posts[indexPath.row]
        
        cell.dateLabel.text = post.date
        cell.descriptionLabel.text = post.postDescription
        
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
