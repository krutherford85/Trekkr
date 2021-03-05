//
//  File.swift
//  Trekkr
//
//  Created by test on 3/4/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
