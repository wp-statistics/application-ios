//
//  AboutUSView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-04.
//

import SwiftUI

struct AboutUSView: View {
    
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
        VStack{
            VStack(spacing: 46.0) {
                Text("WP-Statics is one of the best statistical plugins. With many statistical fetures, this plugin has managed to attract many users. ")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 245)
            }
            .padding(.vertical,34)
            
            
            
            HStack( spacing: 16.0){
                Button {
                    
                } label: {
                    AboutUSButton(image: "website", name: "Website")
                }
                
                Button {
                    
                } label: {
                    AboutUSButton(image: "email", name: "Email")
                }
                
                Button {
                    
                } label: {
                    AboutUSButton(image: "developer", name: "Developer")
                }
            }
            .padding(.top,16)
            
            Spacer()
            
            Text("V.2.0")
                .font(.footnote)
                .foregroundStyle(.gray)
            
        }
        .padding(.horizontal)
        
        .navigationTitle("About US")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    }
}

#Preview {
    AboutUSView()
}

struct AboutUSButton: View {
    
    let image: String
    let name: String
    
    var body: some View {
        Rectangle()
            .frame(width: 99, height: 98)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .foregroundStyle(.white)
            .shadow(color: Color("shadow"), radius: 2, x: 0, y: 0)
            .overlay {
                VStack{
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    
                    Text(name)
                        .font(.footnote)
                        .fontWeight(.regular)
                        .foregroundStyle(.blue)
                    
                }
            }
    }
}
