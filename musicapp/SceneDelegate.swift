//
//  SceneDelegate.swift
//  musicapp
//
//  Created by Merve Nur Nerkis on 2.10.2023.
//

import UIKit
import FirebaseAuth


class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        if UserDefaults.standard.bool(forKey: "isloggedin") == true {
            if FirebaseAuth.Auth.auth().currentUser != nil {
                let storyboard = UIStoryboard(name: "HomeVC", bundle: nil)
                if let homeVC = storyboard.instantiateViewController(withIdentifier: "TabbarVC") as? UITabBarController {
                    window.rootViewController = UINavigationController(rootViewController: homeVC)
                }
            } else {
                let storyboard = UIStoryboard(name: "LoginVC", bundle: nil)
                if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC {
                    window.rootViewController = UINavigationController(rootViewController: loginVC)
                }
            }
            
        } else {
            let storyboard = UIStoryboard(name: "OnboardingVC", bundle: nil)
            if let onboardingVC = storyboard.instantiateViewController(withIdentifier: "OnboardingVC") as? OnboardingVC {
                window.rootViewController = UINavigationController(rootViewController: onboardingVC)
            }
        }

        window.makeKeyAndVisible()
        self.window = window
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

