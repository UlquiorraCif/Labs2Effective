//
//  NearDoctorTabList.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import SwiftUI

struct NearDoctorTabList: View {
    let nearDoctors: [NearDoctor] = [
        NearDoctor(
            id: 1,
            name: "Dr. Joseph Brostito",
            doctorAvatar: "DoctorAvatar2",
            speciality: "Dental Specialist",
            distance: 1.2,
            rating: 4.8,
            reviews: 120,
            time: "17.00"
        ),
        NearDoctor(
            id: 2,
            name: "Dr. Imran Syahir",
            doctorAvatar: "DoctorAvatar1",
            speciality: "General Doctor",
            distance: 1.2,
            rating: 4.8,
            reviews: 120,
            time: "17.00"
        )
    ]
    var body: some View {
        VStack(alignment: .leading){
            Text("Near Doctor")
                .font(Font.custom(MyFontTheme.poppinsSemiBold, size: MySizes.fontLarge))
                .foregroundColor(MyColorTheme.Text.Primary)
            ForEach(nearDoctors.indices) { index in
                NearDoctorTab(nearDoctor: nearDoctors[index])
                
                if index != nearDoctors.indices.last{
                    Spacer().frame(height: 20)
                }
            }
        }
    }
}
#Preview {
    NearDoctorTabList()
}
