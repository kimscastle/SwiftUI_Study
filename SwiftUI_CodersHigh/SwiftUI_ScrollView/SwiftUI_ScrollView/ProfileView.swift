//
//  ProfileView.swift
//  SwiftUI_ScrollView
//
//  Created by uiskim on 2022/05/02.
//

import SwiftUI

struct ProfileView: View {
    let profile: ProfileList
    var body: some View {
        VStack(spacing: 0) {
            Image(profile.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(15)
                .overlay(Circle().stroke(.yellow, lineWidth: 7))
            
            Text(profile.name)
                .font(.title2)
                .bold()
                .padding(.vertical, 20)
        }
    }
}
