//
//  OnboardingView.swift
//  Fruits
//
//  Created by Basivi Reddy on 15/06/24.
//

import SwiftUI

struct OnboardingView: View{
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View{
        TabView{
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}


// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(fruits: fruitsData)
      .previewDevice("iPhone 13")
  }
}
