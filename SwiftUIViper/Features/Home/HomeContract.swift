//
//  HomeContract.swift
//  SwiftUIViper
//
//  Created by Alejandro Zalazar on 15/09/2022.
//

import Foundation
import SwiftUI

protocol HomePresenterProtocol: ObservableObject {
    var interactor: HomeInteractorProtocol { get set }
    var score: Int { get set }
    func fetchScore()
    func incrementScore()
    func resetScore()
}

protocol HomeInteractorProtocol {
    func fetchScore() -> Int
    func incrementScore()
    func resetScore()
}


protocol HomeRouterProtocol {
    
}
