//
//  Font.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-28.
//

import Foundation
import SwiftUI

extension Font {
    static let ralewaySize24Bold = Font.custom(RalewayFont.Name.rawValue, size: 24).weight(.semibold)
    static let ralewaySize18 = Font.custom(RalewayFont.Name.rawValue, size: 18).weight(.semibold)
    static let ralewaySize16 = Font.custom(RalewayFont.Name.rawValue, size: 16).weight(.regular)
    static let ralewaySize16Bold = Font.custom(RalewayFont.Name.rawValue, size: 16).weight(.bold)
    static let ralewaySize15 = Font.custom(RalewayFont.Name.rawValue, size: 14).weight(.regular)
    static let ralewaySize15Medium = Font.custom(RalewayFont.Name.rawValue, size: 15).weight(.medium)
    static let ralewaySize14 = Font.custom(RalewayFont.Name.rawValue, size: 14).weight(.regular)
    static let coolverticaTitle = Font.custom(CoolveticaFont.Name.rawValue, size: 34)
}
enum RalewayFont: String {
    case Name = "Raleway"
}

enum CoolveticaFont: String {
    case Name = "Coolvetica"
}
