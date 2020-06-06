//
//  ContentView.swift
//  ThemingSwiftUI
//
//  Created by Prafulla Singh on 6/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Simple Text Button") // set .primaryButton() to update
            }
            .navigationBarTitle("Welcome")
        }
    }
}

struct DetailView: View {
    @State var showErrorToast: Bool = false
    @State var showSuccessToast: Bool = false
    @State var showWarningToast: Bool = false
    @State private var stepper: Double = 0
    @State private var toggleView = true
    
    var body: some View {
        
        
                VStack(spacing: Matrix.stackViewSpacing) {
                    Text("Primary Header").primaryHeader()
                    Text("Secondary Header").secondaryHeader()
                    //simple button
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada.").paragraph()
                    
                    Button.init(("Simple Text Button")) {
                        self.showWarningToast.toggle()
                    }
                    
                    HStack(alignment: .center, spacing: Matrix.stackViewSpacing) {
                        Button.init("Primary") {
                            self.showErrorToast.toggle()
                        }.primaryButton()
                        Button.init("Secondary") {
                            self.showSuccessToast.toggle()
                        }.secondaryButton()
                    }
                    //Slider no need to set color it will take global tint
                    Slider(value: $stepper, in: 0...50, step: 0.1)
                    
                    Toggle(isOn: $toggleView) {
                        Text("Click to toggle").paragraph()
                    }
                    
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                .toast(isShowing: $showErrorToast, type: .error(message: "Error Message"))
                    
                .toast(isShowing: $showSuccessToast, type: .success(message: "Success Message"))
                    
                .toast(isShowing: $showWarningToast, type: .warning(message: "warning Message"))
        
                .navigationBarTitle("Detail View")
                
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
