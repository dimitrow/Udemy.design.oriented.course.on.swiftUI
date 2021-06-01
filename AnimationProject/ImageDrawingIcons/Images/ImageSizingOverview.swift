//
//  ImageSizingOverview.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ImageSizingOverview: View {
    var body: some View {
        ScrollView {
        VStack {
            HStack {
                
                Image("dog_100x100")
                VStack {
                Image("dog_200x200")
                    Color.red.frame(width: 200, height: 200)
                }
                Image("dog_400x400")
            }
            
            HStack{
                Image("dog_100x100")
                    .frame(width: 200, height: 200)
                    .border(Color.gray)
                
                Image("dog_100x100")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .border(Color.gray)
                
                Image("dog_100x100")
                    .resizable(capInsets: EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30), resizingMode: .stretch)
                .frame(width: 200, height: 200)
                
                Image("dog_100x100")
                    .resizable(capInsets: EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0), resizingMode: .tile)
                           .frame(width: 250, height: 200)
            }
            
            HStack{
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 100, alignment: .top)
                    .border(Color.gray)
                
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 100, alignment: .leading)
                    .border(Color.gray)
                Image("dog_100x100")
                    .scaledToFit() //scaleToFill
                    .frame(width: 200, height: 100)
                
                
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(1.4, contentMode: .fit)
                    .frame(width: 200, height: 100)
                    .border(Color.gray)
                
                
            }.padding(.bottom, 150)
            
            HStack {
                Image("dog_100x100")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 100, alignment: .top)
                    .border(Color.gray)
                    .clipped()
                
                
                 Image("dog_100x100")
                .clipShape(EmptyArrow(isVertical: true))
                
                 Image("dog_100x100")
                    .mask(Text("Arrow").font(.system(size: 30, weight: .black)))
                
                 Image("dog_100x100")
                .cornerRadius(20)
                
            }
            
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ImageSizingOverview_Previews: PreviewProvider {
    static var previews: some View {
        ImageSizingOverview()
            .previewLayout(.fixed(width: 1000, height: 1500))
    }
}
