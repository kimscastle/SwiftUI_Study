//
//  PickerContentView.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/05/22.
//

import SwiftUI

struct PickerContentView: View {
    
    @State private var selectionValue: Int = 0
    
    let myColorArray: [String] = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
 
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(changeColor(index: selectionValue))
                .frame(width: 50, height: 50)
            Text("선택된 값: \(selectionValue)")
            Text("선택된 색깔: \(myColorArray[selectionValue])")
            Picker("피커", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(3)
            })
            .pickerStyle(.segmented)
            Picker("피커", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .pickerStyle(.inline)
            .frame(width: 50, height: 100)
            .clipped()
            .padding()
            .border(changeColor(index: selectionValue), width: 10)
        }
        .padding(.horizontal, 50)
    }
}

struct PickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        PickerContentView()
    }
}
