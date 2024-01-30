//
//  SideMenuHeaderView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack{
            Image("BlueLogo")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
        }
    }
}

struct SideMenuHeaderView_Preview : PreviewProvider{
    static var previews: some View{
        SideMenuHeaderView()
    }
}


//#Preview {
//    SideMenuHeaderView()
//}
