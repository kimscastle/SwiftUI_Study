//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/01.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List{
            HStack{
                Text("Sunny")
                
                Spacer()
                
                Image(systemName: "sun.max")
                    .foregroundColor(.green)
            }
            .padding()
            HStack{
                Text("Rainy")
                Spacer()
                Image(systemName: "cloud.rain")
                    .foregroundColor(.green)
            }
            .padding()
                        
            HStack{
                Text("Cloudy")
                Spacer()
                Image(systemName: "smoke")
                    .foregroundColor(.green)
            }
            .padding()
            HStack{
               Text("Windy")
               Spacer()
               Image(systemName: "wind")
                   .foregroundColor(.green)
           }
           .padding()
           
           
           HStack{
               Text("Snowy")
               Spacer()
               Image(systemName: "snow")
                   .foregroundColor(.green)
           }
           .padding()
        }
        .font(.system(size: 25, weight: .bold, design: .rounded))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
