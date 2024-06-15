//
//  FruitsModel.swift
//  Fruits
//
//  Created by Basivi Reddy on 15/06/24.
//

import Foundation
import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
