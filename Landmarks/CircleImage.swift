//
//  CircleImage.swift
//  Landmarks
//
//  Created by kudo koki on 2022/01/11.
//

import SwiftUI

// Imageなどのオブジェクトを配置するときは別のファイルを作成し、Viewオブジェクトとして新しく作成する。
// ちょっとめんどいかも？
struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
