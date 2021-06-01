//
//  IntroAnimation.swift
//  DesignProject
//
//  Created by Karin Prater on 20.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct IntroAnimation: View {
    
    @State private var isAnimating = false
    
    @State private var isShown = false
    
    @State private var isFinished = false
    
    @State private var showObjections = false
    
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
            
                Text("What can be animated?")
                    .font(.title)
                
                Text("can animate changes to views in containers that are already on screen").padding()
                    
                Divider()
                
                VStack {
                    Text("1. changes to the arguments of animatable view modifiers")
                    
                    
                    Button(action: {
                        withAnimation(Animation.linear(duration: 3)) {
                            self.isAnimating.toggle()
                        }
                        
                    }) {
                        Text("animate with opacity ")
                    }
                    
                    Color.red
                        .frame(width: 50, height: 50)
                        .opacity(isAnimating ? 0 : 1)
                    
                  
                }
                Divider()
                
                VStack(spacing: 10) {
                    Text("2. appearance and disappearance of views")
                    
                    Button(action: {
                        withAnimation {
                            self.isShown.toggle()
                        }
                        
                    }) {
                        Text(isShown ? "hide view" :"show view")
                    }
                    
                   
                    if isShown {
                        
                        Text("I am moving")
                            .padding()
                            .background(Color.yellow)
                            .transition(.move(edge: .leading))
                        
                        Text("I am scaling")
                        .padding()
                        .background(Color.yellow)
                        .transition(.scale)
                    }
                    
                }.frame(height: 200, alignment: .top)
                
                Divider()
                VStack {
                    
                    Text("3. changes to the arguments to the creation of shapes").frame(height: 50)
                    
                    Button(action: {
                        withAnimation(.easeInOut(duration: 2)) {
                            self.isFinished.toggle()
                        }
                        
                    }) {
                        Text("animate shape")
                    }
                    
                    HStack {
                        RoundedRectangle(cornerRadius: isFinished ? 25 : 0)
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                        
                        PiShape(pct: self.isFinished ? 1 : 0)
                            .fill(Color.green)
                            .frame(width:  50, height: 50)
                    }
                }
           //
                Divider()
                
                VStack {
                    Button(action: {
                        withAnimation(.spring()) {
                            self.showObjections.toggle()
                        }
                        
                    }) {
                        Text("what we will do").font(.title)
                    }
                    
                    VStack(spacing : 10) {
                      
                        Text("how to make an animatin go")
                        Text("how to controll timing, speed, repeating")
                        Text("define appear / disappear of view")
                        Text("how to use view modifiers and make our own animatable ")
                        Text("how to animate shapes")
                        
                    }.padding(20)
                        .background(Color.blue.opacity(0.1))
                        .rotationEffect(showObjections ? Angle.degrees(0) : Angle.degrees(180))
                        .scaleEffect(showObjections ? 1 : 0.1)
                        .opacity(showObjections ? 1 : 0)
                }
                
                
            } .padding()
                .font(.body)
        }
    }
}

struct IntroAnimation_Previews: PreviewProvider {
    static var previews: some View {
        IntroAnimation()
    }
}



