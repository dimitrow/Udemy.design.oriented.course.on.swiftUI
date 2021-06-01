//
//  ImageColorOverview.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ImageColorOverview: View {
    var body: some View {
        
        ScrollView {
            VStack {
                
                ZStack {
                    Text("cats").bold()
                    //Color.red.frame(width: 100, height: 100)
                    Image("cat_100x100").opacity(0.2)
                }
                
                HStack {
                    Text("brightness")
                    Image("cat_100x100").brightness(-0.2)
                    Image("cat_100x100").brightness(0)
                    Image("cat_100x100").brightness(0.2)
                }
                
                HStack {
                    Text("saturation")
                    Image("cat_100x100").saturation(0)
                    Image("cat_100x100").saturation(1)
                    Image("cat_100x100").saturation(2)
                }
                
                HStack {
                    Text("Contrast")
                    Image("cat_100x100").contrast(0.2)
                    Image("cat_100x100").contrast(1)
                    Image("cat_100x100").contrast(13)
                }
                
                HStack {
                    Text("ColorMultiply")
                    Image("cat_100x100").colorMultiply(Color.red)
                }
                
                HStack {
                    Text("grayscale")
                    Image("cat_100x100").grayscale(0.1)
                }
                
                HStack {
                    
                    Text("blur").blur(radius: 2)
                    
                    
                    Image("cat_100x100").blur(radius: 5)
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ImageColorOverview_Previews: PreviewProvider {
    static var previews: some View {
        ImageColorOverview()
    }
}
