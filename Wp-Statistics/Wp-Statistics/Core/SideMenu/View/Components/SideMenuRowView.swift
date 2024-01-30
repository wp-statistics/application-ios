//
//  SideMenuRowView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelectedOption: Bool {
        return selectedOption == option
    }
    
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.large)
                //.foregroundStyle(.blue)
            
            Text(option.title)
                .font(.subheadline)
                //.foregroundStyle(.blue)
            
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelectedOption ? .primary : .primary)
        .frame(width: 216, height: 44)
//        .background(isSelectedOption ? .menuSelection : .clear)
        .background(isSelectedOption ? .red : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct SideMenuRowView_Preview : PreviewProvider{
    static var previews: some View{
        SideMenuRowView(option: .home, selectedOption: .constant(.home))
    }
}


//#Preview {
//    SideMenuRowView(option: .home, selectedOption: .constant(.home))
//}
