import UIKit
import Turbolinks

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var navigationController = UINavigationController()
    var session = Session()
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        window?.rootViewController = navigationController
        startApplication()
    }
    
    func startApplication() {
        visit(URL: URL(string: "https://networth-tracker.herokuapp.com/")!)
    }
    
    func visit(URL: URL) {
        let visitableViewController = VisitableViewController(url: URL)
        navigationController.pushViewController(visitableViewController, animated: true)
        session.visit(visitableViewController)
    }
}

