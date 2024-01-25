//
//  ContentView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-03.
//

import SwiftUI

struct WebsiteListView: View {
    
    @State var noWebsite = false
    @State private var siteSearch = ""
    var body: some View {
        
            VStack{
                if noWebsite {
                    Spacer()
                        Text("Nothing")
                    Spacer()
                } else {
                    List{
                        VStack(alignment: .leading, spacing: 16.0) {
                            ForEach(1...5,id: \.self) { index in
                                HStack(spacing: 16){
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundStyle(.blue)
                                        .overlay {
                                            Image(systemName: "network")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 24, height: 24)
                                                .foregroundStyle(.white)
                                        }
                                        
                                    VStack(alignment: .leading){
                                        Text("Vita Theme")
//                                            .font(.headline)
                                            .font(.system(size: 17))
                                            .bold()
                                        
                                        Text("https://vitathemes.com")
                                            .font(.footnote)
                                            .fontWeight(.light)
                                            .accentColor(.gray)
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.forward")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 18, height: 18)
                                        .foregroundStyle(.gray)
                                }
                                .padding(.top,6)
                                Divider()
                            }
                        }
                    }
                }
            }
            .searchable(text: $siteSearch)
            .navigationTitle("Websites")
            
            .toolbar {
                ToolbarItem (placement: .topBarLeading){
                    
                    NavigationLink {
                        AboutUSView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "exclamationmark.circle")
                            .foregroundStyle(.black)
                    }
                }
            }
            
            HStack{
                NavigationLink {
                    AddNewWebsite()
                        .navigationBarBackButtonHidden()
                } label: {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width - 46, height: 48)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay {
                            HStack(alignment: .center){
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundStyle(.white)
                                
                                Text("Add Website")
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                            }
                        }
                }

            }
            .padding(.vertical,24)
            
        
        
    }
}

#Preview {
    WebsiteListView()
}
