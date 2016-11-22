//
//  Pokemon.swift
//  Pokedex
//
//  Created by Mike Sabens on 11/21/16.
//  Copyright © 2016 TheNewThirty. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    //getters
    
    var name: String {
        
        return _name
    }
    
    var pokedexId: Int {
        
        return _pokedexId
    }
    
    //initializer. the items in the first parentheses are the data that can be passed into it.
    
    init(name: String, pokedexId: Int) {
       
        self._name = name
        self._pokedexId = pokedexId
        
    }
    
    
    
}
