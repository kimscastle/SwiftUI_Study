//
//  ㅌㅌㅌㅌ.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/06/14.
//

import SwiftUI

struct gg: View {
    var body: some View {
        VStack(alignment:.center) {
            Text("모임은 5개 까지 생성할 수 있어요!")
            Text("추후 업데이트 예정")
                .foregroundColor(.red)

        }
        .font(.system(size: 13, weight: .bold))
        .frame(width: 220, height: 60)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30))
        
    }
}

struct ggPreviews: PreviewProvider {
    static var previews: some View {
        gg()
    }
}

