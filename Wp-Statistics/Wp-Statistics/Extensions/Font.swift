//
//  Font.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-28.
//

import Foundation
import SwiftUI

extension Font {
    
    static func ralewaySize24Bold() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 24).weight(.semibold)
    }
    static func ralewaySize18() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 18).weight(.semibold)
    }
    static func ralewaySize16() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 16).weight(.regular)
    }
    static func ralewaySize16Bold() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 16).weight(.bold)
    }
    static func ralewaySize15() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 14).weight(.regular)
    }
    static func ralewaySize15Medium() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 15).weight(.medium)
    }
    static func ralewaySize14() -> Font {
        return Font.custom(RalewayFont.Name.rawValue, size: 14).weight(.regular)
    }
    
    static func coolverticaTitle() -> Font {
        return Font.custom(CoolveticaFont.Name.rawValue, size: 34)
    }
}
enum RalewayFont: String {
    case Name = "Raleway"
}

enum CoolveticaFont: String {
    case Name = "Coolvetica"
}
