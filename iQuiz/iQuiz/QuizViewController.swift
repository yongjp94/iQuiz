//
//  QuizViewController.swift
//  iQuiz
//
//  Created by John Park on 11/11/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

	var questionVault : quizData? = nil
	var currQuestion : quizItem? = nil
	var scoreBundle = scoreData()
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
