//
//  TextView.swift
//  GradientText
//
//  Created by Eryus Tech on 06/09/24.
//

import SwiftUI

struct GradientText: View {
    var text: LocalizedStringKey
    var gradientColors: [Color] = [Color.red, Color.green, Color.blue]
    var size: CGFloat = 24
    var font: Font? = nil
    
    var body: some View {
        Text(text)
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
            .mask(Text(text))
            .font(font ?? Font.custom("Poppins-Bold", size: size))
    }
}

extension GradientText {
    init(
        text: String = "",
        gradientColors: [Color] = [Color.red, Color.green, Color.blue],
        size: CGFloat = 24,
        font: Font? = nil
    ) {
        self.init(text: LocalizedStringKey(text), gradientColors: gradientColors, size: size, font: font)
    }
    
}

#Preview {
    GradientText(text: "Hello, Louise!", gradientColors: [Color.yellow, Color.purple, Color.black])
}
