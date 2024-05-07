//
//  MainTabBarView.swift
//  HistoryLearn
//
//  Created by A LINA on 25/4/24.
//

import UIKit

class MainTabBarView: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()

            // Создаем вкладку "Профиль"
            let profileViewController = ProfileViewController()
            let profileTabBarItem = UITabBarItem(title: "Профиль", image: UIImage(named: "profile_icon"), selectedImage: nil)
            profileViewController.tabBarItem = profileTabBarItem

            // Создаем вкладку "Темы уроков"
            let lessonsViewController = LessonsViewController()
            let lessonsTabBarItem = UITabBarItem(title: "Темы уроков", image: UIImage(named: "lessons_icon"), selectedImage: nil)
            lessonsViewController.tabBarItem = lessonsTabBarItem

            // Создаем вкладку "Тесты"
            let testsViewController = TestsViewController()
            let testsTabBarItem = UITabBarItem(title: "Тесты", image: UIImage(named: "tests_icon"), selectedImage: nil)
            testsViewController.tabBarItem = testsTabBarItem

            // Создаем вкладку "Настройки"
            let settingsViewController = SettingsViewController()
            let settingsTabBarItem = UITabBarItem(title: "Настройки", image: UIImage(named: "settings_icon"), selectedImage: nil)
            settingsViewController.tabBarItem = settingsTabBarItem

            // Добавляем вкладки в таб-бар
            viewControllers = [profileViewController, lessonsViewController, testsViewController, settingsViewController]
        }
    }
