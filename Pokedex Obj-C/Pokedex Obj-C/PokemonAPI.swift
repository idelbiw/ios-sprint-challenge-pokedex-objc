//
//  PokemonAPI.swift
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

import Foundation

class PokemonAPI: NSObject {

    /// Properties
    
    @objc(sharedController) static let shared = PokemonAPI()
    let baseURL = URL(string: "https://pokeapi.co/api/v2/pokemon")!
    
    /// Methods
    
    @objc func fetchAllPokemon(completion: @escaping ([LSIPokemon]?, Error?) -> Void) {
        
    }

    @objc func fillInDetails(for pokemon: LSIPokemon) {
        
    }
    
    
    
}
