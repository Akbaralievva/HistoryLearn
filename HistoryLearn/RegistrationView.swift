//
//  ViewController.swift
//  HistoryLearn
//
//  Created by A LINA on 18/4/24.
//
import UIKit

class RegistrationView: UIViewController {
    
    private lazy var logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "manas"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var numaraLbl: UILabel = {
        return MakerView.shared.makeLabel(text: "Your Stud.Number")
    }()
    
    private lazy var numaraTF: UITextField = {
        return MakerView.shared.makeTextField(
            placeholder: "Ogrenci numara",
            cornerRadius: 14,
            borderColor: UIColor.systemGray
        )
    }()
    
    private lazy var passwordLbl: UILabel = {
        return MakerView.shared.makeLabel(text: "Password")
    }()
    
    private lazy var passwordTF: UITextField = {
        let tf = MakerView.shared.makeTextField(
            placeholder: "Password",
            cornerRadius: 14,
            borderColor: UIColor.systemGray
        )
        tf.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        return tf
    }()
    
    private lazy var signInBtn: UIButton = {
        let button = MakerView.shared.makeButton(
            title: "SignIn",
            titleColor: .white,
            titleFont: UIFont.systemFont(ofSize: 14, weight: .regular),
            backgroundColor: UIColor(named: "red"),
            cornerRadius: 12,
            borderWidth: 0,
            isEnable: false,
            translatesAutoresizingMaskIntoConstraints: false
        )
        
        button.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    private lazy var signUpLbl: UILabel = {
        return MakerView.shared.makeLabel(text: "Already have an Account?")
    }()
    
    private lazy var signUpBtn: UIButton = {
        let button = MakerView.shared.makeButton(title: "SignUp", titleColor: .tintColor, titleFont: UIFont.systemFont(ofSize: 14),cornerRadius: 14, borderWidth: 0, isEnable: true, translatesAutoresizingMaskIntoConstraints: false)
        button.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        setUpUI()
    }
    
    
    private func setUpUI() {
        view.addSubview(logoImage)
        view.addSubview(numaraLbl)
        view.addSubview(numaraTF)
        
        view.addSubview(passwordLbl)
        view.addSubview(passwordTF)
        view.addSubview(signInBtn)
        view.addSubview(signUpLbl)
        view.addSubview(signUpBtn)
        
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1/4),
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 100),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            logoImage.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            numaraLbl.topAnchor.constraint(equalTo: logoImage.topAnchor, constant: 250),
            numaraLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            numaraLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
            
        ])
        
        NSLayoutConstraint.activate([
            numaraTF.topAnchor.constraint(equalTo: numaraLbl.topAnchor, constant: 20),
            numaraTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            numaraTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            numaraTF.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        
        
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo:  numaraTF.topAnchor, constant: 50),
            passwordLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
        
        
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: passwordLbl.topAnchor, constant: 20),
            passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTF.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        
        NSLayoutConstraint.activate([
            signInBtn.topAnchor.constraint(equalTo: passwordTF.topAnchor, constant: 110),
            signInBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signInBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signInBtn.heightAnchor.constraint(equalToConstant: 45)
        ])
        // signInBtn.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            signUpLbl.topAnchor.constraint(equalTo: signInBtn.topAnchor, constant: 108),
            signUpLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
        
        NSLayoutConstraint.activate([
            signUpBtn.topAnchor.constraint(equalTo: signInBtn.topAnchor, constant: 100),
            signUpBtn.leadingAnchor.constraint(equalTo: signUpLbl.leadingAnchor, constant: 100),
            signUpBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        // signUpBtn.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        guard let password = passwordTF.text, !password.isEmpty else {
            signInBtn.isEnabled = false
            signInBtn.backgroundColor = UIColor.darkGray
            return
        }
        signInBtn.isEnabled = true
        signInBtn.backgroundColor = UIColor.red
    }
    
    @objc func signInBtnTapped() {
        guard check() else { return }
                  let vc = MainTabBarView()
                  navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func signUpBtnTapped() {
                  let vc = MainTabBarView()
                  navigationController?.pushViewController(vc, animated: true)
    }
    
    private func check() -> Bool {
        guard let password = passwordTF.text, !password.isEmpty else {
            setIncorrectStyle()
            passwordLbl.text = "Fill in the password"
            return false
        }
        return true
    }
    
    private func setIncorrectStyle() {
        passwordLbl.textColor = .red
        passwordTF.layer.borderWidth = 1
        passwordTF.layer.borderColor = UIColor.red.cgColor
    }
}

