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
                pieChart(chartData: chartData.first!)
                    .padding()
            }
            
        }
    }
}



extension ChartView{
    
    var headerSection: some View{
        VStack(alignment: .leading, spacing: 8){
            Text("Summary")
                .font(.headline)
                .padding(.top)
//            HStack{
//
//                Text("Visitors")
//                    .font(.ralewaySize16Bold)
//
//                Spacer()
//
//                Text("Vistor")
//                    .font(.ralewaySize16Bold)
//            }
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
        
        VStack(){
            
            Grid(alignment: .leading, horizontalSpacing: 10, verticalSpacing: 10) {
                chartInfoHeader
                ForEach(chartInfo) { info in
                    chartCell(cellInfo: info)
                }
            }
            .padding()
        }
        .frame(height: 316)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray.opacity(0.6), lineWidth: 1)
                .shadow(radius: 4)
        }
        .padding()
    }
    
    func chartContainer(chartData: [ChartModel]) -> some View{
        VStack(alignment: .leading, spacing: 8){
            Text("Chart Title")
                .frame(height: 24 ,alignment: .trailing)
                .padding()
            Rectangle()
                .fill(.secondary)
                .frame(height: 1)
                .gridCellColumns(3)
                .gridCellUnsizedAxes([.horizontal])
            Chart(chartData) {
                AreaMark(x: .value("Title", $0.title), y: .value("Visitor", $0.visitorCount))
                    .foregroundStyle(.green)
                    .position(by: .value("VisitorCount", $0.visitorCount))
                
                AreaMark(x: .value("Title", $0.title), y: .value("Visitors", $0.visitorsCount))
                    .foregroundStyle(.blue)
                    .position(by: .value("Visitors", $0.visitorsCount))
            }
            .padding()
        }
        .frame(height: 316)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray.opacity(0.6), lineWidth: 1)
                .shadow(radius: 4)
        }
        .padding()
    }
    
    func pieChart(chartData: ChartModel) -> some View{
        VStack(alignment: .leading, spacing: 8){
            Text("Chart Title")
                .frame(height: 24 ,alignment: .trailing)
                .padding()
            Rectangle()
                .fill(.secondary)
                .frame(height: 1)
                .gridCellColumns(3)
                .gridCellUnsizedAxes([.horizontal])
            VStack{
                
                Text("\(chartData.visitorsCount) Vistors")
                HStack{
                    PieChart(slices: [
                        (Double(chartData.visitorsCount), .blue),
                        (Double(chartData.visitorCount), .green)
                    ])
                    .frame(width: UIScreen.main.bounds.width * 0.5, alignment: .leading)
                    VStack(alignment: .leading, spacing: 12){
                        HStack(spacing: 8){
                            RoundedRectangle(cornerRadius: 4.0)
                                .fill(.blue)
                                .frame(width: 19, height: 8)
                            Text("Visitors")
                        }
                        HStack(spacing: 8){
                            RoundedRectangle(cornerRadius: 4.0)
                                .fill(.green)
                                .frame(width: 19, height: 8)
                            Text("Visits")
                        }
                    }
                }
                Text(" \(chartData.visitorCount) Vists")
            }
            .padding()
        }
        .frame(height: 286)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray.opacity(0.6), lineWidth: 1)
                .shadow(radius: 4)
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

