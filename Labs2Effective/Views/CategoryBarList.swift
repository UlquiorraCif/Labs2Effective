//
//  CategoryBarList.swift
//  Labs2Effective
//
//  Created by Lebedev Kirill on 02.12.2023.
//

import SwiftUI

struct CategoryBarList: View {
    
    let categories: [Category] = [
            Category(image: "covid_19", name: "Covid 19"),
            Category(image: "doctor", name: "Doctor"),
            Category(image: "medicine", name: "Medicine"),
            Category(image: "hospital", name: "Hospital")
        ]
    var body: some View {
        HStack{
            ForEach(categories.indices) { index in
                CategoryBar(category: categories[index])
                        
            if index != categories.indices.last{
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    CategoryBarList()
}

