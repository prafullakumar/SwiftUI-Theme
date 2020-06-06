//
//  PrimaryHeader.swift
//  ThemingSwiftUI
//
//  Created by Prafulla Singh on 6/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import Foundation
import SwiftUI

struct PrimaryHeader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: Matrix.headerPrimarySize,
                              weight: .bold,
                              design: .default))
            .foregroundColor(Color.textHeaderPrimary)
    }
}

extension View {
    func primaryHeader() -> some View {
         return self.modifier(PrimaryHeader())
    }
}

struct SecondaryHeader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: Matrix.headerSecondarySize,
                              weight: .semibold,
                              design: .default))
            .foregroundColor(Color.textHeaderPrimary)
    }
}

extension View {
    func secondaryHeader() -> some View {
         return self.modifier(SecondaryHeader())
    }
}


struct Paragraph: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: Matrix.paragraphSize,
                              weight: .regular,
                              design: .default))
            .foregroundColor(Color.textHeaderPrimary)
    }
}

extension View {
    func paragraph() -> some View {
         return self.modifier(Paragraph())
    }
}
