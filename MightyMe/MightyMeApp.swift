//
//  MightyMeApp.swift
//  MightyMe
//
//  Created by GA006973 on 12/19/20.
//

import SwiftUI

@main
struct MightyMeApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        print("helllo")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase, perform: detechScenePhase)
    }
}

func detechScenePhase(_ newScenePhase: ScenePhase) {
    switch newScenePhase {
    case .active:
        print("App is active")
    case .inactive:
        print("App is inactive")
    case .background:
        print("App is in background")
    @unknown default:
        print("Oh - interesting: I received an unexpected new value.")
    }
}

//func returnSomeValue<V>(thisvalue someValue: V) -> some Scene where V : Equatable {
//    return Int(someValue)
//    return
//}
