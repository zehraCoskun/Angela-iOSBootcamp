//
//  InformationApp.swift
//  Information
//
//  Created by Zehra Coşkun on 1.08.2023.
//

import SwiftUI

@main
struct InformationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
