//
//  ContentView.swift
//  SwiftUI_ScrollView
//
//  Created by uiskim on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
//    let imageList = ["sv_1", "sv_2", "sv_3", "sv_4", "sv_1", "sv_2", "sv_3", "sv_4"]
//    let textList = ["내 스토리", "Steven", "Danny", "Jenny", "Lisa", "Jun", "Justin", "Kate"]
        
    var body: some View{
//        ScrollView(Axis.Set.horizontal){
//            HStack{
//                ForEach(0 ..< imageList.count){ index in
//                    VStack(spacing:0){
//                        Image(imageList[index])
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                            .padding(15)
//                            .overlay(Circle().stroke(Color.yellow, lineWidth: 7))
//
//                        Text(textList[index])
//                            .font(.title2)
//                            .bold()
//                            .padding(.vertical, 20)
//                    }
//                }
//            }
//        }
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(profilelists) {
                    ProfileView(profile: $0)
                }
            }
            .padding()
        }
    }
}

//struct ProfileView: View {
//    let profile: ProfileList
//    var body: some View {
//        VStack(spacing: 0) {
//            Image(profile.image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 100)
//                .padding(15)
//                .overlay(Circle().stroke(.yellow, lineWidth: 7))
//            
//            Text(profile.name)
//                .font(.title2)
//                .bold()
//                .padding(.vertical, 20)
//        }
//    }
//}

//struct ProfileList: Identifiable{
//    let id = UUID()
//    let image: String
//    let name: String
//}
//
//let profilelists = [
//    ProfileList(image: "sv_1", name: "내 스토리"),
//    ProfileList(image: "sv_2", name: "Steven"),
//    ProfileList(image: "sv_3", name: "Danny"),
//    ProfileList(image: "sv_4", name: "Jenny"),
//    ProfileList(image: "sv_1", name: "Lisa"),
//    ProfileList(image: "sv_2", name: "Jun"),
//    ProfileList(image: "sv_3", name: "Justin"),
//    ProfileList(image: "sv_4", name: "Kate")
//]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
