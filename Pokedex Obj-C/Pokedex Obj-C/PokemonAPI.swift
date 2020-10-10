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
    let pokemonListURL = URL(string: "https://pokeapi.co/api/v2/pokemon/")!
    
    /// Methods
    @objc func fetchAllPokemon(completion: @escaping ([LSIPokemon]?, Error?) -> Void) {
        
        var request = URLRequest(url: pokemonListURL)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                print("ERROR: There was an error completing the pokemon list network request, reason: \(error)")
                completion(nil, error)
                return
            }
            guard let data = data else {
                print("ERROR: No data was received in the pokemon list network request, reason: \(String(describing: error))")
                completion(nil, error)
                return
            }
            
            do {
                let resultDictionary: [String : Any] = try JSONSerialization.jsonObject(with: data) as! Dictionary
                let resultsArray: [[String : Any]] = resultDictionary["results"] as! Array
                var pokemonArray: [LSIPokemon] = []
                
                for dictionary in resultsArray {
                    let pokemonName = dictionary["name"] as! String
                    let pokemonURL = dictionary["url"] as! URL
                    let pokemon = LSIPokemon(name: pokemonName, dataURL: pokemonURL)
                    pokemonArray.append(pokemon)
                }
                completion(pokemonArray, nil)
                return
                
            } catch {
                print("ERROR: Could not extract pokemon from data retreived from the network request. Check 'PokemonAPI.swift' reason: \(error)")
                completion(nil, error)
                return
            }
            
        }
        
    }

    @objc func fillInDetails(for pokemon: LSIPokemon) {
        
        var request = URLRequest(url: pokemon.dataURL)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            
            if let error = error {
                print("ERROR: Could not complete individual pokemon data network request, reason: \(error)")
                return
            }
            guard let data = data else {
                print("ERROR: Data not found! Reason: \(error)")
                return
            }
            
            
        }
        
    }
    
    
    
}
