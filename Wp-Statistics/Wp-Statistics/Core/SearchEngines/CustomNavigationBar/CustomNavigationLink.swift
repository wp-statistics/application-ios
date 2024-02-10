//
//  CustomNavigationLink.swift
//  Little Lemon App
//
//  Created by Masoud Roosta on 1/10/24.
//

import SwiftUI

struct CustomNavigationLink<Label: View, Destination: View>: View {
    let label: Label
    let destination: Destination
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    var body: some View {
        NavigationLink(
        destination:
            CustomNavigationBarContainerView(content: {
                destination
            })
            .navigationBarHidden(true)
            ,
         label: {
            label
        })

    }
}

struct CustomNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView {
            
        }
    }
}
