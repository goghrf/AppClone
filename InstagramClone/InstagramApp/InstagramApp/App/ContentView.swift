//
//  ContentView.swift
//  InstagramApp
//
//  Created by 고성민 on 2/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: TabItem = .home
    
    var body: some View {
        
        
        TabView(selection: $selectedTab) {
            
            HomeMainView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(TabItem.home)
            
            SearchMainView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            PostMainView()
                .tabItem {
                    Image(systemName: "plus.app")
                }
            
            ReelsMainView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                }
            
            MyPageMainView()
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
        .accentColor(.black)
    }
}

enum TabItem {
    
    case home
    case search
    case post
    case reels
    case myPage
}

#Preview {
    ContentView()
}
