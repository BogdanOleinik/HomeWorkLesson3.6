//
//  Animation.swift
//  HomeWorkLesson3.6
//
//  Created by Олейник Богдан on 14.03.2022.
//

import SwiftUI

struct Animation: View {
    @State private var animation = false
    
    var body: some View {
        VStack {
            Button(action: { animation.toggle() }) {
                VStack {
                    Text(animation ? "Отключить" : "Включить")
                    Spacer()
                    StarView()
                        .frame(width: 300, height: 300)
                        .offset(x: animation ? 0 : -UIScreen.main.bounds.height)
                        .animation(animation
                                   ? .interpolatingSpring(
                                mass: 1.0,
                                stiffness: 100,
                                damping: 10,
                                initialVelocity: 0)
                                   : .easeIn
                        )
                }
            }
            
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
