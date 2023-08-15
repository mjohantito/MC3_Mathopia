//
//  MC3_MathopiaApp.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 15/08/23.
//

import SwiftUI

@main
struct MC3_MathopiaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
