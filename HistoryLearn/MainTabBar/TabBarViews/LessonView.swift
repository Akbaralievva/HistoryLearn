//
//  TableViewController.swift
//  HistoryLearn
//
//  Created by A LINA on 5/5/24.
//

import UIKit

class LessonsViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
        var Topics: [Topic] = []
        private let cellID = "cell"

        
        private lazy var myNotLbl: UILabel = MakerView.shared.makeLabel(text: "Notification",
                                                                        size: 24,
                                                                        weight: .bold)
        
       
        
        
        private let myTableView: UITableView = {
        let tableView = UITableView()
              tableView.translatesAutoresizingMaskIntoConstraints = false
              return tableView
           }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupUI()
            
        }
        
        private func setupUI() {
            view.backgroundColor = .white
            upperPardScreen()
            setupData()
        }
        
        private func upperPardScreen() {
            view.addSubview(myNotLbl)
            
            
           
            
            
            NSLayoutConstraint.activate([
                myNotLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
                myNotLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
                myNotLbl.heightAnchor.constraint(equalToConstant: 34),
                myNotLbl.widthAnchor.constraint(equalToConstant: 294)
            ])
            
           
        }
        
    
        
        private func setupData() {
            Topics = [
                Topic(text: "Ата Мекен тарыхын окутууга киришүү", image: "continue"),
                Topic(text: "Орто кылымдагы кыргыз мамлекетинин түзүлүшү жана өнүгүшү (VI-XIII кк.)", image: "continue"),
                Topic(text: "Кыргызстандын Россия империясынын курамына каратылышы (XIX к.экинчи жарымы)", image: "continue"),
                Topic(text: "КЫРГЫЗСТАНДА СОВЕТ БИЙЛИГИ. 1917-1939 ЖЫЛДАРДА", image: "continue"),
                Topic(text: "КЫРГЫЗСТАН 1941--1990 ЖЖ.", image: "continue"),
                Topic(text: "КЫРГЫЗСТАН 1991-2005 ЖЖ.", image: "continue"),
                Topic(text: "КЫРГЫЗСТАН 2005-2013-ЖЖ.", image: "continue"),
               
        
          ]
            myTableView.reloadData()
        }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            7
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard indexPath.row < Topics.count else {
                return UITableViewCell()
            }
            let topic = Topics[indexPath.row]

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
            cell.configure(with: topic)
            return cell
        }
        
        @objc func secondTapped(_ sender :UIButton) {
            let vc = TestsViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        
       
       
        
    }
