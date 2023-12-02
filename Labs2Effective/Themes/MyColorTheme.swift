//
//  MyColorTheme.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import SwiftUI

struct MyColorTheme{

    struct Text{
        static let Orange = Color("OrangeText")
        static let Primary = Color("DarkBlueText")
        static let Secondary = Color("myGrayColor")
        static let White = Color("PrimaryWhiteText")
        static let LightBlue = Color("LightBlueText")
        static let Blue = Color("BlueText")
        static let LightGray = Color("LightGrayText")
    }
    
    struct NavBar{
        static let NavBarChip = Color("ButtonHomeColor").opacity(0.10)
    }
    
    struct Backgrounds{
        static let PrimaryBackground = Color("BGPrimaryColor")
        static let SecondaryBackground = Color("BGDoctorTabColor")
    }
    struct Shadow{
        static let PrimaryShadow = Color("ShadowColor")
    }
    struct Divider{
        static let PrimaryDivider = Color("DividerColor")
    }
}

