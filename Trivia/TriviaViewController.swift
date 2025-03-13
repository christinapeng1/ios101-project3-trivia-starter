//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Christina Peng on 3/13/25.
//

import UIKit

class TriviaViewController: UIViewController {
    private var questions = [TriviaQuestion]() // tracks all the possible forecasts
    private var selectedQuestionIndex = 0

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1Label: UIButton!
    @IBOutlet weak var answer2Label: UIButton!
    @IBOutlet weak var answer3Label: UIButton!
    @IBOutlet weak var answer4Label: UIButton!
    
    @IBAction func didTapButton(_ sender: UIButton) {
        selectedQuestionIndex = min(2, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questions = createQuestions()
        configure(with: questions[selectedQuestionIndex])
    }
    
    private func createQuestions() -> [TriviaQuestion] {
        let question1 = TriviaQuestion(question: "Where is the capital of the United States?", answer1: "Maryland", answer2: "Washington DC", answer3: "New York", answer4: "California")
        let question2 = TriviaQuestion(question: "What is the best fruit? (hint: i don't like apple)", answer1: "strawberry", answer2: "apple pie", answer3: "apple", answer4: "pineapple")
        let question3 = TriviaQuestion(question: "Do you think I can finish my novel?", answer1: "YES", answer2: "maybe, but you will try your best", answer3: "YES YOU BETTER", answer4: "IDUNNO BUT YES")
        
        return [question1, question2, question3]
    }
    
    private func configure(with trivia: TriviaQuestion) {
        questionLabel.text = trivia.question
        answer1Label.setTitle(trivia.answer1, for: .normal)
        answer2Label.setTitle(trivia.answer2, for: .normal)
        answer3Label.setTitle(trivia.answer3, for: .normal)
        answer4Label.setTitle(trivia.answer4, for: .normal)
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
