//
//  ContentView.swift
//  WWDC'22-ChinesePorcelain-RidoHendrawan
//
//  Created by Rido Hendrawan on 21/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    
    var body: some View {
        switch viewRouter.currentPage {
        case .Page01:
            page01View()
//                .transition(.opacity)
        case .Page02:
            page02View()
                .transition(.opacity)
        case .Page03:
            page03View()
                .transition(.slide)
        case .Page04a:
            page04aView()
                .transition(.scale)
        case .Page04b:
            page04bView()
                .transition(.scale)
        case .Page04c:
            page04cView()
                .transition(.scale)
        case .Page05a:
            page05aView()
                .transition(.slide)
        case .Page05b:
            page05bView()
                .transition(.slide)
        case .Page05c:
            page05cView()
                .transition(.slide)
        case .Page06a1:
            page06a1View()
                .transition(.scale)
        case .Page06a2:
            page06a2View()
                .transition(.scale)
        case .Page06a3:
            page06a3View()
                .transition(.scale)
        case .Page06b1:
            page06b1View()
                .transition(.scale)
        case .Page06b2:
            page06b2View()
                .transition(.scale)
        case .Page06b3:
            page06b3View()
                .transition(.scale)
        case .Page06c1:
            page06c1View()
                .transition(.scale)
        case .Page06c2:
            page06c2View()
                .transition(.scale)
        case .Page06c3:
            page06c3View()
                .transition(.scale)
        case .Page07a1:
            page07a1View()
                .transition(.slide)
        case .Page07a2:
            page07a2View()
                .transition(.slide)
        case .Page07a3:
            page07a3View()
                .transition(.slide)
        case .Page07b1:
            page07b1View()
                .transition(.slide)
        case .Page07b2:
            page07b2View()
                .transition(.slide)
        case .Page07b3:
            page07b3View()
                .transition(.slide)
        case .Page07c1:
            page07c1View()
                .transition(.slide)
        case .Page07c2:
            page07c2View()
                .transition(.slide)
        case .Page07c3:
            page07c3View()
                .transition(.slide)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
