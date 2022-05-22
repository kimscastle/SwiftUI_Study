//
//  MyFilteredList.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/05/22.
//

import SwiftUI

enum School: String, CaseIterable {
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}

struct MyFridend: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var school: School
}

func prepareData() -> [MyFridend]{
    var newList: [MyFridend] = []
    for i in 0...20 {
        let newFriend = MyFridend(name: "내친구 \(i)", school: School.allCases.randomElement()!)
        newList.append(newFriend)
    }
    return newList
}

struct MyFilteredList: View {
    @State private var filteredValue: School = School.elementary
    @State private var myFriendsList: [MyFridend] = []
    
    //생성자메소드
    init() {
        _myFriendsList = State(initialValue: prepareData())
    }
    
    var body: some View {
        VStack {
            Text("선택된 필터 : \(filteredValue.rawValue)")
            Picker("피커", selection: $filteredValue, content: {
                Text(School.elementary.rawValue).tag(School.elementary)
                Text(School.middle.rawValue).tag(School.middle)
                Text(School.high.rawValue).tag(School.high)
            })
            .pickerStyle(.segmented)
            
//            List{
//                ForEach(myFriendsList, id: \.self){ friendItem in
//                    GeometryReader { geometryProxy in
//                        HStack {
//                            Text("name: \(friendItem.name)")
//                                .font(.system(size: 13))
//                                .frame(width: geometryProxy.size.width / 3)
//                            Divider()
//                            Text("School: \(friendItem.school.rawValue)")
//                                .font(.system(size: 13))
//                                .frame(width: geometryProxy.size.width / 2)
//                        }
//                    }
//                }
//            }
            List{
                ForEach(myFriendsList.filter{ filterTerm in
                    filterTerm.school == filteredValue
                }){ friendsItem in
                    GeometryReader { geometryProxy in
                        HStack {
                            Text("name: \(friendsItem.name)")
                                .font(.system(size: 13))
                                .frame(width: geometryProxy.size.width / 3)
                            Divider()
                            Text("School: \(friendsItem.school.rawValue)")
                                .font(.system(size: 13))
                                .frame(width: geometryProxy.size.width / 2)
                        }
                    }
                }
            }
        }
    }
}

struct MyFilteredList_Previews: PreviewProvider {
    static var previews: some View {
        MyFilteredList()
    }
}
