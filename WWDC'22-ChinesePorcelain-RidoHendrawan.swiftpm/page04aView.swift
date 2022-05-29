//
//  page04aView.swift
//  WWDC'22-ChinesePorcelain-RidoHendrawan
//
//  Created by Rido Hendrawan on 22/04/22.
//

import SwiftUI

struct page04aView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var angleSpace: Double = 0.0
    @State var animateMovement = true
    var loopingAnimation: Animation {
        Animation.linear(duration: 2.0)
            .repeatForever()
    }
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Spacer()
                VStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            viewRouter.currentPage = .Page05a
                        }
                    }) {
                        Image("buttonNext")
                            .resizable()
                            .frame(width: 225, height: 85)
                            .padding(65)
                            .shadow(color: .gray, radius: 10, x: 0, y: 10)
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                            .rotationEffect(Angle(degrees: self.animateMovement ? self.angleSpace : 0.0))
                            .onAppear {
                                withAnimation(self.loopingAnimation) {
                                    self.angleSpace += 10.0
                                }
                            }
                    }
                }
            }
            Spacer()
        }.background(
            Image("page04aView")
            .resizable()
            .scaledToFit()
            .clipped())
        .edgesIgnoringSafeArea(.all)
    }
}

struct page04aView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
