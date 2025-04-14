//
//  ContentView.swift
//  BizBridge
//
//  Created by Greg Tchobe on 10/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
    
            TabView  {
                HomeView().tabItem {Text("Account")}.tag(1)
                  
                BizAnalyticsView().tabItem {Text("Biz Analytics")}.tag(2)
                    
                ChatView().tabItem {Text("Chat")}.tag(3)
                            
                WebBuilderView().tabItem {Text("Web Builder")}.tag(4)
                            } //end of tabview
            
                        }
        .padding()
    }
}

#Preview {
    ContentView()
}
