//
//  appDelegate.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import UserNotifications
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Request notification permission
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted {
                DispatchQueue.main.async {
                    application.registerForRemoteNotifications()
                }
                print("Notification permission granted.")
            } else {
                print("Notification permission denied.")
            }
        }
        
        return true
    }

    // Handle successful registration for remote notifications
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // Convert token to string
        let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
        let token = tokenParts.joined()
        print("Device Token: \(token)")
        
        // TODO: Send the token to your server if needed
    }

    // Handle failure to register for remote notifications
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Failed to register for remote notifications: \(error)")
    }

    // Handle receipt of a remote notification
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        // Handle the notification
        print("Received remote notification: \(userInfo)")
        completionHandler(.newData)
    }
}
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("App became active")
        // Restart any tasks that were paused (or not yet started) while the application was inactive.
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("App will resign active")
        // Pause ongoing tasks, disable timers, etc.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("App entered background")
        // Use this method to release shared resources, save user data, invalidate timers, etc.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("App will enter foreground")
        // Undo the changes made on entering the background.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("App will terminate")
        // Save data if appropriate. See also applicationDidEnterBackground:.
    }

    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        // Handle the URL scheme
        print("App opened with URL: \(url)")
        // Handle the URL as needed
        return true
    }
    
    // For Universal Links
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        guard let url = userActivity.webpageURL else { return false }
        print("App opened with Universal Link: \(url)")
        // Handle the Universal Link as needed
        return true
    }

    
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        // Perform background fetch
        print("Background fetch triggered")
        // Call the completion handler with appropriate result
        completionHandler(.newData)
    }

extension AppDelegate: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        // Handle the notification while the app is in the foreground
        print("Foreground notification received")
        completionHandler([.banner, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        // Handle the user's response to the notification
        print("User interacted with notification: \(response.notification.request.content.userInfo)")
        completionHandler()
    }
}
