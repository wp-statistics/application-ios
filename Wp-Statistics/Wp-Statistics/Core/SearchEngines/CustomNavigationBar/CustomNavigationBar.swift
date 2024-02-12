//
//  CustomNavigationBar.swift
//  Little Lemon App
//
//  Created by Masoud Roosta on 1/10/24.
//

import SwiftUI

struct CustomNavigationBar: View {
    @Environment(\.presentationMode) var presantionMode
    let isLoggedIn: Bool
    let showBackButton: Bool
    let isProfileView: Bool
    
    var body: some View {
            HStack{
                if showBackButton{
                    backButton
                }
                Spacer()
                logoImage
                Spacer()
                if isLoggedIn{
                    profileImage
                }
                
            }
            .frame(height: 44)
            .padding()
    }
}

struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar(isLoggedIn: true, showBackButton: true, isProfileView: false)
    }
}

extension CustomNavigationBar{
    private var backButton: some View{
        Button {
            presantionMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .opacity(showBackButton ? 1.0 : 0.0)
                .frame(width: 24, height: 24)
        }
    }
    private var logoImage: some View{
        Image("Logo")
            .resizable()
            .scaledToFit()
    }
    
    private var profileImage: some View{
        CustomNavigationLink(destination:
                                HomeView().isProfileView(true)
        ) {
            Image("profileLogo")
                .resizable()
                .scaledToFit()
                .overlay {
                    Circle()
                        .stroke(Color.gray, lineWidth: 2)
                }
                .opacity(isLoggedIn ? 1.0 : 0.0)
        }
        .disabled(isProfileView)
    }
}


