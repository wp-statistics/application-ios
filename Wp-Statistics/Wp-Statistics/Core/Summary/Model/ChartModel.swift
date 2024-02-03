//
//  ChartModel.swift
//  Wp-Statistics
//
//  Created by Masoud Roosta on 1/31/24.
//

import Foundation

struct ChartModel: Identifiable{
    let id = UUID()
    let title: String
    let visitorsCount: Int
    let visitorCount: Int
    let isShowDivider: Bool
}


