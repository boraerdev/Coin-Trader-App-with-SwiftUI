//
//  cyriptoAppApp.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 16.07.2022.
//

import SwiftUI

@main
struct cyriptoAppApp: App {
    @StateObject private var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
                    
            }.environmentObject(vm)
            
        }
    }
}
