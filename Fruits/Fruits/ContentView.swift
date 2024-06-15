//
//  ContentView.swift
//  Fruits
//
//  Created by Basivi Reddy on 15/06/24.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        List {
            ForEach(fruits){ item in
                FruitRowView(fruit: item)
            }
        }
        .padding(.vertical,4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
