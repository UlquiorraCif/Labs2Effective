//
//   WelcomeBar.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import SwiftUI

struct WelcomeBar: View {
    let user: User = User(id: 1, name: "James", image: "Frame")
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Hello,")
                    .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontLarge))
                    .foregroundStyle(MyColorTheme.Text.LightBlue)
                Text("Hi " + user.name)
                    .font(Font.custom(MyFontTheme.poppinsBold, size: MySizes.fontExtraLarge))
                    .foregroundStyle(MyColorTheme.Text.Primary)
            }
            Spacer()
            Image(user.image)
                .resizable()
                .frame(width: MySizes.userAvatarSize,
                       height: MySizes.userAvatarSize)
        }
    }
}

#Preview {
    WelcomeBar()
}
