//
//  APIService.swift
//  mylearning
//
//  Created by Vidhyapathi on 17/06/25.
//

import Foundation
import Combine

class TodoService {
    private let baseURL = URL(string: "https://jsonplaceholder.typicode.com/todos")!
    func fetchTodos() -> AnyPublisher<[Todo], Error> {
        URLSession.shared.dataTaskPublisher(for: baseURL)
            .map(\.data)
            .decode(type: [Todo].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}


