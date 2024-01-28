//
//  HomeView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HomeHeaderView()
                .padding(.vertical)
            
            VStack(alignment: .leading){
                Text("All Website")
                    .font(.custom("Raleway", size: 24))
                    .fontWeight(.bold)
                
                ScrollView(showsIndicators: false){
                    ForEach(0...3,id: \.self) { index in
                        WebsiteRowView()
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 36,alignment: .leading)
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    HomeView()
}

struct WebsiteRowView: View {
    var body: some View {
        Rectangle()
            .frame(height: 142)
            .foregroundStyle(.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay {
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 4.0){
                            Text("Vita Theme")
                                .font(FontFamily.ralewayTitle)
                                .fontWeight(.semibold)
                            
                            Text("https://vitathemes.com")
                                .font(.custom("Raleway", size: 16))
                                .tint(.gray)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .offset(y: -2)
                        
                        VStack{
                            Text("Status")
                                .font(.custom("Raleway", size: 14))
                                .fontWeight(.regular)
                            
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.green)
                        }
                        .padding(.horizontal)
                    }
                    
                    VStack{
                        Divider()
                            .padding(.horizontal)
                    }
                    
                    HStack{
                        Button {
                            print("Delete Website")
                        } label: {
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width: 35, height: 35)
                                .foregroundStyle(.gray.opacity(0.4))
                                .overlay {
                                    Image(systemName: "trash")
                                        .foregroundStyle(.black)
                                }
                        }
                        
                        Spacer()
                        
                        NavigationLink {
                            VisitorsView(visitors: VisitorCellModel.visitors)
                                .navigationBarBackButtonHidden()
                                
                        } label: {
                            Text("Show more")
                                .font(.custom("Raleway", size: 16))
                                .fontWeight(.bold)
                            
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24)
                        }
                        .tint(.black)
                    }
                    
                    .padding(.top, 8)
                    .padding(.horizontal)
                }
            }
    }
}

extension UINavigationController{
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
