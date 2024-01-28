//
//  VisitorsView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-27.
//

import SwiftUI

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


struct VisitorsView: View {
    @Environment (\.dismiss) var dismiss
    let visitors: [VisitorCellModel]
    
    var body: some View {
        
        ScrollView{
            visitorCell
            
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
            .navigationTitle("Visitors")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

extension VisitorsView{
    var visitorCell:some View {
        VStack{
            ForEach(visitors) { visitor in
                VStack(alignment: .leading){
                    HStack{
                        Image(visitor.flag)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(visitor.ip)
                            .font(.custom("Raleway", size: 16))
                            .fontWeight(.regular)
                        
                        Spacer()
                        
                        Image(visitor.browers)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48)
                        
                    }
                    
                    VStack{
                        HStack{
                            Image("IconWebsite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24)
                         
                            Text(visitor.urlAddress)
                                .font(.custom("Raleway", size: 16))
                                .fontWeight(.regular)
                                .tint(.black)
                        }
                    }
                    
                    VStack{
                        HStack{
                            Image("IconDate")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24)
                         
                            Text(visitor.date)
                                .font(.custom("Raleway", size: 16))
                                .fontWeight(.regular)
                                .tint(.black)
                        }
                    }
                }
                .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 36, alignment: .leading)
    }
}

#Preview {
    VisitorsView(visitors: VisitorCellModel.visitors)
}
