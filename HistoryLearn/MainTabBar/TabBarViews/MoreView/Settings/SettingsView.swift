////
////  SettingsView.swift
////  HistoryLearn
////
////  Created by A LINA on 28/4/24.
////
//
//import UIKit
//
//
//protocol settingViewProtocol {
//    func succesDelete()
//    func failureDelete()
//}
//
import UIKit
class SettingsView: UIViewController {
    
//    var controller: SettingControllerProtocol?
//    
//    private var settings: [Settings] = [Settings(titleLabel: "Язык", leftImage: "Image", type: .wothbutton, decpription: "Русский"),
//                        Settings(titleLabel: "Темная тема", leftImage: "moon", type: .withSwitch, decpription: ""),
//                        Settings(titleLabel: "Очистить данные", leftImage: "trash", type: .none, decpription: "")]
//    
//    private lazy var stackTableView: UITableView = {
//        let tableView = UITableView()
//        tableView.rowHeight = 55
//        tableView.layer.cornerRadius = 10
//        tableView.isScrollEnabled = false
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.SetupID)
//        return tableView
//    }()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        controller = SettingController(view: self)
//        view.backgroundColor = .systemBackground
//        setupUIView()
//        updateInterfaceForTheme()
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        if UserDefaults.standard.bool(forKey: "Theme") == false {
//            view.overrideUserInterfaceStyle = .light
//        } else {
//            view.overrideUserInterfaceStyle = .dark
//        }
//        updateLanguage()
//    }
//    
//    private func setupLocalizable() {
//        navigationItem.title = "Settings".localized()
//        let backButton = UIBarButtonItem()
//        backButton.title = "Back".localized()
//        navigationItem.backBarButtonItem = backButton
//    }
//    
//    private func updateLanguage() {
//        settings = [Settings(titleLabel: "Language".localized(), leftImage: "Image", type: .wothbutton, decpription: "Русский".localized()),
//                    Settings(titleLabel: "Dark theme".localized(), leftImage: "moon", type: .withSwitch, decpription: ""),
//                    Settings(titleLabel: "Clear data".localized(), leftImage: "trash", type: .none, decpription: "")]
//        stackTableView.reloadData()
//        setupLocalizable()
//    }
//    
//    private func setupUIView() {
//        view.addSubview(stackTableView)
//        stackTableView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
//            make.horizontalEdges.equalToSuperview().inset(10)
//            make.height.equalTo(165)
//        }
//    }
//    
//    private func updateInterfaceForTheme(isDark: Bool? = nil) {
//        if let isDark = isDark {
//            UserDefaults.standard.set(isDark, forKey: "Theme")
//        }
//        let isDarkMode = UserDefaults.standard.bool(forKey: "Theme")
//        view.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
//        navigationController?.navigationBar.tintColor = isDarkMode ? .white : .black
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: isDarkMode ? UIColor.white : UIColor.black]
//        stackTableView.reloadData()
//    }
//    
//}
//
//extension SettingView: UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return settings.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.SetupID, for: indexPath) as! CustomTableViewCell
//        let isDarkMode = UserDefaults.standard.bool(forKey: "Theme")
//        cell.setup(settings: settings[indexPath.row], isDarkMode: isDarkMode)
//        cell.delegate = self
//        if indexPath.row == 0 {
//            cell.languageButton.isHidden = false
//            cell.buttonSwitch.isHidden = true
//        } else if indexPath.row == 1 {
//            cell.languageButton.isHidden = true
//            cell.buttonSwitch.isHidden = false
//            cell.buttonSwitch.isOn = isDarkMode
//        } else {
//            cell.languageButton.isHidden = true
//            cell.buttonSwitch.isHidden = true
//        }
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 2 {
//            
//            let alert = UIAlertController(title: "Removal".localized(), message: "Do you really want to delete the entire note?".localized(), preferredStyle: .alert)
//            let acceptAction = UIAlertAction(title: "Yes".localized(), style: .destructive) { action in
//                self.controller?.onDeleteNotes()
//            }
//    
//            let actionDecline = UIAlertAction(title: "No".localized(), style: .cancel)
//            
//            alert.addAction(actionDecline)
//            alert.addAction(acceptAction)
//            
//            present(alert, animated: true)
//        } else if indexPath.row == 0 {
//            let languageView = LanguageView()
//            languageView.delegate = self
//            let multipler = 0.28
//            let customDetent = UISheetPresentationController.Detent.custom { context in
//                languageView.view.frame.height * multipler
//            }
//            if let sheet = languageView.sheetPresentationController {
//                sheet.detents = [customDetent, .medium()]
//                sheet.prefersGrabberVisible = true
//            }
//            self.present(languageView, animated: true)
//        }
//    }
//    
//}
//
//extension SettingView: settingViewProtocol {
//    func succesDelete() {
//        navigationController?.popViewController(animated: true)
//    }
//    
//    func failureDelete() {
//        let alert = UIAlertController(title: "Ошибка", message: "Не удалось удалить заметку!", preferredStyle: .alert)
//        let acceptAction = UIAlertAction(title: "ОК", style: .cancel)
//        alert.addAction(acceptAction)
//        present(alert, animated: true)
//    }
//}
//
//extension SettingView: ThemeSwitchDelegate {
//    func themeSwitchDidToggle(isOn: Bool) {
//        UserDefaults.standard.set(isOn, forKey: "Theme")
//        overrideUserInterfaceStyle = isOn ? .dark : .light
//        updateInterfaceForTheme()
//    }
//}
//
//extension SettingView: LanguageViewDelegate {
//    func didLanguageSelect(LanguageType: languageType) {
//        updateLanguage()
//    }
}
