//
//  Book.swift
//  bookList
//
//  Created by Illya  on 10/4/21.
//
import SwiftUI

struct TitleAndAuthorStack: View {
   let book: Book
   let titleFont: Font
   let authorFont: Font
   
   var body: some View {
      VStack(alignment: .leading) {
         Text(book.title)
            .font(titleFont)
         Text(book.author)
            .font(authorFont)
            .foregroundColor(.secondary)
      }
    
   }
}


struct Book {
   let title: String
   let author: String
   
   init(title: String = "Title", author: String = "Author") {
      self.title = title
      self.author = author
   }
}
