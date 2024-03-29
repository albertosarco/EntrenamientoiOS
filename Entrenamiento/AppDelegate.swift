//
//  AppDelegate.swift
//  Entrenamiento
//
//  Created by Jesus Alberto Sarco Giannini on 19/07/2019.
//  Copyright © 2019 Smart Builders C.A. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        /********* BEGIN OF STYLE **********/
        
        // change tint color of tool bar items
        UIBarButtonItem.appearance().tintColor = R.color.textColorPrimary
        
        //To change Navigation Bar Background Color
        UINavigationBar.appearance().barTintColor = R.color.colorPrimary
        //To change Back button title & icon color
        UINavigationBar.appearance().tintColor = R.color.textColorPrimary
        //To change Navigation Bar Title Color
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: R.color.textColorPrimary]
        // Status bar white font
        UINavigationBar.appearance().barStyle = UIBarStyle.black
        // To Get transparent navigationBar
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        // To remove black hairline under the Navigationbar
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = false
        
        UIToolbar.appearance().barTintColor = R.color.colorPrimaryLight
        
        // To remove border and background colour on searchBar
        UISearchBar.appearance().isTranslucent = false
        UISearchBar.appearance().backgroundImage = UIImage()
        // To apply border and background colour on searchBar
        UISearchBar.appearance().barTintColor = R.color.title_background_color
        UISearchBar.appearance().layer.borderColor  = R.color.title_background_color.cgColor
        
        UITabBar.appearance().tintColor = R.color.colorAccent
        
        UITableViewCell.appearance().tintColor = R.color.colorAccent
        
        /********* ENDS OF STYLE **********/
        
        ConnectivityChange.sharedInstance.observeReachability()
        
        return true
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

