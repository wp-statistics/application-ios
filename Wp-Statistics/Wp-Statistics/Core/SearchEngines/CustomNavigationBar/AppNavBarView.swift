//
//  AppNavBarView.swift
//  Little Lemon App
//
//  Created by Masoud Roosta on 1/10/24.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavigationView {
            ZStack{
                Color.red
                    .ignoresSafeArea()
                CustomNavigationLink(destination: Text("Click me")) {
                    Text("Click me")
                }
                
            }
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}
