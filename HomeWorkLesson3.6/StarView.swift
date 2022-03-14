//
//  StarView.swift
//  HomeWorkLesson3.6
//
//  Created by Олейник Богдан on 14.03.2022.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0
            let farLine = size * 1
            let middleLine = size / 2
            let nearMiddleLine = size * 0.4
            
            Path { path in
                path.move(to: CGPoint(x: middleLine, y: nearLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: farLine, y: nearMiddleLine))
                path.addLine(to: CGPoint(x: nearLine, y: nearMiddleLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
            }
            .fill(Color.blue)
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
            .frame(width: 300, height: 300)
    }
}
