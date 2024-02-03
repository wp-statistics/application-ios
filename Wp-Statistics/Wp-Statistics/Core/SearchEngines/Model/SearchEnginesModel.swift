//
//  SearchEnginesModel.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-02-03.
//

import Foundation
struct SearchEnginesModel: Identifiable {
    let id = UUID()
    let total: Int
    let searchEngin : [SearchEngines]
    
    enum CodingKeys: String, CodingKey {
        case total
        case searchEngine = "search_engine"
    }
}

struct SearchEngines: Codable,Identifiable {
    var id = UUID()
    let name: String
    let icon: String
    let today: Int
    let yesterday: Int
}

extension SearchEnginesModel {
    static let searchEngine = SearchEnginesModel(total: 5002, searchEngin: [.init(name: "Bing", icon: "Bing", today: 243, yesterday: 764),
                                                                            .init(name: "DuckDuckGo", icon: "DuckDuckGo", today: 43, yesterday: 32),
                                                                            .init(name: "Google", icon: "Google", today: 2352, yesterday: 8343),
                                                                            .init(name: "Yahoo", icon: "Yahoo", today: 43, yesterday: 32),
                                                                            .init(name: "Yandex", icon: "Yandex", today: 43, yesterday: 32)
    ])
}
