//
//  Hexagon.swift
//  Grateful Moments
//
//  Created by Johnny Li on 3/16/26.
//

import SwiftUI

struct Hexagon<Content: View>: View {
    private let borderWdith = 2.0
    var borderColor: Color = .ember
    var layout: HexagonLayout = .standard
    var size: CGFloat = 350
    var moment: Moment? = nil
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ZStack {
            if let background = moment?.image {
                Image(uiImage: background).resizable().scaledToFill()
            }
            content()
                .frame(width: layout.size, height: layout.size)
        }
        .mask {
            Image(systemName: "hexagon.fill")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: layout.size - borderWdith, height: layout.size - borderWdith)
        }
        .background {
            Image(systemName: "hexagon")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: layout.size, height: layout.size)
                .foregroundStyle(borderColor)
            
        }
        .frame(width: layout.size, height: layout.size)
    }
}

#Preview {
    Hexagon(moment: Moment.imageSample) {
        Text(Moment.imageSample.title)
            .foregroundStyle(Color.white)
    }
    .sampleDataContainer()
}
