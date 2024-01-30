//
//  SummaryView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-29.
//

import SwiftUI

struct SummaryView: View {
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(showsIndicators: false){
            
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                    
                    Text("Visitors")
                        .font(.ralewaySize16Bold())
                    
                    Spacer()
                    
                    Text("Vistor")
                        .font(.ralewaySize16Bold())
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
                HStack{
                    Text("Today")
                        .font(.ralewaySize16Bold())
                        
                    
                    Spacer()
                    
                    Text("48")
                        .font(.ralewaySize16Bold())
                    
                    Spacer()
                    
                    Text("134")
                        .font(.ralewaySize16Bold())
                }
                .frame(alignment: .leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.red)
                .padding(.horizontal)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue.opacity(0.5))
            .cornerRadius(16)
            .padding()
            
            
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

#Preview {
    SummaryView()
}
