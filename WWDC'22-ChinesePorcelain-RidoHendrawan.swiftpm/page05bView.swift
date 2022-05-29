//
//  page05bView.swift
//  WWDC'22-ChinesePorcelain-RidoHendrawan
//
//  Created by Rido Hendrawan on 22/04/22.
//

import SwiftUI

struct page05bView: View {
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
                
//                patternShapeSketch-1
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .Page06b1
                    }
                }) {
                    Image("patternPainting-1")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .padding(40)
                        .shadow(color: .gray, radius: 10, x: 0, y: 10)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .rotationEffect(Angle(degrees: self.animateMovement ? self.angleSpace : 0.0))
                        .onAppear {
                            withAnimation(self.loopingAnimation) {
                                self.angleSpace += 2.0
                            }
                        }
                }
                
//                patternShapeSketch-2
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .Page06b2
                    }
                }) {
                    Image("patternPainting-2")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .padding(40)
                        .shadow(color: .gray, radius: 10, x: 0, y: 10)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .rotationEffect(Angle(degrees: self.animateMovement ? self.angleSpace : 0.0))
                        .onAppear {
                            withAnimation(self.loopingAnimation) {
                                self.angleSpace += 2.0
                            }
                        }
                }
                
//                patternShapeSketch-3
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .Page06b3
                    }
                }) {
                    Image("patternPainting-3")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .padding(40)
                        .shadow(color: .gray, radius: 10, x: 0, y: 10)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .rotationEffect(Angle(degrees: self.animateMovement ? self.angleSpace : 0.0))
                        .onAppear {
                            withAnimation(self.loopingAnimation) {
                                self.angleSpace += 2.0
                            }
                        }
                }
                Spacer()
            }
            Spacer()
                .frame(height: 250)
            Spacer()
        }.background(
            Image("page05-pagePaintingSelect")
            .resizable()
            .scaledToFit()
            .clipped())
        .edgesIgnoringSafeArea(.all)
    }
}

struct page05bView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
