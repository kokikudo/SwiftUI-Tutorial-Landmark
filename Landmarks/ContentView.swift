//
//  ContentView.swift
//  Landmarks
//
//  Created by kudo koki on 2022/01/11.
//

import SwiftUI

// option + ctrl を押した状態でオブフェクトをクリックすると、マウス操作でView要素を追加できる

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                // セーフエリア外も有効範囲になる
                .frame(height: 300)
                // フレーム指定
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                // {}の外で定義した内容は{}ない全てのオブジェクトに反映される
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
                    
                
            }.padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
