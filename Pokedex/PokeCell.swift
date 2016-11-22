//
//  PokeCell.swift
//  Pokedex
//
//  Created by Mike Sabens on 11/21/16.
//  Copyright © 2016 TheNewThirty. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // for each poke cell, we want a class of pokemon
    
    var pokemon: Pokemon!
    
    
    //rounded corners! 
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    // function that is called when we're ready to update the content of the collection view cell. Basically what we're doing here is just passing through the name and image of the pokemon in the class. 
    
    func configureCell(pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }

    
}
