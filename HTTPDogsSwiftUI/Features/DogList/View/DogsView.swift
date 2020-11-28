//
//  DogsView.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 12.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import SwiftUI

struct DogsView: View {

    @ObservedObject var viewModel: DogsViewModel

    var body: some View {
        NavigationView(content: {
            dogListView().navigationBarTitle("HTTP Dogs")
        })
    }

    fileprivate func dogListView() -> some View {
        return VStack {
            List {
                ForEach(viewModel.dogList, id: \.id) { item in
                    self.dogCard(item: item)
                }
            }
            if (viewModel.isLoading) {
                loadindgView()
            }
           
        }
    }


    fileprivate func loadindgView() -> some View {
        return GeometryReader { geometry in
            return IndicatorWidget().frame(
                width: geometry.size.width * 0.1,
                height: geometry.size.height * 0.1,
                                           alignment: .center).foregroundColor(.orange)
        }
    }



    func dogCard(item: Dog) -> some View {
        return NavigationLink(destination: DogsDetailView(dog: item)) {
            DogCardWidget(dog: item).onAppear {
                self.viewModel.loadMoreContent(currentItem: item)
            }
        }.buttonStyle(PlainButtonStyle())
    }


}

struct DogsView_Previews: PreviewProvider {
    static var previews: some View {
        DogsView(viewModel: DogsViewModel()).environment(\.locale, .init(identifier: "en"))
    }
}
