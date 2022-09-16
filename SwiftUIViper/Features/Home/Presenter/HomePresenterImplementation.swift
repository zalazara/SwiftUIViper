//
//  HomePresenterImplementation.swift
//  SwiftUIViper
//
//  Created by Alejandro Zalazar on 15/09/2022.
//

import Foundation


class HomePresenterImplementation: HomePresenterProtocol {
    internal var interactor: HomeInteractorProtocol
    @Published var score: Int = 0
    
    init(interactor: HomeInteractorProtocol) {
        self.interactor = interactor
    }
    
    func fetchScore() {
        score = interactor.fetchScore()
    }
    
    func incrementScore() {
        interactor.incrementScore()
        fetchScore()
    }
    
    func resetScore() {
        interactor.resetScore()
        fetchScore()
    }
}
