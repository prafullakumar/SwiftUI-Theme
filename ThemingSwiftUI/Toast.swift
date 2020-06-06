//
//  Toast.swift
//  ThemingSwiftUI
//
//  Created by Prafulla Singh on 6/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//
//Picked:  https://stackoverflow.com/questions/56550135/swiftui-global-overlay-that-can-be-triggered-from-any-view


import SwiftUI

enum ToastType {
    case error(message: String)
    case success(message: String)
    case warning(message: String)
}

struct Toast<Presenting>: View where Presenting: View {

    /// The binding that decides the appropriate drawing in the body.
    @Binding var isShowing: Bool
    /// The view that will be "presenting" this toast
    let presenting: () -> Presenting
    /// The text to show
    let type: ToastType

    var backgroundColor: Color {
        switch type {
        case .error:
            return Color.error
        case .warning:
            return Color.warning
        case .success:
            return Color.success
        }
    }
    
    var toastMessage: String {
        switch type {
        case .error(let message):
            return message
        case .warning(let message):
            return message
        case .success(let message):
            return message
        }
    }
    
    var toastImage: Image {
        switch type {
        case .error:
            return Image(systemName: "xmark.circle")
        case .warning:
            return Image(systemName: "exclamationmark.triangle")
        case .success:
            return Image(systemName: "checkmark.circle")
        }
    }
    
    var body: some View {
        if self.isShowing {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isShowing = false
                }
            }
        }
        return GeometryReader { geometry in

            ZStack(alignment: .top) {
                self.presenting()
                ZStack {
                    Capsule()
                        .fill(self.backgroundColor)

                    HStack(spacing: Matrix.stackViewSpacing) {
                            self.toastImage
                            Text(self.toastMessage).paragraph()
                    }
                } //ZStack (inner)
                .frame(width: geometry.size.width / 1.25, height: geometry.size.height / 10)
                .opacity(self.isShowing ? 1 : 0)

            }

        }

    }

}

extension View {

    func toast(isShowing: Binding<Bool>, type: ToastType) -> some View {
        Toast(isShowing: isShowing,
              presenting: { self },
              type: type)
    }

}




