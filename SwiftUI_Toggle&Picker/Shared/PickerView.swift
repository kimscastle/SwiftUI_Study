//
//  PickerView.swift
//  SwiftUI_Toggle&Picker
//
//  Created by uiskim on 2022/04/29.
//

import SwiftUI

struct PickerView: View {
    
    @State private var selectFlavor: Flavor = Flavor.Chocolate
    var int: st = .one
    
    var body: some View{
        VStack{
            Picker("", selection: $selectFlavor) {
                Text("Chocolate").tag(Flavor.Chocolate)
                Text("Vanilla").tag(Flavor.Vanilla)
                Text("Strawberry").tag(Flavor.Strawberry)
                Text("MintChocolate").tag(Flavor.MintChocolate)
            }
            .pickerStyle(.segmented)

            Text("숫자는 : \(int.rawValue)")
            
            Text("선택한 맛 : \(selectFlavor.rawValue)")
            //selectFlavor은 .Chocolate가 들어가있는데 이 변수의 타입은 Flavor이고 \()안에는
                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
}

enum Flavor: String {
    case Chocolate
    case Vanilla
    case Strawberry
    case MintChocolate
}

enum st: Int {
    case one = 1
    case two
    case three
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
