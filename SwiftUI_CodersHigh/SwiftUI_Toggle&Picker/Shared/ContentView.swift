//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggle: Bool = false
    //false면 light모드 true면 dark모드
    
    var body: some View {
        VStack{
            Text("DARK MODE")
                .font(.largeTitle)
                .foregroundColor(.pink)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(.pink, lineWidth: 3))
            
            Image(isToggle ? "dark_mode" : "light_mode")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 300)
            
            HStack {
                Toggle("Label", isOn: $isToggle)
                //Toggle(isOn: $isToggle){
                //    Text("Label")}도 가능
                    .labelsHidden()
                    .toggleStyle(SwitchToggleStyle(tint: .pink))
                
                Text(isToggle ? "ON" : "OFF")
                    .font(.title)
                    .padding()
                    .foregroundColor(.pink)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
