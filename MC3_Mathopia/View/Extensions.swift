//
//  Extensions.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 21/08/23.
//

import SwiftUI

extension View{
    
    func popupNavigationView<Content: View>(HorizontalPadding: CGFloat = 40,show:Binding<Bool>,@ViewBuilder content: @escaping()->Content)->some View {
        
        return self
            .overlay {
                if show.wrappedValue {
                    
                    GeometryReader{ proxy in
                        
                        let size = proxy.size
                        
                        NavigationStack{
                            content()
                        }
                        .frame(width: size.width - HorizontalPadding, height: size.height/1.7, alignment: .center)
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    }
                    
                }
            }
    }
}
