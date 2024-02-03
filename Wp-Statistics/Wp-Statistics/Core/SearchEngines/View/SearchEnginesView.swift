//
//  SearchEnginesView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-02-02.
//

import SwiftUI

struct SearchEnginesView: View {
    @Environment(\.dismiss) var dismiss
    let searchEnginModel: [SearchEnginesModel]
    
    var body: some View {
        ScrollView(showsIndicators: false){
            HStack{
                Image(systemName: "magnifyingglass.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                
                ForEach(searchEnginModel) { engin in
                    Text("Total: \(engin.total)")
                        .font(.headline)
                }
                
            }
            .frame(width: UIScreen.main.bounds.width - 36, alignment: .center)
            .padding(.bottom, 4)
            
            VStack(alignment: .center){
                HStack{
                    Image("")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                    Text("")
                        .font(.ralewaySize16Bold)
                        .frame(width: 77, alignment: .leading)
                    
                    Text("Today")
                        .font(.ralewaySize16Bold)
                        .frame(width: 97, alignment: .center)
                    
                    Text("Yesterday")
                        .font(.ralewaySize16Bold)
                        .frame(width: 97, alignment: .center)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 24)
                .padding(.bottom, 12)
                
                
                ForEach(searchEnginModel) { engine in
                    ForEach(engine.searchEngin) { engintype in
                        SearchEnginesRowView(icon: engintype.icon, name: engintype.name, today: engintype.today, yesterday: engintype.yesterday, isShowDivider: true)
                            //.padding(.bottom, 12)
                    }
                }
                    
                
                
                
            }
            .frame(width: UIScreen.main.bounds.width - 36 , alignment: .center)
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
//        .background(Color.red.opacity(0.5))
    }
}

struct SearchEnginesRowView: View {
    var icon: String
    var name: String
    var today: Int
    var yesterday: Int
    var isShowDivider: Bool
    
    var body: some View {
        HStack{
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            
            Text(name)
                .font(.ralewaySize15Medium)
                .frame(width: 77, alignment: .leading)
            
            Text("\(today)")
                .font(.caption)
                .frame(width: 97, alignment: .center)
            
            Text("\(yesterday)")
                .font(.caption)
                .frame(width: 97, alignment: .center)
            
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


#Preview {
    SearchEnginesView(searchEnginModel: [SearchEnginesModel.searchEngine])
}
