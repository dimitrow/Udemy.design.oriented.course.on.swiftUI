//
//  TextExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 13.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI
import LoremSwiftum

//add loremSwiftum in target for mac project

struct TextExamples: View {
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                CatView()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(Lorem.title)
                        .header1()
                    
                    Text(Lorem.words(6))
                    .detailText()
                        .padding(.bottom)
                    
                    Text(Lorem.paragraph)
                    .allowsTightening(true)
                        .minimumScaleFactor(0.75)
                        .frame(height: 100)
                    
                    Text(Lorem.paragraphs(3))
                    .bodyText()
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    
                }.padding()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TextExamples_Previews: PreviewProvider {
    static var previews: some View {
        TextExamples()
    }
}
