//
//  CustomNavigationBarContainerView.swift
//  Little Lemon App
//
//  Created by Masoud Roosta on 1/10/24.
//

import SwiftUI

struct CustomNavigationBarContainerView<Content : View>: View {
    let content: Content
    @State private var showBackButton: Bool = true
    @State private var isLoggedIn: Bool = true
    @State private var isProfileView: Bool = true
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0){
            CustomNavigationBar(isLoggedIn: isLoggedIn, showBackButton: showBackButton, isProfileView: isProfileView)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarShowBackButtonPreferenceKey.self) { backButtonStatus in
            self.showBackButton = backButtonStatus
        }
        .onPreferenceChange(CustomNavBarIsLoggedInPreferenceKey.self) { loggingStatus in
            self.isLoggedIn = loggingStatus
        }
        .onPreferenceChange(CustomNavBarIsProfileViewPreferenceKey.self) { isProfileViewStatus in
            self.isProfileView = isProfileViewStatus
        }
    }
}

struct NavigationBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarContainerView{
            ZStack{
                Color.yellow.ignoresSafeArea()
                Text("Content")
                    .foregroundColor(Color.gray)
            }
        }
    }
}
