//
//  SearchBar.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var text: String = ""
    var body: some View {
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: MySizes.searchBarSpacing) {
                    Image("search-normal")
                        .resizable()
                        .frame(width: MySizes.iconSearchSize, height: MySizes.iconSearchSize)
                        .padding(.leading, MySizes.paddingImageSearchBar)
            TextField("", text: $text, prompt: Text("Search doctor or health issue").foregroundColor(MyColorTheme.Text.LightBlue))
                .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontMedium))
                .padding(.vertical, MySizes.paddingSearchField)
                }
                .background(MyColorTheme.Backgrounds.PrimaryBackground)
                .cornerRadius(MySizes.cornerRadiusForAllBlock)
    }
}

#Preview {
    SearchBar()
}
