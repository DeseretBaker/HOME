//
//  SyncManager.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI
import SwiftData

func handleCloudSyncConfilict() {
    // custom logic to handle conflicts
}

func syncProjects() {
    do {
//        try modelContainer.synchronize()
//    } catch {
//        print("Error syncing projects: \(error.localizedDescription)")
        handleCloudSyncConfilict()
    }
}
