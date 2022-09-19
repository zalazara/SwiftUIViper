//
//  HomeView.swift
//  SwiftUIViper
//
//  Created by Alejandro Zalazar on 15/09/2022.
//

import SwiftUI

struct HomeView<T: HomePresenterProtocol&ObservableObject>: View {
    
    @StateObject var presenter: T
    
    init(presenter: T) {
        _presenter = StateObject(wrappedValue: presenter)
    }
    
    var body: some View {
        VStack {
            
            Text(presenter.score.description).padding()
            
            Button("Increment") {
                presenter.incrementScore()
            }.padding()
            
            Button("Reset") {
                presenter.resetScore()
            }.padding()
            
            
        }.onAppear {
            presenter.fetchScore()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(presenter: HomePresenterImplementation(interactor: HomeInteractorImplementation()))
    }
}
