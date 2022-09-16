//
//  HomeInteractorImplementation.swift
//  SwiftUIViper
//
//  Created by Alejandro Zalazar on 15/09/2022.
//

import Foundation


class HomeInteractorImplementation: HomeInteractorProtocol {
    
    var score = 0
    
    func fetchScore() -> Int {
        score
    }
    
    func incrementScore() {
        score += 1
    }
    
    func resetScore() {
        score = 0
    }
}
