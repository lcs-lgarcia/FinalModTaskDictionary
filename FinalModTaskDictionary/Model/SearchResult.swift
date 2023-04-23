//
//  SearchResult.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 19/4/23.
//

import Foundation


struct SearchResult: Codable {
    
    let total_results: String
    let query: String
    let slips: [Info]
    
}
