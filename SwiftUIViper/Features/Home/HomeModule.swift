//
//  HomeModule.swift
//  SwiftUIViper
//
//  Created by Alejandro Zalazar on 15/09/2022.
//

import Foundation
import SwiftUI


struct HomeModule {
    
    static func build() -> some View {
        let interactor = HomeInteractorImplementation()
        let presenter = HomePresenterImplementation(interactor: interactor)
        let view = HomeView(presenter: presenter)
        
        return view
    }
}
