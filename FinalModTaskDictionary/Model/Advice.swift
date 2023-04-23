//
//  Advice.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 20/4/23.
//
import Blackbird
import Foundation

struct Info: Codable, Hashable, BlackbirdModel, Identifiable {
    
    @BlackbirdColumn   var id: Int
    @BlackbirdColumn    var advice: String
   @BlackbirdColumn  var date: String
    
}

let exampleAdvice = Info(id: 113, advice: "Do sport every day", date: "24/6/2004")
