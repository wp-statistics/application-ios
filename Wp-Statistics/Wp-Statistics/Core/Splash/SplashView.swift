//
//  SplashView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
//            Color(.splashBackground).ignoresSafeArea()
            Color(.blue)
                .ignoresSafeArea()
            VStack{
                Image("splashLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
            }
        }
    }
}

struct SplashView_Preview : PreviewProvider{
    static var previews: some View{
        SplashView()
    }
}

//#Preview {
//    SplashView()
//}
