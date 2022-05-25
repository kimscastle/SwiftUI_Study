//
//  SegmentLayoutView.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/05/25.
//

import SwiftUI

enum LayoutType: CaseIterable {
    case table, grid, multiple
}

extension LayoutType {
    var colums: [GridItem] {
        switch self {
        case .table:
            return [GridItem(.flexible())]
        case .grid:
            return [GridItem(.flexible()), GridItem(.flexible())]
        case .multiple:
            return [GridItem(.adaptive(minimum: 100))]
            
        }
    }
}

struct SegmentLayoutView: View {
    @State private var selectedLayoutType: LayoutType = .table
    var body: some View {
        VStack {
            Picker("picker", selection: $selectedLayoutType) {
                
                ForEach(LayoutType.allCases, id: \.self) { layoutType in
                    switch layoutType {
                    case .table:
                        Image(systemName: "list.dash")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .multiple:
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                }

            }
            .pickerStyle(.segmented)
            ScrollView{
                LazyVGrid(columns: selectedLayoutType.colums, content: {
                    ForEach(1..<2000) {data in
                        ZStack {
                            
                            switch selectedLayoutType {
                            case .table:
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .frame(height: 100)
                            case .grid:
                                Circle()
                                    .frame(height: 100)
                                    .foregroundColor(.yellow)
                            case .multiple:
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .frame(height: 100)
                            }
                            Text("\(data)")
                                .foregroundColor(.white)
                        }
                    }
                })
            }
        }
    }
}

struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
