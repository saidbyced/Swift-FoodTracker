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

        // Initialisation should fail if there is no name or rating is negative.
        if name.isEmpty || rating  < 0 {
            return nil
        }

        // Initialise styored properties.
        self.name = name
        self.photo = photo
        self.rating = rating

    }
}
