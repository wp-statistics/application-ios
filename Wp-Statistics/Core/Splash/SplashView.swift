//
//  SplashView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-06.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            
            Color("splashBackground")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Image("splashLogo")
                        .frame(width: 250)
                    
                }
                Spacer()
                
                    
            }
        }
        .background(
            EllipticalGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.11, green: 0.6, blue: 0.88), location: 0.00),
                    Gradient.Stop(color: Color(red: 0, green: 0.56, blue: 0.82), location: 1.00),
                ],
                center: UnitPoint(x: 0.5, y: 0.48)
            )
        )
    }
}

#Preview {
    SplashView()
}
