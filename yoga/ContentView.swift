//
//  ContentView.swift
//  yoga
//
//  Created by Yael Javier Zamora Moreno on 24/03/23.
//

import SwiftUI

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct ContentView: View {
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://picsum.photos/id/630/700"))
                .frame(width: 400, height: 600)
                .cornerRadius(150, corners: [.bottomLeft])
                .position(x: 200, y: 220)
            Text("Welcome").font(.largeTitle).bold()
            Text("If you´re offered a seat on a rocket ship, don´t ask what seat! Just get on").padding([.horizontal])
            Text("EMAIL").frame(width: 350, height: 50)
                .background(.purple)
                .cornerRadius(25)
                .foregroundColor(.white)
                .bold()
            Text("FACEBOOK").frame(width: 350, height: 50)
                .background(.red)
                .cornerRadius(25)
                .foregroundColor(.white)
                .bold()
            ZStack{
                //
            }.frame(height: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
