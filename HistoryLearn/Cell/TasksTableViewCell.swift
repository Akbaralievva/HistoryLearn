//
//  TasksTableViewCell.swift
//  HistoryLearn
//
//  Created by A LINA on 12/5/24.
//

import UIKit

class TasksTableViewCell: UITableViewCell {
    
    let taskLabel = UILabel()
    let actionButton = UIButton(type: .system)
    
    var buttonAction: (() -> Void)?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        taskLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(taskLabel)
        NSLayoutConstraint.activate([
            taskLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            taskLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
        
        if #available(iOS 13.0, *) {
            actionButton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        } else {
            
            actionButton.setTitle(">", for: .normal)
        }
        
        actionButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(actionButton)
        NSLayoutConstraint.activate([
            actionButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            actionButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    
    
     backgroundColor = .white
    layer.cornerRadius = 10
    layer.borderWidth = 1
    layer.borderColor = UIColor.lightGray.cgColor
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.5
    layer.shadowOffset = CGSize(width: 0, height: 2)
    layer.shadowRadius = 2
    
    
}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonTapped() {
        buttonAction?()
    }
}

