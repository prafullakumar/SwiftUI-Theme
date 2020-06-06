//
//  Color+Theme.swift
//  ThemingSwiftUI
//
//  Created by Prafulla Singh on 6/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI

extension Color {
    
    static var theme: Color  {
        return Color("theme")
    }
    
    static var error: Color  {
        return Color("error")
    }
    
    static var success: Color  {
        return Color("success")
    }
    
    static var warning: Color  {
        return Color("warning")
    }
    
    static var solidButtontext: Color  {
        return Color("solidButtontext")
    }
    
    static var textHeaderPrimary: Color  {
        return Color("textHeaderPrimary")
    }
    
    static var textHeaderSecondary: Color  {
        return Color("textHeaderSecondary")
    }
    
    static var textParagraph: Color  {
        return Color("textParagraph")
    }
}


extension UIColor {

    static var theme: UIColor  {
        return UIColor(named: "theme")!
     }
      
      static var error: UIColor  {
          return UIColor(named: "error")!
      }
      
      static var success: UIColor  {
          return UIColor(named: "success")!
      }
      
      static var warning: UIColor  {
          return UIColor(named: "warning")!
      }
      
      static var solidButtontext: UIColor  {
          return UIColor(named: "solidButtontext")!
      }
      
      static var textHeaderPrimary: UIColor  {
          return UIColor(named: "textHeaderPrimary")!
      }
      
      static var textHeaderSecondary: UIColor  {
          return UIColor(named: "textHeaderSecondary")!
      }
      
      static var textParagraph: UIColor  {
          return UIColor(named: "textParagraph")!
      }
}
