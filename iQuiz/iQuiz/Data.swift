//
//  Data.swift
//  iQuiz
//
//  Created by John Park on 11/11/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import Foundation

struct QuizItem {
	var question : String = ""
	var choices : [String] = [String]()
	var answer : String = ""
}

class QuizData {
	var arr = [QuizItem]()
	var count = -1
	var outOfQuestion : Bool = false
	
	func populate(id : Int) {
		count = -1
		outOfQuestion = false
		for index : Int in 1...4 {
			var item = QuizItem()
			item.question = "Question \(index)"
			item.choices = ["A", "B", "C", "D"]
			item.answer = "A"
//			item.answer = item.choices[Int(arc4random_uniform(4))]
			arr.append(item)
		}
	}
	
	func getQuestion() -> QuizItem? {
		count += 1
		if count == arr.count - 1 {
			outOfQuestion = true
		}
		return arr[count]
	}
}

class scoreData {
	fileprivate var total : Int = 0
	fileprivate var correct : Int = 0
	var score : Double { get { return Double(correct) / Double(total)}}
	
	func updateScore(correct flag : Bool) {
		total += 1
		if flag {
			correct += 1
		}
	}
}
