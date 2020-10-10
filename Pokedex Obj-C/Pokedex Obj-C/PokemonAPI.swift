//
//  PokemonAPI.swift
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

import Foundation

class PokemonAPI: NSObject {

    @objc(sharedController) static let shared = PokemonAPI()
    
    
    @objc func fetchAllPokemon(completion: @escaping ([LSIPokemon]?, Error?) -> Void) {
        
    }

    
    @objc func fillInDetails(for pokemon: LSIPokemon) {
        
    }
    
    
    
}
