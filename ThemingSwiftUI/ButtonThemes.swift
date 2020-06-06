//
//  ButtonThemes.swift
//  ThemingSwiftUI
//
//  Created by Prafulla Singh on 6/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI

public struct PrimaryButton: ViewModifier {
    public func body(content: Content) -> some View {
        content.foregroundColor(Color.theme)
        .padding()
        .font(Font.system(size: Matrix.paragraphSize,
                        weight: .semibold,
                        design: .default))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.theme, lineWidth: 1)
        )
            
    }
}

extension View {
    public func primaryButton() -> some View {
        self.modifier(PrimaryButton())
    }
}


public struct SecondaryButton: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .foregroundColor(Color.solidButtontext)
            .padding() //can add custom padding with matrix class
            .font(Font.system(size: Matrix.paragraphSize,
                            weight: .semibold,
                            design: .default))
            .background(Color.theme)
            .cornerRadius(Matrix.cornerRadius)
    }
}

extension View {
    public func secondaryButton() -> some View {
        self.modifier(SecondaryButton())
    }
}
