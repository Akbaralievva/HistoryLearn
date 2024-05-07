//
//  Profile.swift
//  HistoryLearn
//
//  Created by A LINA on 25/4/24.
//
import UIKit

class MoreViewController: UIViewController {
    
    let panelWidth: CGFloat = 230
    let panelBackgroundColor = UIColor.systemGray4
    
    var panelLeadingConstraint: NSLayoutConstraint!
    var isPanelVisible = false
    
    private lazy var logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "manas"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    private lazy var settingsBtn = MakerView.shared.makeButton(title: "Settings", titleColor: .white, titleFont: .systemFont(ofSize: 16), backgroundColor: UIColor(named: "red"), cornerRadius: 12, borderWidth: 0, isEnable: true, translatesAutoresizingMaskIntoConstraints: false)
    
    private lazy var profileBtn = MakerView.shared.makeButton(
        title: "Profile",
        titleColor: .white,
        titleFont: .systemFont(ofSize: 16),
        backgroundColor: UIColor(named: "red"), cornerRadius: 12,
        borderWidth: 0,
        isEnable: true,
        translatesAutoresizingMaskIntoConstraints: false
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPanel()
        setUpUI()
    }
    
    func setupPanel() {
        let panelView = UIView()
        panelView.backgroundColor = panelBackgroundColor
        panelView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(panelView)
        
        panelLeadingConstraint = panelView.leadingAnchor.constraint(equalTo: view.trailingAnchor)
        NSLayoutConstraint.activate([
            panelView.topAnchor.constraint(equalTo: view.topAnchor),
            panelView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            panelLeadingConstraint,
            panelView.widthAnchor.constraint(equalToConstant: panelWidth)
        ])
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    private func setUpUI() {
        guard let panelView = view.subviews.first else {
            return
        }
        
        panelView.addSubview(settingsBtn)
        panelView.addSubview(profileBtn)
        panelView.addSubview(logoImage)
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: panelView.topAnchor, constant: 50),
            logoImage.leadingAnchor.constraint(equalTo: panelView.leadingAnchor, constant: 20),
            logoImage.trailingAnchor.constraint(equalTo: panelView.trailingAnchor, constant: -20),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            
            settingsBtn.topAnchor.constraint(equalTo: logoImage.topAnchor, constant: 250),
            settingsBtn.leadingAnchor.constraint(equalTo: panelView.leadingAnchor, constant: 20),
            settingsBtn.trailingAnchor.constraint(equalTo: panelView.trailingAnchor, constant: -20),
            settingsBtn.heightAnchor.constraint(equalToConstant: 40),
            
            profileBtn.topAnchor.constraint(equalTo: settingsBtn.bottomAnchor, constant: 40),
            profileBtn.leadingAnchor.constraint(equalTo: panelView.leadingAnchor, constant: 20),
            profileBtn.trailingAnchor.constraint(equalTo: panelView.trailingAnchor, constant: -20),
            profileBtn.heightAnchor.constraint(equalToConstant: 40),
            
            
            
            
            
        ])
    }
    
    @objc func handleTapGesture(_ gesture: UITapGestureRecognizer) {
        togglePanel()
    }
    
    func togglePanel() {
        isPanelVisible.toggle()
        let newLeadingValue = isPanelVisible ? -panelWidth : 0
        
        UIView.animate(withDuration: 0.3) {
            self.panelLeadingConstraint.constant = newLeadingValue
            self.view.layoutIfNeeded()
        }
    }
}
