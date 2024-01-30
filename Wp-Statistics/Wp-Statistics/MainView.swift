//
//  ContentView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct MainView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    @State private var selectedOption: SideMenuOptionModel? = .home
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                if !showMenu {
                    TabView(selection: $selectedTab){
                        ForEach(SideMenuOptionModel.allCases) { option in
                            switch option {
                            case .home:
                                HomeView()
                                    .tag(option.rawValue)
                            case .visitors:
                                Text("Visitors")
                                    .tag(option.rawValue)
                            case .summary:
                                Text("Summary")
                                    .tag(option.rawValue)
                            case .searchEngin:
                                Text("Search Engin")
                                    .tag(option.rawValue)
                            case .aboutus:
                                Text("About US")
                                    .tag(option.rawValue)
                            }
                        }
                    }
                }
                
                SideMenuView(isShowing: $showMenu, selectedOption: $selectedOption)
                    .transition(.move(edge: .leading))
                    .animation(.spring(), value: showMenu)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)

            .navigationTitle(selectedOption?.title ?? "Dashborad")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }

                }
            }
            /*.onChange(of: selectedOption) { oldValue, newValue in
                guard let newValue else { return }
                selectedTab = newValue.rawValue
            }*/
            
            .onChange(of: selectedOption!) { newValue in
                selectedTab = newValue.rawValue
            }
        }
    }
}

struct MainView_Preview : PreviewProvider{
    static var previews: some View{
        MainView()
    }
}

//#Preview {
//    MainView()
//}
