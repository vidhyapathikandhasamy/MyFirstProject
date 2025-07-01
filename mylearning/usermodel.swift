//
//  usermodel.swift
//  mylearning
//
//  Created by Vidhyapathi on 17/06/25.
//

import Foundation

struct Todo: Decodable {
    let id: Int
    let title: String
    let completed: Bool
}
