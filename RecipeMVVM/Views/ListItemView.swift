//
//  ListItemView.swift
//  RecipeMVVM
//
//  Created by Anup Saud on 2025-03-21.
//

import SwiftUI

struct ListItemView: View {
    let name: String
    let caloriesPer100Grams: Int
    let imageName: String
    let imageDim : CGFloat = 70
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .foregroundStyle(.orange)
                Text("\(caloriesPer100Grams) calories per 100 grams")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }.padding()
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: imageDim,height: imageDim)
                .clipShape(.rect(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 2)
                )
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding()
        .background(Color.black.clipShape(.rect(cornerRadius: 10)))
        .padding(.horizontal)
        
    }
}

#Preview {
    ListItemView(name: "Hummus", caloriesPer100Grams: 322, imageName: "IMGhummus")
}
