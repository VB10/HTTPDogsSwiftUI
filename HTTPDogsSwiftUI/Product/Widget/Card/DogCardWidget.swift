//
//  DogCardWidget.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 12.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct DogCardWidget: View {

    let dog: Dog

    var body: some View {
        VStack {
            KFImage(URL(string: dog.imageURL)).resizable().aspectRatio(contentMode: .fit).frame(height: 200, alignment: .center)
            Spacer()
            HStack {
                VStack(alignment: .center, spacing: 5, content: {
                    Text("Status Code").fontWeight(.light).font(.system(size: 10))
                    Text("\(dog.code)").bold()
                })
                Spacer()
            }

        }.fixedSize(horizontal: false, vertical: true)
    }
}

struct DogCardWidget_Previews: PreviewProvider {
    static var previews: some View {
        DogCardWidget(dog: Dog(code: 100, dogMockDescription: "Doggs", imageURL: "https://httpstatusdogs.com/img/100.jpg")).previewLayout(.sizeThatFits)
    }
}
