//
//  FruitCardView.swift
//  Fruits
//
//  Created by Basivi Reddy on 15/06/24.
//

import Foundation
import SwiftUI

struct FruitCardView : View{

    var fruit: Fruit
    
    var body: some View{
        //ZStack{
            VStack(spacing:20){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8,x: 6,y: 8)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2,x: 2,y: 2)
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                StartButtonView()
            }
       // }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
       
        
    }
    
    
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView(fruit: fruitsData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}

