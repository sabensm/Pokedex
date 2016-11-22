//
//  ViewController.swift
//  Pokedex
//
//  Created by Mike Sabens on 11/21/16.
//  Copyright © 2016 TheNewThirty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.dataSource = self
        collection.delegate = self
        
    }

    
    //this is where we're going to create the cells.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
            
            let pokemon = Pokemon(name: "Pokemon", pokedexId: indexPath.row)
            cell.configureCell(pokemon: pokemon)
            
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }

    //method that when you select an object it does something
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    //how many objects in the collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 30
    }
    
    //how many sections in the collection view
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    //helps define the size of the cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 105, height: 105)
        
    }
    
}

