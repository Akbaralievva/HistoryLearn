////
////  SignUpView.swift
////  HistoryLearn
////
////  Created by A LINA on 25/4/24.
////
//
//
//import UIKit
//
//class SignUpView: UIViewController {
//    
//    private lazy var logoImage: UIImageView = {
//        let imageView = UIImageView(image: UIImage(named: "manas"))
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//    
//    private lazy var nameLbl: UILabel = {
//        return MakerView.shared.makeLabel(text: "Name, SurName")
//    }()
//    
//    private lazy var nameTF: UITextField = {
//        return MakerView.shared.makeTextField(
//            placeholder: "",
//            cornerRadius: 14,
//            borderColor: UIColor.systemGray
//        )
//    }()
//    
//    private lazy var emailLbl: UILabel = {
//        return MakerView.shared.makeLabel(text: "Email")
//    }()
//    
//    private lazy var emailTF: UITextField = {
//        return MakerView.shared.makeTextField(
//            placeholder: "",
//            cornerRadius: 14,
//            borderColor: UIColor.systemGray
//        )
//    }()
//    
//    private lazy var passwordLbl = MakerView().makeLabel(text: "Password", size: 14, weight: .bold)
//    
//    
//    private lazy var passwordTF: UITextField = {
//        let textField = MakerView().makeTextField(placeholder: "Enter Password",size: 18, isSecureTextEntry: true)
//        let showHideButton = UIButton(type: .custom)
//        textField.isSecureTextEntry = true
//        let rightView = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
//        let eyeImage = UIImage(systemName: "eye.fill")?.withTintColor(.systemRed, renderingMode: .alwaysOriginal)
//        rightView.setBackgroundImage(eyeImage, for: .normal)
//        textField.isUserInteractionEnabled = true
//        rightView.addTarget(self, action: #selector(hideText), for: .touchUpInside)
//        rightView.tag = 0
//        textField.rightView = rightView
//        textField.rightViewMode = .always
//        textField.tag = 0
//        textField.addTarget(self, action: #selector(enabledButton), for: .touchUpInside)
//        return textField
//    }()
//    
//    
//    
//    private lazy var confirmPasswordLbl = MakerView().makeLabel(text: "Confirm Password",size: 14, weight: .bold, textColor: .black)
//    
//    private lazy var confirmPasswordTF: UITextField = {
//        let textField = MakerView.shared.makeTextField(placeholder: "Confirm Password",size: 18, isSecureTextEntry: true)
//        let showHideButton = UIButton(type: .custom)
//        textField.isSecureTextEntry = true
//        let rightView = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
//        let eyeImage = UIImage(systemName: "eye.fill")?.withTintColor(.systemRed, renderingMode: .alwaysOriginal)
//        rightView.setBackgroundImage(eyeImage, for: .normal)
//        textField.isUserInteractionEnabled = true
//        rightView.addTarget(self, action: #selector(hideText), for: .touchUpInside)
//        rightView.tag = 1
//        textField.rightView = rightView
//        textField.rightViewMode = .always
//        textField.tag = 1
//        textField.addTarget(self, action: #selector(enabledButton), for: .editingChanged)
//        return textField
//    }()
//    
//    private lazy var signUpBtn: UIButton = {
//        let button = MakerView.shared.makeButton(
//            title: "Sign Up",
//            titleColor: .white,
//            titleFont: UIColor(named: "red"),
//            backgroundColor: layer.cornerRadius = 14
//        )
//        button.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
//        button.isEnabled = false
//        return button
//    }()
//    
//    private lazy var signUpLbl: UILabel = {
//        MakerView.shared.makeLabel(text: "Already have an Account?")
//    }()
//    
//    private lazy var signInBtn: UIButton = {
//        let button = MakerView.shared.makeButton(
//            title: "Sign In",
//            titleColor: .systemBlue,
//            backgroundColor: .clear
//        )
//        button.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .systemGray5
//        setUpUI()
//    }
//
//
//    private func setUpUI() {
//        view.addSubview(logoImage)
//        view.addSubview(nameLbl)
//        view.addSubview(nameTF)
//        view.addSubview(emailLbl)
//        view.addSubview(emailTF)
//        view.addSubview(passwordLbl)
//        view.addSubview(passwordTF)
//        view.addSubview(signUpBtn)
//        view.addSubview(signUpLbl)
//        view.addSubview(signInBtn)
//       
//        
//        NSLayoutConstraint.activate([
//            logoImage.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1/4),
//            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
//            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 100),
//            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
//            logoImage.heightAnchor.constraint(equalToConstant: 200)
//        ])
//        
//        NSLayoutConstraint.activate([
//            nameLbl.topAnchor.constraint(equalTo: logoImage.topAnchor, constant: 250),
//            nameLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            nameLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
//            
//        ])
//        
//        NSLayoutConstraint.activate([
//            nameTF.topAnchor.constraint(equalTo: nameLbl.topAnchor, constant: 20),
//            nameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            nameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            nameTF.heightAnchor.constraint(equalToConstant: 45)
//        ])
//        
//
//        NSLayoutConstraint.activate([
//            emailLbl.topAnchor.constraint(equalTo: nameTF.topAnchor, constant: 250),
//            emailLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            emailLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
//            
//        ])
//        
//        NSLayoutConstraint.activate([
//            emailTF.topAnchor.constraint(equalTo: emailLbl.topAnchor, constant: 20),
//            emailTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            emailTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            emailTF.heightAnchor.constraint(equalToConstant: 45)
//        ])
//        
//        
//        NSLayoutConstraint.activate([
//           passwordLbl.topAnchor.constraint(equalTo:  emailTF.topAnchor, constant: 50),
//           passwordLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//           passwordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
//        ])
//        
//        
//        NSLayoutConstraint.activate([
//            passwordTF.topAnchor.constraint(equalTo: passwordLbl.topAnchor, constant: 20),
//            passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            passwordTF.heightAnchor.constraint(equalToConstant: 45)
//        ])
//        
//        NSLayoutConstraint.activate([
//            confirmPasswordLbl.topAnchor.constraint(equalTo:  passwordTF.topAnchor, constant: 50),
//            confirmPasswordLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            confirmPasswordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
//        ])
//        
//        
//        NSLayoutConstraint.activate([
//            confirmPasswordTF.topAnchor.constraint(equalTo: confirmPasswordLbl.topAnchor, constant: 20),
//            confirmPasswordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            confirmPasswordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            confirmPasswordTF.heightAnchor.constraint(equalToConstant: 45)
//        ])
//        
//        
//        NSLayoutConstraint.activate([
//            signInBtn.topAnchor.constraint(equalTo: confirmPasswordTF.topAnchor, constant: 110),
//            signInBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            signInBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            signInBtn.heightAnchor.constraint(equalToConstant: 45)
//        ])
//       
//        
//        
//        NSLayoutConstraint.activate([
//            signUpLbl.topAnchor.constraint(equalTo: signInBtn.topAnchor, constant: 108),
//            signUpLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            signUpLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
//        ])
//        
//        NSLayoutConstraint.activate([
//            signUpBtn.topAnchor.constraint(equalTo: signInBtn.topAnchor, constant: 100),
//            signUpBtn.leadingAnchor.constraint(equalTo: signUpLbl.leadingAnchor, constant: 100),
//            signUpBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
//        ])
//      
//        
//    }
//    
//    @objc func textFieldDidChange(_ textField: UITextField) {
//        guard let password = passwordTF.text, !password.isEmpty else {
//            signInBtn.isEnabled = false
//            signInBtn.backgroundColor = UIColor.darkGray
//            return
//        }
//        signInBtn.isEnabled = true
//        signInBtn.backgroundColor = UIColor.red
//    }
//      
//      @objc func signInBtnTapped() {
//          guard check() else { return }
//          let vc = RegistrationView()
//          navigationController?.pushViewController(vc, animated: true)
//      }
//      
//      @objc func signUpBtnTapped() {
//          let vc = RegistrationView()
//          navigationController?.pushViewController(vc, animated: true)
//      }
//      
//      private func check() -> Bool {
//          guard let password = passwordTF.text, !password.isEmpty else {
//              setIncorrectStyle()
//              passwordLbl.text = "Fill in the password"
//              return false
//          }
//          return true
//      }
//      
//      private func setIncorrectStyle() {
//          passwordLbl.textColor = .red
//          passwordTF.layer.borderWidth = 1
//          passwordTF.layer.borderColor = UIColor.red.cgColor
//      }
//  }
