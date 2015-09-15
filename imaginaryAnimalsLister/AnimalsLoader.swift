//
//  AnimalsLoader.swift
//  imaginaryAnimalsLister
//
//  Created by Ryan Lei on 9/14/15.
//  Copyright © 2015 Ryan Lei. All rights reserved.
//

import Foundation

struct AnimalsLoader {
    
    func loadAnimals() -> [ImaginaryAnimal] {
        let mermaid = ImaginaryAnimal(
            name: "Mermaid",
            height: 1.5,
            location: "Oceans",
            dateLastSeen: "1858",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/5/55/John_William_Waterhouse_A_Mermaid.jpg")
        )
        
        return [mermaid]
    }

}

