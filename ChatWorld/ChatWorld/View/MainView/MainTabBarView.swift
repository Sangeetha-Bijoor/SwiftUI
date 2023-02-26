//
//  MainTabBarView.swift
//  ChatWorld
//
//  Created by Sangeetha B on 21/02/23.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        NavigationView {
            TabView {
                ChannelsView()
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                ChatView().tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                }
                SettingsView().tabItem {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
