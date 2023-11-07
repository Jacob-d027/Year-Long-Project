//
//  PostListViewController.swift
//  Year Long Project
//
//  Created by Jacob Davis on 10/5/23.
//

import UIKit

class PostListViewController: UIViewController {
    
    @IBOutlet weak var postTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBSegueAction func showDetailView(_ coder: NSCoder, sender: Any?) -> DetailedPostViewController? {
        guard let selectedRow = postTableView.indexPathForSelectedRow else { return nil }
        let selectedPost = posts[selectedRow.row]
        
        postTableView.deselectRow(at: selectedRow, animated: true)
        return DetailedPostViewController(post: selectedPost, coder: coder)
        }
}

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
}

extension PostListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostTableViewCell else {return UITableViewCell()}
        let post = posts[indexPath.row]
        cell.dateLabel.text = post.date
        cell.descriptionLabel.text = post.title
        cell.commentsLabel.text = String(post.comments.count)
        
        return cell
    }
}
