//
//  ViewController.swift
//  IOSWeek11
//
//  Created by admin on 16/06/2020.
//  Copyright © 2020 Fred. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    // Create an Array of Images, the class Images.
    var images: [Image] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Gotta tell the tableview thats its it self.
        // This sets the delegate and datasource from further down, to the tableView
        // You can also do it by dragging on the storyboard.
        // Drag Tableview to the yellow dot on top of the storyboard
        tableView.delegate = self
        tableView.dataSource = self
        
        images = createArray()

    }
    // -> is the return type
    func createArray() -> [Image]{
        // Make an array to store the images in
        var tempImages: [Image] = []
        
        // I use Image Literal here to get the correct Images.

        let image1 = Image(image: #imageLiteral(resourceName: "dog"), title: "Dog")
        let image2 = Image(image: #imageLiteral(resourceName: "house"), title: "House")
        let image3 = Image(image: #imageLiteral(resourceName: "cat"), title: "Cat")
        let image4 = Image(image: UIImage(named: "dog")!, title: "Doggie")
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        tempImages.append(image4)
        
        return tempImages
    }
}
// We can add more to our class with the extensions keyword.
// You can do this to classes that you cant normally change. It can help keep the code clean
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    // How many cells/Rows should the TableView have.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Set each image to the corresponding imgage in the Array.
        let image = images[indexPath.row]   
        // This is for the custom cell. We gave the cell and Identitfier in the Storyboard.
        // We then cast it with as!, to our own class, Tableview Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! TableViewCell
        // We cast cell as our other class, so we can now use the method to set the image.
        cell.setImage(image: image)
        
        return cell
    }
}

