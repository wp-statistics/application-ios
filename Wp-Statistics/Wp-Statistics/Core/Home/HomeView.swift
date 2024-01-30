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
                    .font(.ralewaySize24Bold)
                
                ScrollView(showsIndicators: false){
                    ForEach(0...1,id: \.self) { index in
                        WebsiteRowView()
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 36,alignment: .leading)
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

struct HomeView_Preview : PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}

//#Preview {
//    HomeView()
//}

struct WebsiteRowView: View {
    var body: some View {
        Rectangle()
            .frame(height: 142)
            .foregroundStyle(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay {
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 4.0){
                            Text("Vita Theme")
                                .font(.ralewaySize18)
                            
                            Text("https://vitathemes.com")
                                .font(.ralewaySize16)
                                .tint(.gray)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .offset(y: -2)
                        
                        VStack{
                            Text("Status")
                                .font(.ralewaySize14)
                            
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
                                .font(.ralewaySize16Bold)
                            
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
