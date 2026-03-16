//
//  Grateful_MomentsApp.swift
//  Grateful Moments
//
//  Created by Johnny Li on 3/10/26.
//

import SwiftUI
import SwiftData


@main
struct Grateful_MomentsApp: App {
    let dataContainer = DataContainer()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
