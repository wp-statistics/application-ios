//
//  ChartView.swift
//  Wp-Statistics
//
//  Created by Masoud Roosta on 1/31/24.
//

import SwiftUI
import Charts

struct ChartView: View{
    let chartData: [ChartModel]
    var body: some View{
        ScrollView{
            VStack(spacing: 16){
                headerSection
                    .padding()
                chartInfoTable(chartInfo: chartData)
                chartContainer(chartData: chartData)
                    .padding()
            }
        }
    }
}



extension ChartView{
    
    var headerSection: some View{
        VStack(alignment: .leading, spacing: 8){
            Text("User Onlie: 32")
                .font(.headline)
                .padding(.top)
    
            HStack{
                
                Text("Visitors")
                    .font(.ralewaySize16Bold)
                
                Spacer()
                
                Text("Vistor")
                    .font(.ralewaySize16Bold)
            }
        }
    }
    
    var chartInfoHeader: some View{
        GridRow(alignment: .firstTextBaseline) {
            Text("")
            Text("Visitors")
                .font(.ralewaySize16Bold)
            Text("Vistor")
                .font(.ralewaySize16Bold)
            
        }
    }
    func chartCell(cellInfo: ChartModel) -> some View{
        Group{
            GridRow(alignment: .firstTextBaseline) {
                Text(cellInfo.title)
                    .font(.ralewaySize16Bold)
                Text("\(cellInfo.visitorsCount)")
                Text("\(cellInfo.visitorCount)")
            }
            GridRow {
                Rectangle()
                    .fill(.secondary)
                    .frame(height: 1)
                    .gridCellColumns(3)
                    .gridCellUnsizedAxes([.horizontal])
            }
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func chartInfoTable(chartInfo: [ChartModel]) -> some View{
        
        VStack{
            
            Grid(alignment: .leading, horizontalSpacing: 10, verticalSpacing: 10) {
                chartInfoHeader
                ForEach(chartInfo) { info in
                    chartCell(cellInfo: info)
                }
            }
        }.padding()
        
    }
    
    func chartContainer(chartData: [ChartModel]) -> some View{
        
        Chart(chartData) {
            BarMark(x: .value("Title", $0.title), y: .value("Visitor", $0.visitorCount))
                .foregroundStyle(.green)
                .position(by: .value("VisitorCount", $0.visitorCount))
            
            BarMark(x: .value("Title", $0.title), y: .value("Visitors", $0.visitorsCount))
                .foregroundStyle(.blue)
                .position(by: .value("Visitors", $0.visitorsCount))
        }
    }
}


struct ChartView_Preview: PreviewProvider {
    static var previews: some View {
        ChartView(chartData:
                    [
                        .init(title: "Tody", visitorsCount: 48, visitorCount: 123, isShowDivider: true),
                        .init(title: "Yesterday", visitorsCount: 854, visitorCount: 1231, isShowDivider: true),
                        .init(title: "Week", visitorsCount: 2131, visitorCount: 2342, isShowDivider: true),
                        .init(title: "Month", visitorsCount: 145060, visitorCount: 195832, isShowDivider: true),
                        .init(title: "Year", visitorsCount: 8594323, visitorCount: 10243252, isShowDivider: true),
                        .init(title: "Total", visitorsCount: 8943333411, visitorCount: 11323432232, isShowDivider: false)
                    ]
        )
    }
}
