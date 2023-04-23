//
//  FavView.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 22/4/23.
//
import Blackbird
import SwiftUI

struct FavView: View {
    
    @BlackbirdLiveModels({ db in
        try await Info.read(from: db)
    }) var favAdvice
    
    var body: some View {
        NavigationView{
            
            List(favAdvice.results, id: \.id){currentAdvice in
                VStack(alignment:.leading){
                    Text(currentAdvice.advice)
                        .bold()
                   
                }
            }
            .navigationTitle("Favourite advices")
        }
                            
    }
    }


struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}
