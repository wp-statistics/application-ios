//
//  SummaryView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-29.
//

import SwiftUI
import Charts

struct SummaryModel: Identifiable {
    let id: UUID
}

struct SummaryView: View {
    @Environment (\.dismiss) var dismiss
    //let chartData: [ChartModel]
    
    var body: some View {
        ScrollView(showsIndicators: false){
            
            Spacer()
            
            HStack{
                Image(systemName: "person.3.sequence.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                
                Text("User Onlie: \(32)")
                    .font(.headline)
            }
            .frame(width: UIScreen.main.bounds.width - 36, alignment: .leading)
            .padding(.bottom, -8)

            VStack(alignment: .leading){
                HStack{
                    Text("")
                        .font(.ralewaySize16Bold)
                        .frame(width: 105, alignment: .leading)
                    
                    Text("Visitors")
                        .font(.ralewaySize16Bold)
                        .frame(width: 105, alignment: .leading)
                        .fixedSize()
                    
                    Text("Visitor")
                        .font(.ralewaySize16Bold)
                        .frame(width: 105, alignment: .leading)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 24)
                .padding(.bottom, 12)
                
                
                SummaryHeaderRowView(title: "Tody", visitorsCount: 48, visitorCount: 123, isShowDivider: true)
                SummaryHeaderRowView(title: "Yesterday", visitorsCount: 854, visitorCount: 4231, isShowDivider: true)
                SummaryHeaderRowView(title: "Week", visitorsCount: 24313, visitorCount: 23423, isShowDivider: true)
                SummaryHeaderRowView(title: "Month", visitorsCount: 145060, visitorCount: 195832, isShowDivider: true)
                SummaryHeaderRowView(title: "Year", visitorsCount: 8594323, visitorCount: 10243252, isShowDivider: true)
                SummaryHeaderRowView(title: "Total", visitorsCount: 8943333411, visitorCount: 11323432232, isShowDivider: false)
                    .padding(.bottom, 12)
                
                
                
            }
            .frame(width: UIScreen.main.bounds.width - 36 , alignment: .leading)
            .background(Color.white)
            .cornerRadius(16)
            .padding(.horizontal, 18)
            .padding(.bottom)
            .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 0)
            
            
            VStack{
                Text("Chart Box 1")
                    .font(.ralewaySize16Bold)
                    .padding()
                //
                //
                //
                //
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 36 , alignment: .leading)
            .background(Color.white)
            .cornerRadius(16)
            .padding(.horizontal, 18)
            .padding(.bottom)
            .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 0)
            
            VStack{
                Text("Chart Box 1")
                    .font(.ralewaySize16Bold)
                    .padding()
                //
                //
                //
                //
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 36 , alignment: .leading)
            .background(Color.white)
            .cornerRadius(16)
            .padding(.horizontal, 18)
            .padding(.bottom)
            .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 0)
            
            
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
            .navigationTitle("Summary")
            .navigationBarTitleDisplayMode(.inline)
        }
        .background(Color.red.opacity(0.5))
    }
}


struct SummaryHeaderRowView: View {
    var title: String
    var visitorsCount: Int
    var visitorCount: Int
    var isShowDivider: Bool
    
    var body: some View {
        HStack{
            Text(title)
                .font(.ralewaySize16Bold)
                .frame(width: 105, alignment: .leading)
                
            Text("\(visitorsCount)")
                .font(.caption)
                .frame(width: 110, alignment: .leading)
                .fixedSize()
            
            Text("\(visitorCount)")
                .font(.caption)
                .frame(width: 110, alignment: .leading)
            
            Spacer()
        }
        .padding(.bottom, 4)
        .padding(.top, 4)
        .padding(.horizontal, 18)
        
        if isShowDivider {
            Divider()
                .padding(.horizontal, 18)
        }
    }
}

struct SummaryView_Preview : PreviewProvider{
    static var previews: some View{
        SummaryView()
    }
}
