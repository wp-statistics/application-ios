//
//  ChartView.swift
//  Wp-Statistics
//
//  Created by Masoud Roosta on 1/31/24.
//

import SwiftUI
import Charts

struct ChartView: View{
    let chartData: SummaryModel
    var body: some View{
        ScrollView{
            VStack(spacing: 32){
                headerSection
                chartInfoTable
                chartContainer
                pieChart
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
    
    var chartInfoTable :  some View{
        
        VStack{
            
            Grid(alignment: .leading, horizontalSpacing: 10, verticalSpacing: 10) {
                chartInfoHeader
                ForEach(chartData.makeChartModelArr) { info in
                    chartCell(cellInfo: info)
                }
            }
            .padding()
        }
        .frame(height: 316)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(.white, lineWidth: 1)
                .shadow(radius: 1)
        }
        .padding([.leading, .trailing], 44)

    }
    
    var chartContainer: some View{
        VStack(alignment: .leading, spacing: 8){
            Text("Chart Title")
                .frame(height: 24 ,alignment: .trailing)
                .font(.ralewaySize16Bold)
                .padding()
            Rectangle()
                .fill(.secondary)
                .frame(height: 1)
                .gridCellColumns(3)
                .gridCellUnsizedAxes([.horizontal])
            Chart(chartData.makeChartModelArr) {
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
                .stroke(.white, lineWidth: 1)
                .shadow(radius: 1)
        }
        .padding([.trailing, .leading], 20)
    }
    
    var pieChart : some View{
        VStack(alignment: .leading, spacing: 8){
            Text("Chart Title")
                .frame(height: 24 ,alignment: .trailing)
                .font(.ralewaySize16Bold)
                .padding()
            Rectangle()
                .fill(.secondary)
                .frame(height: 1)
                .gridCellColumns(3)
                .gridCellUnsizedAxes([.horizontal])
            VStack{

                Text("\(chartData.visitor.total) Vistors")
                HStack{
                    PieChart(slices: [
                        (Double(chartData.visitor.total), .blue),
                        (Double(chartData.visitors.total), .green)
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
                Text(" \(chartData.visitors.total) Vists")
            }
            .padding([.trailing, .leading], 20)
        }
        .frame(height: 286)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(.white, lineWidth: 1)
                .shadow(radius: 1)
        }
    }
}


struct ChartView_Preview: PreviewProvider {
    static var previews: some View {
        ChartView(chartData: SummaryModel.summaryMock)
    }
}

