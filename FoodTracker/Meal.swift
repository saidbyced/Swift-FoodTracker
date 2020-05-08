//
//  Meal.swift
//  FoodTracker
//
//  Created by Chris Eadie on 08/05/2020.
//  Copyright © 2020 Chris Eadie. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialisation
    init?(name: String, photo: UIImage?, rating: Int) {

        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 respectively
        guard (rating >= 0 ) && (rating <= 5) else {
            return nil
        }

        // Initialise styored properties.
        self.name = name
        self.photo = photo
        self.rating = rating

    }
}
