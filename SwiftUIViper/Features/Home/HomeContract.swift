//
//  HomeContract.swift
//  SwiftUIViper
//
//  Created by Alejandro Zalazar on 15/09/2022.
//

import Foundation

protocol HomePresenterProtocol: ObservableObject {
    var interactor: any HomePresenterProtocol { get set }
    var items: [String] { get set }
    func getItems()
}

protocol HomeInteractorProtocol {
    func fetchItems() -> [String]
}


protocol HomeRouterProtocol {
    
}
