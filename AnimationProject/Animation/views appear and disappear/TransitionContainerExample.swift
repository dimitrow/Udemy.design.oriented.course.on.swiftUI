//
//  TransitionContainerExample.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 04.06.21.
//

import SwiftUI

struct TransitionContainerExample: View {
    
    @State private var selectedAnimal: String = "cat"
    let animation = Animation.easeIn(duration: 2.0)
    
    var body: some View {
        
        VStack {
            HStack(alignment: .top, spacing: 40) {
                
                Button(action: {
                    
                    withAnimation(animation) {
                        
                        selectedAnimal = "cat"
                    }
                }, label: {
                    Text("cat")
                })
                .scaleEffect(selectedAnimal == "cat" ? 2 : 1)
                
                Button(action: {
                    
                    withAnimation(animation) {
                        
                        selectedAnimal = "dog"
                    }
                }, label: {
                    Text("dog")
                })
                .scaleEffect(selectedAnimal == "dog" ? 2 : 1)
            }
            
//            AnimalCard(animal: selectedAnimal)
            
            if selectedAnimal == "cat" {

                AnimalCard(animal: "cat").transition(.slide)
            } else {
                AnimalCard(animal: "dog").transition(.slide)
            }
            
                        
        }
    }
}

struct TransitionContainerExample_Previews: PreviewProvider {
    static var previews: some View {
        TransitionContainerExample()
    }
}

struct AnimalCard: View {
    
    let cornerRadius: CGFloat = 40
    let animal: String
    var imageName: String {
        
        return animal == "cat" ? "cat_100x100" : "dog_100x100"
    }
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150, alignment: .top)
                .clipped()
            
            Text(animal)
            
        }.frame(width: 200, height: 200, alignment: .top)
        .cornerRadius(cornerRadius)
        .background(Color("Background2").cornerRadius(cornerRadius).shadow(radius: cornerRadius))
        .transition(AnyTransition.slide.combined(with: .scale))
    }
}
