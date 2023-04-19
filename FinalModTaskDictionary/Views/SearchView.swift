//
//  SearchView.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 19/4/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var foundWord: [word] = []
    
    var body: some View {
       
        
        List(foundWord, id: \.word1) { currentWord in
            
            VStack{
                Text(currentWord.word1)
                    .bold()
                Text(currentWord.pronu)
            }
            
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
