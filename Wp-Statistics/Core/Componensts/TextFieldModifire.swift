//
//  TextFieldModifire.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-08.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.subheadline)
        .padding(12)
        .cornerRadius(10)
        .frame(width: 342,height: 48)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
        )
        .padding(.horizontal, 24)
    }
}
