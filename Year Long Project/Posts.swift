//
//  Posts.swift
//  Year Long Project
//
//  Created by Jacob Davis on 10/5/23.
//

import Foundation

struct Posts {
    var date: String
    var imageName: String
    var bodyText: String
    var title: String
    var user: String
    var comments: String
    // Instead change comments to it's own type for a post and also create a User model to "store" user info and properties
}

var posts: [Posts] = [
    Posts(
        date: "10/04/23",
        imageName: "pixel 8 Products.jpeg",
        bodyText: "Pretty excited to hear about the annoucement for the Google Pixel 8s. Can't wait to see these phones sold in stores!",
        title: "Google Pixel 8",
        user: "TechNerd20",
        comments: "User1 - I too am excited for this launch!"
    ),
    Posts(
        date: "10/04/23",
        imageName: "pixel 8 Products.jpeg",
        bodyText: "Pretty excited to hear about the annoucement for the Google Pixel 8s. Can't wait to see these phones sold in stores!",
        title: "Google Pixel 8",
        user: "TechNerd20",
        comments: "User1 - I too am excited for this launch!"
    ),
    Posts(
        date: "10/04/23",
        imageName: "pixel 8 Products.jpeg",
        bodyText: "Pretty excited to hear about the annoucement for the Google Pixel 8s. Can't wait to see these phones sold in stores!",
        title: "Google Pixel 8",
        user: "TechNerd20",
        comments: "User1 - I too am excited for this launch!"
    ),
    Posts(
        date: "10/04/23",
        imageName: "pixel 8 Products.jpeg",
        bodyText: "Pretty excited to hear about the annoucement for the Google Pixel 8s. Can't wait to see these phones sold in stores!",
        title: "Google Pixel 8",
        user: "TechNerd20",
        comments: "User1 - I too am excited for this launch!"
    ),
    Posts(
        date: "10/04/23",
        imageName: "pixel 8 Products.jpeg",
        bodyText: "Pretty excited to hear about the annoucement for the Google Pixel 8s. Can't wait to see these phones sold in stores!",
        title: "Google Pixel 8",
        user: "TechNerd20",
        comments: "User1 - I too am excited for this launch!"
    )
]
