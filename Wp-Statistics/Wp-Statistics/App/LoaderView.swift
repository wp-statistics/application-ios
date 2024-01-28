//
//  SplashLoader.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct LoaderView: View {
    @State private var showSplash = true
    var body: some View {
        ZStack{
            if showSplash {
                SplashView()
                    .transition(.opacity)
                    .animation(.easeIn, value: 1.5)
            } else {
                MainView()
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

struct LoaderView_Preview : PreviewProvider{
    static var previews: some View{
        LoaderView()
    }
}

//#Preview {
//    LoaderView()
//}
