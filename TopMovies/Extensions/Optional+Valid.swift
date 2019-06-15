//
//  Optionals+Valid.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String {
    var valid: String {
        switch self {
        case .none:
            return ""
        case .some(let value):
            return value
        }
    }
}
