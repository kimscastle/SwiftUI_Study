//
//  MyGeometryReader.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/17.
//

import SwiftUI

struct MyGeometryReader: View {
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        
            
            VStack {
                Spacer()
                HStack(spacing: 0) {
                    Text("1")
                        .font(.largeTitle)
                        .frame(width: screenSize.width/4)
                        .foregroundColor(.white)
                        .background(.red)
                    Text("2")
                        .font(.largeTitle)
                        .frame(width: screenSize.width/4)
                        .foregroundColor(.white)
                        .background(.blue)
    //                Text("3")
    //                    .font(.largeTitle)
    //                    .frame(width: geometryReader.size.width / 3)
    //                    .foregroundColor(.white)
    //                    .background(.green)
    //                Text("4")
    //                    .font(.largeTitle)
    //                    .frame(width: 50)
    //                    .foregroundColor(.white)
    //                    .background(.purple)
                }
                Spacer()
            }

    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
