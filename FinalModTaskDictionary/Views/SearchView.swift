//
//  SearchView.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 19/4/23.
//
import Blackbird
import SwiftUI

struct SearchView: View {
    
    @Environment(\.blackbirdDatabase) var db: Blackbird.Database?
    @State var results: [Info] = []
    @State var searchText = ""
    let searchResults: [Info] = []
   
    @State var currentResult: Info?
    
    var body: some View {
        
       
        
        NavigationView(){
            
                
            List(results, id: \.self) { currentResult in
                
                VStack(alignment: .leading){
                    HStack{
                        Text(currentResult.advice)
                            .bold()
                      
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
