//
//  SideMenuFooterView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct SideMenuFooterView: View {
    var body: some View {
        
        Divider()
        
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(Circle())
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6.0){
                Text("Kambiz Dehghani")
                    .font(.headline)
                
                Text("Kambizvb6@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "ellipsis")
            }
            
        }
        .padding(.horizontal)
    }
}
struct SideMenuFooterView_Preview : PreviewProvider{
    static var previews: some View{
        SideMenuFooterView()
    }
}

//#Preview {
//    SideMenuFooterView()
//}
