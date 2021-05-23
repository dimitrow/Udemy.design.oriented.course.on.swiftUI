//
//  CalculatorView.swift
//  QuizApp
//
//  Created by Karin Prater on 07.01.21.
//

import SwiftUI

let numberColor = Color(#colorLiteral(red: 0.9987923503, green: 0.9936119914, blue: 0.9557008147, alpha: 1))
let operationColor = Color(#colorLiteral(red: 0.6552829146, green: 0.641151607, blue: 0.5988391042, alpha: 1))
let resultColor = Color(#colorLiteral(red: 0.4654172063, green: 0.5797718763, blue: 0.4293214679, alpha: 1))


struct CalculatorView: View {
    
    let topBackgroundColor = Color(.systemBackground)
    let bottomBackgroundColor = Color(.secondarySystemBackground)
    
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 0) {
            
            VStack(alignment: .trailing, spacing: 10) {
                Text("2870").font(.title)
                    .bold()
                    .padding(.top)
                Text("325 + 67 / 8")
                   
            }
            .padding().padding(.trailing)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(topBackgroundColor.edgesIgnoringSafeArea(.top))
         
            
            VStack(spacing: 8) {
                HStack(spacing: 8) {
                    Text("C")
                        .numberStyle()
                    Text("+/-")
                        .numberStyle()
                    Text("%")
                        .numberStyle()
                    Text("/")
                        .operationStyle()
                }
                
                HStack(spacing: 8) {
                    Text("7")
                        .numberStyle()
                    Text("8")
                        .numberStyle()
                    Text("9")
                        .numberStyle()
                    Text("x")
                        .operationStyle()
                }
                
                HStack(spacing: 8) {
                    Text("4")
                        .numberStyle()
                    Text("5")
                        .numberStyle()
                    Text("6")
                        .numberStyle()
                    Text("+")
                        .operationStyle()
                }
                
                HStack(spacing: 8) {
                    Text("1")
                        .numberStyle()
                    Text("2")
                        .numberStyle()
                    Text("3")
                        .numberStyle()
                    Text("-")
                        .operationStyle()
                }
                HStack(spacing: 8) {
                    Text(".")
                        .numberStyle()
                    Text("0")
                        .numberStyle()
                    Text("⌫")
                        .numberStyle()
                    Text("=")
                        .foregroundColor(.white)
                        .padding(5)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(RoundedRectangle(cornerRadius: 8.0)
                                        .foregroundColor(.red)
                                            .shadow(radius: 2))
                }
                
            }.padding()
            
        }
        .background(bottomBackgroundColor.edgesIgnoringSafeArea(.all))
       
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalculatorView()
                .previewDevice("iPhone 11")
            CalculatorView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
        }
    }
}

//MARK: - solution

struct SharedButtonStyle : ViewModifier {
    
    let buttonColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding(5)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(RoundedRectangle(cornerRadius: 8.0)
                            .foregroundColor(buttonColor)
                            .shadow(radius: 2))
    }
}

struct NumberStyle: ViewModifier {
        
    func body(content: Content) -> some View {
        content
            .modifier(SharedButtonStyle(buttonColor: numberColor))
            .foregroundColor(.blue)
                  
    }
}

struct OperationStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .modifier(SharedButtonStyle(buttonColor: operationColor))
    }
}

extension View {
    func numberStyle() -> some View {
        ModifiedContent(
            content: self,
            modifier: NumberStyle()
        )
    }
    func operationStyle() -> some View {
        ModifiedContent(
            content: self,
            modifier: OperationStyle()
        )
    }
}
