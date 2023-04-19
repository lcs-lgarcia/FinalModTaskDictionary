//
//  SearchResult.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 19/4/23.
//

import Foundation

struct searchResult: Codable {
    
    
    let resultCount: Int
    let results: [word]
}
