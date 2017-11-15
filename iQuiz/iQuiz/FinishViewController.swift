//
//  FinishViewController.swift
//  iQuiz
//
//  Created by John Park on 11/11/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import UIKit

class FinishViewController: QuizViewController {
	@IBOutlet weak var conclusion: UILabel!
	@IBOutlet weak var score: UILabel!
	
	var myScore : Double = -1

	@IBAction func back(_ sender: UIButton) {
		self.navigationController!.popToRootViewController(animated: true)
	}
	
	@IBAction func backToQuiz(_ sender: UIBarButtonItem) {
		self.navigationController!.popToRootViewController(animated: true)
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		let currScore = myScore
		score.text = String(currScore)
		if currScore > 0.8 {
			conclusion.text = "Great job! You got a high score!"
		} else {
			conclusion.text = "Hmmm.. might want to study up!"
		}
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
