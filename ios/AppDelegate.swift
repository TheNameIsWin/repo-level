// ios/AppDelegate.swift - Basic iOS App Delegate with test fail
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIViewController()  // Basic VC
        window?.makeKeyAndVisible()

        print("iOS App Launched Successfully!")

        // Intentional FAIL for demo: Uncomment for crash/FAIL
        // let invalid = try? JSONDecoder().decode(Int.self, from: Data("invalid".utf8))!
        // print(invalid)  // Runtime crash

        return true
    }

    // Simple test method - Call in XCTest
    func testAddition() -> Bool {
        let sum = 1 + 1
        return sum == 2  // PASS
        // return sum == 3  // Uncomment for FAIL
    }
}