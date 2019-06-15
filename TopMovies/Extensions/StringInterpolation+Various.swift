//
//  StringInterpolation+Various.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import Foundation

extension String.StringInterpolation {
    mutating func appendInterpolation<T>( _ value: T?) {
        if let value = value {
            appendLiteral("\(value)")
        } else {
          appendLiteral("")
        }
    }
}
