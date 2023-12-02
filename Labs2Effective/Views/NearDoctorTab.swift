//
//  NearDoctorTab.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import SwiftUI

struct NearDoctorTab: View {
    let nearDoctor: NearDoctor
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(nearDoctor.doctorAvatar)
                    .resizable()
                    .frame(width: MySizes.doctorAvatarSize, height: MySizes.doctorAvatarSize)
                VStack(alignment: .leading){
                    Text(nearDoctor.name)
                        .font(Font.custom(MyFontTheme.poppinsBold, size: MySizes.fontLarge))
                        .foregroundColor(MyColorTheme.Text.Primary)
                    Text(nearDoctor.speciality)
                        .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontSmall))
                        .foregroundColor(MyColorTheme.Text.LightBlue)
                }
                Spacer()
                Image("location")
                Text(String(nearDoctor.distance) + " KM")
                .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontSmall))
                .foregroundColor(MyColorTheme.Text.LightBlue)

            }
            Divider()
                .overlay(MyColorTheme.Divider.PrimaryDivider)
                .frame(height: MySizes.heightDivider)
            HStack{
                Image("clock-orange")
                    .resizable()
                    .frame(width: MySizes.iconSize, height: MySizes.iconSize)
                Text(String(nearDoctor.rating) + " (" + String(nearDoctor.reviews) + " Reviews)")
                    .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontExtraSmall))
                    .foregroundColor(MyColorTheme.Text.Orange)
                Spacer()
                Image("clock-blue")
                    .resizable()
                    .frame(width: MySizes.iconSize, height: MySizes.iconSize)
                Text("Open at " + nearDoctor.time)
                    .font(Font.custom(MyFontTheme.poppinsRegular, size: MySizes.fontExtraSmall))
                    .foregroundColor(MyColorTheme.Text.Blue)
                    .padding(.trailing, MySizes.paddingTimeFieldInNearDoctor)
            }
        }
        .padding(MySizes.paddingAfterTab)
        .background(.white)
        .cornerRadius(MySizes.cornerRadiusForAllBlock)
        .shadow(color: MyColorTheme.Shadow.PrimaryShadow, radius: MySizes.radiusShadow, x: MySizes.xCoordinateShadow, y: MySizes.yCoordinateShadow)
    }
}

#Preview {
    NearDoctorTab(
        nearDoctor: NearDoctor(
        id: 1,
        name: "Dr. Joseph Brostito",
        doctorAvatar: "DoctorAvatar2",
        speciality: "Dental Specialist",
        distance: 1.2,
        rating: 4.8,
        reviews: 120,
        time: "17.00"
    ))
}

