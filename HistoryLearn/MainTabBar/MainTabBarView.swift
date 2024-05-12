import UIKit


class MainTabBarView: UITabBarController {
    
//    // Создаем представление для верхнего таббара
//       let topTabBar: UIView = {
//           let view = UIView()
//           view.backgroundColor = .systemGray5 // Цвет фона таббара
//           view.translatesAutoresizingMaskIntoConstraints = false
//           return view
//       }()
//       
//       // Создаем лейбл для текста в таббаре
//       let titleLabel: UILabel = {
//           let label = UILabel()
//           label.text = "Your Title"
//           label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
//           label.textColor = .black
//           label.textAlignment = .center
//           label.translatesAutoresizingMaskIntoConstraints = false
//           return label
//       }()
//       
//       // Создаем изображение для таббара
//       let imageView: UIImageView = {
//           let imageView = UIImageView()
//           imageView.image = UIImage(named: "manas")
//           imageView.contentMode = .scaleAspectFit
//           imageView.translatesAutoresizingMaskIntoConstraints = false
//           return imageView
//       }()
//       
//    
//    private func setUpUI(){
//        
//        
//        // Добавляем верхний таббар на экран
//        view.addSubview(topTabBar)
//        NSLayoutConstraint.activate([
//            topTabBar.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
//            topTabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            topTabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            topTabBar.heightAnchor.constraint(equalToConstant: 80) // Высота таббара
//        ])
//        
//        // Добавляем текст и изображение в верхний таббар
//        topTabBar.addSubview(titleLabel)
//        topTabBar.addSubview(imageView)
//        
//        // Устанавливаем расположение и размеры элементов в таббаре
//        NSLayoutConstraint.activate([
//            titleLabel.centerXAnchor.constraint(equalTo: topTabBar.centerXAnchor),
//            titleLabel.centerYAnchor.constraint(equalTo: topTabBar.centerYAnchor),
//            imageView.trailingAnchor.constraint(equalTo: topTabBar.trailingAnchor, constant: -20),
//            imageView.centerYAnchor.constraint(equalTo: topTabBar.centerYAnchor),
//            imageView.widthAnchor.constraint(equalToConstant: 30), // Ширина изображения
//            imageView.heightAnchor.constraint(equalToConstant: 30) // Высота изображения
//        ])
//        
//    }
//    
//    
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        let homeViewController = HomeViewController()
        let homeTabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home_icon"), tag: 0) 
        homeViewController.tabBarItem = homeTabBarItem
        
        let lessonsViewController = LessonsView()
        let lessonsTabBarItem = UITabBarItem(title: "Lessons", image: UIImage(named: "lessons_icon"), tag: 1)
        lessonsViewController.tabBarItem = lessonsTabBarItem
        
        let testsViewController = TasksView()
        let testsTabBarItem = UITabBarItem(title: "Tasks", image: UIImage(named: "tasks_icon"), tag: 2)
        testsViewController.tabBarItem = testsTabBarItem
        
        let moreViewController = MoreViewController()
        let moreTabBarItem = UITabBarItem(title: "More", image: UIImage(named: "more_icon"), tag: 3)
        moreViewController.tabBarItem = moreTabBarItem
        
        let viewControllers = [homeViewController, lessonsViewController, testsViewController, moreViewController]
        self.viewControllers = viewControllers
        
       // setUpUI()
    }
}
