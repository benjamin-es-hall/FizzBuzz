//
//  Brain.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

struct Brain {
    
    // MARK: - Public API
    func isMultiple(_ multiple: Int, of factor: Int) -> Bool {
        return (multiple % factor) == 0
    }
}
