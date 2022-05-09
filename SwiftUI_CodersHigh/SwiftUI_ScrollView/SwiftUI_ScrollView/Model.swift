//
//  Model.swift
//  SwiftUI_ScrollView
//
//  Created by uiskim on 2022/05/02.
//

import Foundation

struct ProfileList: Identifiable{
    let id = UUID()
    let image: String
    let name: String
}

let profilelists: [ProfileList] = [
    ProfileList(image: "sv_1", name: "내 스토리"),
    ProfileList(image: "sv_2", name: "Steven"),
    ProfileList(image: "sv_3", name: "Danny"),
    ProfileList(image: "sv_4", name: "Jenny"),
    ProfileList(image: "sv_1", name: "Lisa"),
    ProfileList(image: "sv_2", name: "Jun"),
    ProfileList(image: "sv_3", name: "Justin"),
    ProfileList(image: "sv_4", name: "Kate")
]
