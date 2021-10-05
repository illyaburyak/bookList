//
//  BookViews.swift
//  bookList
//
//  Created by Illya  on 10/4/21.
//

// Type nesting,

import SwiftUI

extension Book {
   struct Image: View {
      let title: String
      var size: CGFloat?
      
      var body: some View {
         let symbol = SwiftUI.Image(title: title)
            ??  .init(systemName: "book")
            symbol
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .font(Font.title.weight(.light))
            .foregroundColor(.secondary)
      }
   }
}


struct Book_Preview: PreviewProvider {
   static var previews: some View {
      VStack {
         TitleAndAuthorStack(
            book: .init(),
            titleFont: .title,
            authorFont: .title2)
      Book.Image(title: Book().title)
         Book.Image(title: "")
      }
   }
}

extension Image {
   init?(title: String) {
      guard let character = title.first else {
         return nil
      }
      let symbolName = "\(character.lowercased()).square"
      
      guard UIImage(systemName: symbolName) != nil else {
         return nil
      }
      
      self.init(systemName: symbolName)
   }
}
