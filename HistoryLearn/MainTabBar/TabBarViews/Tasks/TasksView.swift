//
//  TasksTableViewController.swift
//  HistoryLearn
//
//  Created by A LINA on 12/5/24.
//

import UIKit

class TasksView: UITableViewController {
    
    private lazy var titleLbl: UILabel = {
        let label = UILabel()
        label.text = "TASKS"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let themes = [
        "Ата Мекен тарыхын окутууга киришүү",
        "Орто кылымдагы кыргыз мамлекетинин \nтүзүлүшү жана өнүгүшү (VI-XIII кк.)",
        "Кыргызстандын Россия империясынын \nкурамына каратылышы (XIX к.экинчи \nжарымы)",
        "КЫРГЫЗСТАНДА СОВЕТ БИЙЛИГИ.\n 1917-1939 ЖЫЛДАРДА.",
        "КЫРГЫЗСТАН 1941--1990 ЖЖ.",
        "КЫРГЫЗСТАН 1991-2005 ЖЖ.",
        "КЫРГЫЗСТАН 2005-2013-ЖЖ"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(ThemeTableViewCell.self, forCellReuseIdentifier: "themeCell")
        tableView.backgroundColor = UIColor.groupTableViewBackground
        tableView.separatorColor = UIColor.lightGray
        
        setUpUI()
    }
    
    private func setUpUI() {
        // Устанавливаем заголовок таблицы как кастомное представление
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        headerView.addSubview(titleLbl)
        NSLayoutConstraint.activate([
            titleLbl.topAnchor.constraint(equalTo: headerView.topAnchor),
            titleLbl.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            titleLbl.heightAnchor.constraint(equalToConstant: 50)
        ])
        tableView.tableHeaderView = headerView
        
        // Добавляем изображение как кнопку над таббаром
        let imageView = UIImageView(image: UIImage(named: "manas"))
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageView.addGestureRecognizer(tapGesture)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView.widthAnchor.constraint(equalToConstant: 30),
            imageView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc func imageTapped() {
        // Обработка нажатия на изображение
        print("Image tapped")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return themes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "themeCell", for: indexPath) as! ThemeTableViewCell
        
        cell.themeLabel.text = themes[indexPath.row]
        cell.themeLabel.numberOfLines = 0
        cell.buttonAction = {
            print("Next button tapped")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
