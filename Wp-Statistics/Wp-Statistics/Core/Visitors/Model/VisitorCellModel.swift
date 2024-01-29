//
//  VisitorCellModel.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-29.
//

import Foundation

struct VisitorCellModel: Identifiable {
    let id = UUID()
    let flag: String
    let ip: String
    let urlAddress: String
    let browers: String
    let date: String
}

extension VisitorCellModel{
    static let visitors = Array(repeating: VisitorCellModel(flag: "Flag", ip: "220.181.51.113", urlAddress: "https://vitatheme.com", browers: "Chrome", date: "16 October 2024"), count: 5)
}
