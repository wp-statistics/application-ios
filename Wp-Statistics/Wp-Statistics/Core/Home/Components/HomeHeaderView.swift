//
//  HomeHeaderView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-26.
//

import SwiftUI

struct HomeHeaderView: View {
    @State private var isImageLoaded = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 35))
                .frame(width: UIScreen.main.bounds.width - 36, height: 226)
                .rotationEffect(.degrees(4.50))
            
            
            Rectangle()
                .foregroundStyle(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 35))
                .frame(width: UIScreen.main.bounds.width - 36, height: 226)
                .overlay {
                    HStack{
                        VStack(alignment: .leading, spacing: 8.0){
                            Text("WP Statistics!")
                                .font(.coolverticaTitle())
                                .foregroundStyle(.white)
                            
                            Text("Track visits, get reports, and see your audience grow.")
                                .font(.ralewaySize15())
                                .foregroundStyle(.white)

                            NavigationLink {
                                AddNewWebsiteView()
                                    .navigationBarBackButtonHidden()
                            } label: {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 170, height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 100))
                                    .overlay {
                                        HStack{
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 18, height: 18)
                                                .foregroundStyle(.black)
                                            
                                            Text("Add Website")
                                                .font(.ralewaySize15())
                                                .foregroundStyle(.black)
                                        }
                                    }
                                    .offset(y:5)
                                    .padding(.top,32)
                            }
                        }
                        .padding(.leading)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            Spacer()
                            
                            Image("HeaderIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        }
                        .padding(.trailing)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 28)
                    .padding(.bottom, 14)
                }
        }
    }
}

#Preview {
    HomeHeaderView()
}
