//
//  HomeScreen.swift
//  M5_L5_Task1
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

struct HomeScreen: View {
    @State var half = false
    @State var dim = false
    
    var body: some View {
        Image("tower").resizable()
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0))
            .onTapGesture {
                half.toggle()
                dim.toggle()
            }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
