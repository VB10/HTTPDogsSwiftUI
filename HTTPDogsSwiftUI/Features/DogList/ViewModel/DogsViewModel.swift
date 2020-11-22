//
//  DogsViewModel.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 12.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation


final class DogsViewModel: ObservableObject {

    @Published var isLoading: Bool = false
    @Published var dogList: [Dog] = []

    let dogService: DogService


    init() {
        self.dogService = DogService(service: NetworkService.instance)
        fetchDogList()
    }

    func fetchDogList() {
        changeLoading()
        dogService.getAllDogs(onSucess: { (datas) in
            self.changeLoading()
            self.dogList = datas
        }) { (error) in
            self.changeLoading()
            print("error")
        }
    }

    func fetchDogListLoadMore(dog: Dog) {
        changeLoading()
        dogService.getLimitDogs(dog: dog, onSucess: { (response) in
            self.changeLoading()
            self.dogList.append(contentsOf: response)

        }) { (error) in
            self.changeLoading()

        }
    }

    func loadMoreContent(currentItem item: Dog) {
        if dogList.last?.id == item.id && !isLoading {
            fetchDogListLoadMore(dog: item)
        }
    }

    private func changeLoading() {
        self.isLoading = !isLoading
    }


}
