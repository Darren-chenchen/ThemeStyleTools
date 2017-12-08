
import UIKit

class TabBarViewController: UITabBarController,CLTabBarDelegate {
    
    var cl_tabbar = CLTabBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        
        self.setupTabBar()
    }

    // 移除系统自带的tabbar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.backgroundColor = UIColor.white
        
        self.removeSystemTabar()
    }
    
    func removeSystemTabar() {
        for child in self.tabBar.subviews {
            if child.isKind(of: UIControl.self) {
                child.isHidden = true  // 适配ios11
            }
        }
    }
    
    // 自定义tabbar覆盖系统的tabbar
    func setupTabBar(){
        
        cl_tabbar.frame = CGRect(x: 0, y: 0, width: KScreenWidth, height: 49)
        self.tabBar.addSubview(cl_tabbar)
        cl_tabbar.delegate = self
    }

    
    func initView() {
        self.setupChildViewController(viewController: TestViewController.init(nibName: "TestViewController", bundle: nil), image: UIImage(named:"defaultTheme_d1"), selectedImage: UIImage(named:"defaultTheme_s1"), title: "主题")
        
        self.setupChildViewController(viewController: Test1ViewController.init(nibName: "Test1ViewController", bundle: nil), image:  UIImage(named:"defaultTheme_d2"), selectedImage: UIImage(named:"defaultTheme_s2"), title: "测试1")
        
        self.setupChildViewController(viewController: Test2ViewController.init(nibName: "Test2ViewController", bundle: nil), image:  UIImage(named:"defaultTheme_d3"), selectedImage:UIImage(named:"defaultTheme_s3"), title: "测试2")
        
        self.setupChildViewController(viewController: Test3ViewController.init(nibName: "Test3ViewController", bundle: nil), image:  UIImage(named:"defaultTheme_d4"), selectedImage: UIImage(named:"defaultTheme_s4"), title: "测试3")
    }
    
    
    func setupChildViewController(viewController: UIViewController, image: UIImage!, selectedImage: UIImage!, title: NSString) {
        
        let navVC = BaseNavViewController.init(rootViewController: viewController)
        
        // 让图片显示图片原始颜色  “UIImage” 后+ “.imageWithRenderingMode(.AlwaysOriginal)”
        navVC.tabBarItem = UITabBarItem.init(title: title as String, image: image, selectedImage: selectedImage.withRenderingMode(.alwaysOriginal))
        
        navVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.black], for: .normal)
        navVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.red], for: .selected)
        
        self.addChildViewController(navVC)
        
        cl_tabbar.addCustomButtonWithitem(navVC.tabBarItem)
    }
    
    // MARK: - CLTabBarDelegate
    func setupSelectedTabbar(_ clTabbar: CLTabBar, fromIndex: NSInteger, toIndex: NSInteger) {
        self.selectedIndex = toIndex
    }
    
    deinit {
        CLNotificationCenter.removeObserver(self)
    }
}



