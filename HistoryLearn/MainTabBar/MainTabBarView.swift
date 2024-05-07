import UIKit


class MainTabBarView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        let homeViewController = HomeViewController()
        let homeTabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home_icon"), tag: 0) 
        homeViewController.tabBarItem = homeTabBarItem
        
        let lessonsViewController = LessonsViewController()
        let lessonsTabBarItem = UITabBarItem(title: "Lessons", image: UIImage(named: "lessons_icon"), tag: 1)
        lessonsViewController.tabBarItem = lessonsTabBarItem
        
        let testsViewController = TestsViewController()
        let testsTabBarItem = UITabBarItem(title: "Tasks", image: UIImage(named: "tasks_icon"), tag: 2)
        testsViewController.tabBarItem = testsTabBarItem
        
        let moreViewController = MoreViewController()
        let moreTabBarItem = UITabBarItem(title: "More", image: UIImage(named: "more_icon"), tag: 3)
        moreViewController.tabBarItem = moreTabBarItem
        
        let viewControllers = [homeViewController, lessonsViewController, testsViewController, moreViewController]
        self.viewControllers = viewControllers
    }
}
