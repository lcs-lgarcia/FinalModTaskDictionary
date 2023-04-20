//
//  SearchView.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 19/4/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var results: [SearchResult] = []
    
    @State var searchText = ""
    
    var body: some View {
       
        NavigationView(){
            List(results, id: \.self) { currentResult in
                
                VStack(alignment: .leading){
                    HStack{
                        Text(currentResult.word)
                            .bold()
                        Spacer()
                    }
                        
                }
                
            }
        }
        .searchable(text: $searchText)
        .onChange(of: searchText) {
            newSearchText in
            Task{
                results = await NetworkService.fetch(resultsFor: newSearchText)
                print(results)
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
