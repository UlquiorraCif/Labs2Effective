//
//  DoctorTab.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import Foundation
import SwiftUI

struct DoctorTab: View {
    var body: some View {
            VStack(alignment: .leading){
                HStack{
                    Image("DoctorAvatar1")
                        .resizable()
                        .frame(width: MySizes.doctorAvatarSize,
                               height: MySizes.doctorAvatarSize)
                    VStack(alignment: .leading){
                        Text("Dr. Imran Syahir")
                            .font(Font.custom(MyFontTheme.poppinsBold, size: MySizes.fontLarge))
                            .foregroundColor(MyColorTheme.Text.White)
                        Text("General Doctor")
                            .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontSmall))
                            .foregroundColor(MyColorTheme.Text.LightGray)
                    }
                    Spacer()
                    Button (action: {
                               print("Arrow tapped")
                    }){
                        Image("arrow-right")
                    }
                }
                Divider()
                    .overlay(MyColorTheme.Divider.PrimaryDivider)
                    .frame(height: MySizes.heightDivider)
                HStack{
                    Image("calendar-2")
                        .resizable()
                        .frame(width: MySizes.iconSize,
                               height: MySizes.iconSize)
                    Text("Sunday, 12 June")
                        .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontExtraSmall))
                        .foregroundColor(MyColorTheme.Text.White)
                    Spacer()
                    Image("clock")
                        .resizable()
                        .frame(width: MySizes.iconSize,
                               height: MySizes.iconSize)
                    Text("11:00 - 12:00 AM")
                        .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontExtraSmall))
                        .foregroundColor(MyColorTheme.Text.White)
                        .padding(.trailing, MySizes.paddingTimeFieldInDoctorTab)
                }
            }
            .padding(MySizes.paddingAfterTab)
            .background(MyColorTheme.Backgrounds.SecondaryBackground)
            .cornerRadius(MySizes.cornerRadiusForAllBlock)
    }
}
#Preview {
    DoctorTab()
}
