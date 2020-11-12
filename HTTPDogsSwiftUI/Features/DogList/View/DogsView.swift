//
//  DogsView.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 12.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import SwiftUI

struct DogsView: View {

    let dogs : [Dog] = [Dog(code: 100, dogMockDescription: "Doggs", imageURL: "https://httpstatusdogs.com/img/100.jpg"),
                Dog(code: 100, dogMockDescription: "Doggs", imageURL: "https://httpstatusdogs.com/img/100.jpg")
    ]

    var body: some View {
        VStack {
            Text("Welcome HTTP Dog Project").bold()
            Spacer()
            List {
                ForEach(dogs, id: \.id) { item in
                    DogCardWidget(dog: item)
                }
            }
        }
    }
}

struct DogsView_Previews: PreviewProvider {
    static var previews: some View {
        DogsView()
    }
}
