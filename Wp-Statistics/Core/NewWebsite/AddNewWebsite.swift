//
//  AddNewWebsite.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-06.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct AddNewWebsite: View {
    
    @Environment (\.dismiss) var dismiss
    
    @State var websiteUrl = ""
    @State var apiKey = ""
    
    @State var textSelected = false
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.yellow)
                
                Text("Information")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Group {
                Text("please keep in mind, to connect to the website") +
                Text(" the REST API add-On")
                    .foregroundColor(Color.blue)
                    .fontWeight(.heavy) +
                Text(" needs to be in installed on your WordPress. ")
            }
            
        }
        .padding(.horizontal)
      
        VStack(alignment: .leading){
            
            FloatingLabelTextField($websiteUrl, placeholder: "Website", editingChanged: { (isChanged) in
                
            }) {
                
            }
            .frame(height: 80)
            .padding(.horizontal, 24)
            
            TextField("Website", text: $websiteUrl)
                .font(.subheadline)
                .frame(width: 342,height: 48)
                .padding(.horizontal, 24)
                .simultaneousGesture(TapGesture().onEnded {
                    textSelected.toggle()
                        })
                
                
            Divider()
                .padding(.horizontal, 24)
                .padding(.top,-10)
            
            TextField("Api Key", text: $apiKey)
                .font(.subheadline)
                .frame(width: 342,height: 48)
                .padding(.horizontal, 24)
            
            Divider()
                .padding(.horizontal, 24)
                .padding(.top,-10)
        }
        
        
        .navigationTitle("Add New Website")
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
    AddNewWebsite()
}
