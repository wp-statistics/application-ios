//
//  SummaryModel.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-29.
//

import Foundation

struct SummaryModel: Codable, Identifiable {
    var id = UUID()
    let userOnline: Int
    var visitor: VisitModel
    var visitors: VisitModel
}

struct VisitModel: Codable, Identifiable {
    var id = UUID()
    let today: Int
    let yesterday: Int
    let week: Int
    let month: Int
    let year: Int
    let total: Int
}

extension SummaryModel {
    static let summaryMock = SummaryModel(userOnline: 54, visitor: .init(today: 10, yesterday: 32, week: 325, month: 3451, year: 34587, total: 487452)
                                           , visitors: .init(today: 15, yesterday: 45, week: 450, month: 4871, year: 45795, total: 587451))
}
/*

 {
     "user_online": "0",
     "visitors": {
         "today": 35,
         "yesterday": 32,
         "week": 302,
         "month": 1151,
         "year": 36248,
         "total": 143263
     },
     "visits": {
         "today": 105,
         "yesterday": 180,
         "week": 915,
         "month": 3526,
         "year": 87297,
         "total": 346477
     },
     "total_posts": 1,
     "total_pages": 3,
     "total_comments": 1,
     "total_spams": 0,
     "total_users": 11,
     "lastpostdate": "August 26, 2019",
     "average_post": 0,
     "average_comment": 0,
     "average_registeruser": 0.01
 }
 
*/
