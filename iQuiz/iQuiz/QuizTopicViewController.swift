//
//  QuizTopicViewController.swift
//  iQuiz
//
//  Created by Yongjun Park on 11/7/2017.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import UIKit

class QuizTopicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var quizTopics: [String] = ["Mathematics", "Marvel Super Heroes", "Science"]
    var quizTopicDescriptions: [String] =
        ["The study of topics such as quanitity, structure, space, and change.",
         "Comic book superheroes: Spiderman, Ironman, The Hulk and more.",
         "Science is curiosity in thoughtful action about the world and how it behaves."]
    var quizTopicIcons: [String] = ["mathIcon", "marvelIcon", "scienceIcon"]
    
    let cellIdentifier = "QuizTopicCellIdentifier"
    
    @IBOutlet weak var QuizTopicTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuizTopicTableView.delegate = self
        QuizTopicTableView.dataSource = self
    }
    
    
    @IBAction func settingsButton(_ sender: Any) {
        let settingsAlert = UIAlertController(title: "Settings Alert Message", message: "Settings go here", preferredStyle: UIAlertControllerStyle.alert)
        settingsAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(settingsAlert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ QuizTopicTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quizTopics.count
    }
    
    
    func tableView(_ QuizTopicTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = QuizTopicTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let index = indexPath.row
        
        // set title
        cell.textLabel?.text = quizTopics[index]
        
        
        // set description
        cell.detailTextLabel?.text = quizTopicDescriptions[index]
        cell.detailTextLabel?.numberOfLines = 0 // allows for wrap text
        cell.detailTextLabel?.lineBreakMode = .byWordWrapping // allows for wrap text
        
        // set image
        cell.imageView?.image = UIImage.init(named: quizTopicIcons[index])
        
        return cell
    }

}
