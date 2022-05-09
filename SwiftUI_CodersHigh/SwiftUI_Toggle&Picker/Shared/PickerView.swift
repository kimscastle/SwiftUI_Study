//
//  PickerView.swift
//  SwiftUI_Toggle&Picker
//
//  Created by uiskim on 2022/04/29.
//

//import SwiftUI
//
//struct PickerView: View {
//
//    @State private var selectedFlavor: Flavor = Flavor.Chocolate
//
//    var body: some View{
//        Menu{
//            Picker("", selection: $selectedFlavor) {
//                Text("Chocolate").tag(Flavor.Chocolate)
//                Text("Vanilla").tag(Flavor.Vanilla)
//                Text("Strawberry").tag(Flavor.Strawberry)
//                Text("MintChocolate").tag(Flavor.MintChocolate)
//               }
//            } label: {
//                HStack(spacing:5){
//                    Text(selectedFlavor.rawValue)
//                        .font(.system(size:30, weight: .bold, design: .rounded))
//                    Image(systemName: "chevron.down")
//                        .font(.system(size:20, weight: .medium, design: .rounded))
//            }
//            .foregroundColor(.black)
//            .padding(.horizontal)
//        }
//    }
//}
////menu나 picker모두 내가 설정한 라벨들중 하나를 선택할수 있게 만드는건 똑같은데
////picker은 내가 고른게 print되지만 menu는 내가 label로 title을 설정할 수 있다
////그냥 편하게 menu로 감싸면 custom picker를 만들수있다고 생각하면 될듯
//
//enum Flavor: String {
//    case Chocolate
//    case Vanilla
//    case Strawberry
//    case MintChocolate
//}
//
//struct PickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickerView()
//    }
//}

import SwiftUI

struct PickerView: View {
    @State private var selectedFlavor = Flavor.Chocolate
    
    var body: some View{
        NavigationView{
            Form{
                Section{
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(Flavor.Chocolate)
                        Text("Vanilla").tag(Flavor.Vanilla)
                        Text("Strawberry").tag(Flavor.Strawberry)
                        Text("MintChocolate").tag(Flavor.MintChocolate)
                    }
                }
            }
        }
    }
}

enum Flavor: String {
    case Chocolate
    case Vanilla
    case Strawberry
    case MintChocolate
}


struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
