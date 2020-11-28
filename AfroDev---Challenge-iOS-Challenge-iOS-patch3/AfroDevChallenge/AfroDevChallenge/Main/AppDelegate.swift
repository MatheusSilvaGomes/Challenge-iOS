import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
        let displayMain = UIViewController()
        
        //Set Frame display
        window = UIWindow (frame: UIScreen.main.bounds)
        
        //Set rootViewController 
        window?.rootViewController = UINavigationController (rootViewController: ListProductTableViewController())
        window?.makeKeyAndVisible()
        
        //displayMain.title = "Lista de Produtos"
        displayMain.view.backgroundColor = UIColor.groupTableViewBackground
        
        return true
    }
}

