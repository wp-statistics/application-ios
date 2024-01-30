//
//  SideMenuSectionView.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-25.
//

import SwiftUI

struct SideMenuSectionView: View {
    let section: SideMenuSections
    @Binding var isShowing: Bool
    @Binding var selectedOption: SideMenuOptionModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Text(section.sectionTitle.uppercased())
                .padding(.leading)
                .font(.footnote)
                .foregroundStyle(.gray)
                .padding(.vertical)
            
            ForEach(section.option, id:\.id) { option in
                
                SideMenuRowView(option: option, selectedOption: $selectedOption)
                    .onTapGesture { onOptionTapped(option) }
            }
        }
    }
    
    private func onOptionTapped(_ option: SideMenuOptionModel) {
        selectedOption = option
        isShowing = false
    }
}

struct SideMenuSectionView_Preview : PreviewProvider{
    static var previews: some View{
        SideMenuSectionView(section: .home,
                            isShowing: .constant(false),
                            selectedOption: .constant(.home))
    }
}

//#Preview {
//    SideMenuSectionView(section: .home,
//                        isShowing: .constant(false),
//                        selectedOption: .constant(.home))
//}
