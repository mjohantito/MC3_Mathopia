//
//  ViewContent.swift
//  MC3_Mathopia
//
//  Created by Joey Wiryawan on 15/08/23.
//

import SwiftUI

struct ViewContent: View {
    var body: some View {
        ARViewRepresentable()
            .ignoresSafeArea(.all)
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ViewContent()
    }
}
