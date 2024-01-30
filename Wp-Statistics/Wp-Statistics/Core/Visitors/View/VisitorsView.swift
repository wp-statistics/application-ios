//
//  VisitorsView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-27.
//

import SwiftUI

struct VisitorsView: View {
    @Environment (\.dismiss) var dismiss
    let visitors: [VisitorCellModel]
    
    var body: some View {
        
        ScrollView(showsIndicators: false){
            visitorCell
            
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
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
                            .font(.ralewaySize16())
                        
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
                                .font(.ralewaySize16())
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
                                .font(.ralewaySize16())
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
        .padding(.top)
    }
}

struct VisitorsView_Preview : PreviewProvider{
    static var previews: some View{
        VisitorsView(visitors: VisitorCellModel.visitors)
    }
}

//#Preview {
//    VisitorsView(visitors: VisitorCellModel.visitors)
//}
