//
//  ImageSizingOverview.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 24.05.21.
//

import SwiftUI

struct ImageSizingOverview: View {
    var body: some View {
        VStack {
            
            HStack {
                
                Image("dog_100x100")
                Image("dog_200x200")
                Image("dog_400x400")
                
            }
            
            HStack {
                
                Image("dog_100x100")
                    .frame(width: 200, height: 200)
                    .border(Color.green)
                
                Image("dog_100x100")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .border(Color.green)
                
                Image("dog_100x100")
                    .resizable(capInsets: EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 40), resizingMode: .stretch)
                    .frame(width: 200, height: 200)
                    .border(Color.green)
                
                Image("dog_100x100")
                    .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .tile)
                    .frame(width: 150, height: 200)
                    .border(Color.green)
            }.padding(.bottom, 60)
            
            HStack {
                
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 100, alignment: .leading)
                    .border(Color.green)
                
                Image("dog_100x100")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100, alignment: .trailing)
                    .border(Color.green)
                
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 100, alignment: .top)
                    .border(Color.green)
                
                Image("dog_100x100")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 100)
                    .border(Color.green)
                    .clipped()

                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(1.4, contentMode: .fit)
                    .frame(width: 200, height: 100)
                    .border(Color.green)
            }.padding(.bottom, 120)
            
            HStack {
                
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 2.0).foregroundColor(.blue))
                    
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .mask(Text("DOG").font(.system(size: 80, weight: .black, design: .rounded)))
                
            }
        }
    }
}

struct ImageSizingOverview_Previews: PreviewProvider {
    static var previews: some View {
        ImageSizingOverview()
            .previewLayout(.fixed(width: 1100, height: 1200))
    }
}
