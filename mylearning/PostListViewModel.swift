//
//  PostListViewModel.swift
//  mylearning
//
//  Created by Vidhyapathi on 17/06/25.
//

import Combine
import Foundation

class TodoViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    
        private let todoService = TodoService()
    
        @Published var todos: [Todo] = []
    
        func fetchTodos() {
            todoService.fetchTodos()
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: { _ in }) { todos in
                    self.todos = todos
                }
                .store(in: &cancellables)
        }
}
