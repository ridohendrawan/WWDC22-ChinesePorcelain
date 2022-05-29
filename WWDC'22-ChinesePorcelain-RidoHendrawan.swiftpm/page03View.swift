//
//  page03View.swift
//  WWDC'22-ChinesePorcelain-RidoHendrawan
//
//  Created by Rido Hendrawan on 21/04/22.
//

import SwiftUI

struct page03View: View {
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
                        viewRouter.currentPage = .Page04a
                    }
                }) {
                    Image("patternShapeSketch-1")
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
                        viewRouter.currentPage = .Page04b
                    }
                }) {
                    Image("patternShapeSketch-2")
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
                        viewRouter.currentPage = .Page04c
                    }
                }) {
                    Image("patternShapeSketch-3")
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
            Image("page03-pageShapeSelect")
            .resizable()
            .scaledToFit()
            .clipped())
        .edgesIgnoringSafeArea(.all)
    }
}

struct page03View_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter()).previewInterfaceOrientation(.landscapeRight)
    }
}
