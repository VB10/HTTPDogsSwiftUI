//
//  DogsDetailView.swift
//  HTTPDogsSwiftUI
//
//  Created by 111542 on 11/22/20.
//  Copyright © 2020 VB. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct DogsDetailView: View {
    
    let dog : Dog
    
    var body: some View {
        VStack(content: {
            Spacer()
            Text("Code: \(dog.code)").font(.headline).foregroundColor(.white)
            KFImage(URL(string: dog.imageURL)).resizable().aspectRatio(contentMode: .fit).frame(height: 200, alignment: .center)
            Text("Description:").font(.caption).foregroundColor(.white)
            Spacer().frame(height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(dog.dogMockDescription)
            Spacer()
        }).frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background((LinearGradient(gradient: Gradient(colors: [.orange, .white]), startPoint: .top, endPoint: .bottom)))
        
    }
}

struct DogsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DogsDetailView(dog: Dog(code: 111, dogMockDescription: "asdasd", imageURL: "https://picsum.photos/200"))
    }
}
