//
//  Task1.swift
//  HistoryLearn
//
//  Created by A LINA on 12/5/24.
//


import UIKit

class First_Quiz: UIViewController {
    
    // Массив вопросов
    let questions: [Question] = Question.testQuestions
    
    // Текущий индекс вопроса
    var currentQuestionIndex = 0
    
    // UI элементы
    private lazy var  questionLabel = MakerView.shared.makeLabel(size: 24, weight: .bold, textColor: .black, numberOfLines: 0)
    
    
    private lazy  var  prevButton = MakerView.shared.makeButton(title: "Prev", titleColor: .blue, titleFont: UIFont.systemFont(ofSize: 14), cornerRadius: 12, borderWidth: 1, isEnable: true, translatesAutoresizingMaskIntoConstraints: false)
   
    private lazy  var  nextButton = MakerView.shared.makeButton(title: "Next", titleColor: .blue, titleFont: UIFont.systemFont(ofSize: 14), cornerRadius: 12, borderWidth: 1, isEnable: true, translatesAutoresizingMaskIntoConstraints: false)
    
    private lazy  var  finishButton = MakerView.shared.makeButton(title: "Finish", titleColor: .red, titleFont: UIFont.systemFont(ofSize: 14), cornerRadius: 12, borderWidth: 1, isEnable: true, translatesAutoresizingMaskIntoConstraints: false)
    
    
    
   
  
  
    
    var optionButtons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
        setupUI()
        loadQuestion()
    }
    
    
    
    func setupUI() {
        view.addSubview(questionLabel)
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        // Создаем кнопки для вариантов ответов
        for i in 0..<4 {
            let button = UIButton()
            button.setTitleColor(.blue, for: .normal)
            button.layer.cornerRadius = 12
            button.layer.borderWidth = 1
            button.backgroundColor = .white
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(optionSelected(_:)), for: .touchUpInside)
            view.addSubview(button)
            
            NSLayoutConstraint.activate([
                button.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: CGFloat(50 + i * 70)),
                button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                button.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            optionButtons.append(button)
        }

       
        view.addSubview(prevButton)
        prevButton.addTarget(self, action: #selector(prevQuestion), for: .touchUpInside)
        NSLayoutConstraint.activate([
            prevButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            prevButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            prevButton.widthAnchor.constraint(equalToConstant: 80),
            prevButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
        
       
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(nextQuestion), for: .touchUpInside)
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nextButton.widthAnchor.constraint(equalToConstant: 80),
            nextButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        view.addSubview(finishButton)
        finishButton.addTarget(self, action: #selector(finishQuiz), for: .touchUpInside)
        NSLayoutConstraint.activate([
            finishButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            finishButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finishButton.widthAnchor.constraint(equalToConstant: 80),
            finishButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func loadQuestion() {
        let currentQuestion = questions[currentQuestionIndex]
        questionLabel.text = currentQuestion.text
        
        for i in 0..<currentQuestion.options.count {
            optionButtons[i].setTitle(currentQuestion.options[i], for: .normal)
        }
    }
    
    @objc func optionSelected(_ sender: UIButton) {
        // Handle option selected
        guard let selectedIndex = optionButtons.firstIndex(of: sender) else { return }
        let selectedOption = questions[currentQuestionIndex].options[selectedIndex]
        print("Selected option: \(selectedOption)")
    }
    
    @objc func prevQuestion() {
        if currentQuestionIndex > 0 {
            currentQuestionIndex -= 1
            loadQuestion()
        }
    }
    
    @objc func nextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            loadQuestion()
        }
    }
    
    @objc func finishQuiz() {
        
        print("Quiz finished!")
    }
}

