//
//  CustomNavBarPreferenceKeys.swift
//  Little Lemon App
//
//  Created by Masoud Roosta on 1/10/24.
//

import Foundation
import SwiftUI

struct CustomNavBarShowBackButtonPreferenceKey: PreferenceKey{
    static var defaultValue: Bool = true
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}


struct CustomNavBarIsLoggedInPreferenceKey: PreferenceKey{
    static var defaultValue: Bool = true
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}


struct CustomNavBarIsProfileViewPreferenceKey: PreferenceKey{
    static var defaultValue: Bool = false
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}
struct CustomNavBarTitlePreferenceKey: PreferenceKey{
    static var defaultValue: String = ""
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}


extension View{
    func showBackButton(_ show: Bool) -> some View{
        preference(key: CustomNavBarShowBackButtonPreferenceKey.self, value: show)
    }
    
    func isLoggedin(_ loggedIn: Bool) -> some View{
        preference(key: CustomNavBarIsLoggedInPreferenceKey.self, value: loggedIn)
    }
    func isProfileView(_ isProfile: Bool) -> some View{
        preference(key: CustomNavBarIsProfileViewPreferenceKey.self, value: isProfile)
    }
    
    func navBarTitle(_ title: String) -> some View{
        preference(key: CustomNavBarTitlePreferenceKey.self, value: title)
    }
    func customNavBarItems(title: String = "", showButtonHidden: Bool = false, loggedIn: Bool = true, isProfile: Bool = false) -> some View{
        self
            .showBackButton(showButtonHidden)
            .navBarTitle(title)
            .isLoggedin(loggedIn)
            .isProfileView(isProfile)
            
    }
}
