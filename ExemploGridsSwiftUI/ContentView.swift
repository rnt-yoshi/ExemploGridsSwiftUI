//
//  ContentView.swift
//  ExemploGridsSwiftUI
//
//  Created by Renato Yoshinari on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...1000).map { "Item \($0)"}
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(data, id: \.self) { item in
                    ZStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 300)
                            .cornerRadius(15)
                        Text(item)
                            .foregroundColor(.black)
                    }
                    .padding(2)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
