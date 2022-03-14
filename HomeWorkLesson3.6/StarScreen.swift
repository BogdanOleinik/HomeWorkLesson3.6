//
//  StarScreen.swift
//  HomeWorkLesson3.6
//
//  Created by Олейник Богдан on 14.03.2022.
//

import SwiftUI

struct StarScreen: View {
    var body: some View {
        StarView()
            .frame(width: 300, height: 300)
    }
}

struct StarScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarScreen()
    }
}
