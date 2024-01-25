//
//  TitleTextFieldModifire.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-08.
//

import Foundation
import SwiftUI

struct TitleTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .fontWeight(.semibold)
        .font(.footnote)
        .foregroundStyle(.gray)
        .padding(.horizontal, 24)
        .offset(y: 10)
        .padding(.leading,4)
    }
}
