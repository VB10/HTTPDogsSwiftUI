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


    fileprivate func loadindgView() -> some View {
        return GeometryReader { geometry in
            return IndicatorWidget().frame(height: geometry.size.height * 0.2, alignment: .center).foregroundColor(.orange)
        }
    }

    fileprivate func dogListView() -> some View {
        return VStack {
            List {
                ForEach(viewModel.dogList, id: \.id) { item in
                    DogCardWidget(dog: item).onAppear {
                        self.viewModel.loadMoreContent(currentItem: item)
                    }
                }
            }
            if (viewModel.isLoading) {
                loadindgView()
            }

        }
    }

    var body: some View {
        VStack {
            Text("Welcome HTTP Dog Project").bold()
            Spacer()
            ZStack {
                dogListView()
            }
        }
    }
}

struct DogsView_Previews: PreviewProvider {
    static var previews: some View {
        DogsView(viewModel: DogsViewModel())
    }
}
