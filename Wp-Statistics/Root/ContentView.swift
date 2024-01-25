//
//  ContentView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-06.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplash = true
    var body: some View {
        ZStack{
            if showSplash {
                SplashView()
                    .transition(.opacity)
                    .animation(.easeIn, value: 1.5)
            } else {
                WebsiteListView()
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation {
                    self.showSplash = false
                }
            }
        })
    }
}

#Preview {
    ContentView()
}
