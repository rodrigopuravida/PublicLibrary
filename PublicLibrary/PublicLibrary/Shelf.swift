//
//  Shelf.swift
//  PublicLibrary
//
//  Created by Rodrigo Carballo on 12/3/14.
//  Copyright (c) 2014 Rodrigo Carballo. All rights reserved.
//

import Foundation

class Shelf {
    //the Shelf's properties
    var shelfNumber : Int
    
    
    //the Shelf init
    init(shelf : Int) {
    self.shelfNumber = shelf
        
    }
    
    //method that returns the books contained by Shelf
    func BooksHeldInShelf(listOfBooks : [Book]) -> [String] {
        
        var bookTitlesInShelf : [String] = []
        var bookCount = listOfBooks.count
    
        
        for i in 0...bookCount
        {
            if shelfNumber  == listOfBooks[i].bookShelfLocation
            {
                bookTitlesInShelf.append(listOfBooks[i].titleName())
            }
        }
        
        return bookTitlesInShelf
        
    }
    
}
