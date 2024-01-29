//
//  AddNewWebsiteView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-27.
//

import SwiftUI

struct AddNewWebsiteView: View {
    @Environment (\.dismiss) var dismiss
    @State private var websiteText = ""
    @State private var apiKeyText = ""
    
    var body: some View {
        
        VStack{
            Image("addwebsiteImage")
                .resizable()
                .scaledToFit()
                .frame(width: 220)
            
            TextFiledView(textFiled: $websiteText, title: "Website: ", placeHolderText: "http:")
                .padding(.horizontal, 32)
                .padding(.vertical)
            
            TextFiledView(textFiled: $apiKeyText, title: "Api Key", placeHolderText: "API Key")
                .padding(.horizontal, 32)
                .padding(.bottom)
            
            
            VStack{
                Button {
                    print("Add New Website")
                } label: {
                    Rectangle()
                        .frame(height: 56)
                        .foregroundStyle(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(.horizontal,90)
                        .overlay {
                            HStack{
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(.white)
                                    .frame(width: 24, height: 24)
                                
                                Text("Add New Website")
                                    .font(.ralewaySize16Bold())
                                    .foregroundStyle(.white)
                            }
                        }
                }
            }
            
            Spacer()
            
            Text("Please keep in mind, to connect to the website, the REST API add-On needs to be in installed on your WordPress.")
                .font(.ralewaySize16())
                .padding(.horizontal, 30.0)
                .lineSpacing(3)
                .tracking(1.0)
            
        }
        .navigationTitle("Add Website")
        .navigationBarTitleDisplayMode(.inline)
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
    AddNewWebsiteView()
}

struct TextFiledView: View {
    @Binding var textFiled: String
    var title: String
    var placeHolderText: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.ralewaySize14())
                .foregroundStyle(.gray.opacity(0.8))
            
            Rectangle()
                .frame(height: 50)
                .foregroundStyle(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color("TextStrokColor"), lineWidth: 1)
                    
                    TextField(placeHolderText, text: $textFiled)
                        .padding(.horizontal)
                }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

