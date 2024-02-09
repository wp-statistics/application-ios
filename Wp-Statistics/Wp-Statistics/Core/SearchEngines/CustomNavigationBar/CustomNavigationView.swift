//
//  CustomNavigationView.swift
//  Little Lemon App
//
//  Created by Masoud Roosta on 1/10/24.
//

import SwiftUI

struct CustomNavigationView<Content: View>: View {
    
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        NavigationView {
            CustomNavigationBarContainerView {
                content
                    
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView{
            Color.red.ignoresSafeArea()
        }
    }
}


