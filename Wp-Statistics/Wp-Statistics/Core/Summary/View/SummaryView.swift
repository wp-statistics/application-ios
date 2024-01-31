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
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                
                Text("User Onlie: \(32)")
                    .font(.headline)
                    .padding(.top)
                
                VStack(alignment: .trailing){
                    HStack{
                        
                        Text("Visitors")
                            .font(.ralewaySize16Bold)
                        
                        Spacer()
                        
                        Text("Vistor")
                            .font(.ralewaySize16Bold)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    
                    HStack{
                        Text("Today")
                            .font(.ralewaySize16Bold)
                        
                        
                        Text("")
                            .font(.ralewaySize16Bold)
                            .frame(width: 105, alignment: .leading)
                                                
                        Text("Visitors")
                            .font(.ralewaySize16Bold)
                            .frame(width: 105, alignment: .leading)
                            .fixedSize()
                        
                        Text("48")
                            .font(.ralewaySize16Bold)
                        
                        Spacer()
                        
                        Text("134")
                            .font(.ralewaySize16Bold)
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
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(16)
                .padding(.horizontal, 18)
                .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 0)
                
               
                
                
                .toolbar{
                    //                ToolbarItem(placement: .topBarLeading) {
                    ToolbarItem(placement: .navigationBarLeading) {
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
}

struct SummaryView_Preview: PreviewProvider {
    static var previews: some View {
        SummaryView()
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
                .frame(width: 105, alignment: .leading)
                .fixedSize()
            
            Text("\(visitorCount)")
                .font(.caption)
                .frame(width: 105, alignment: .leading)
            
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





//#Preview {
//    SummaryView()
//}
