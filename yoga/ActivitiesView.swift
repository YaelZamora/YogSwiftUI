//
//  ActivitiesView.swift
//  yoga
//
//  Created by Yael Javier Zamora Moreno on 24/03/23.
//

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}

struct ActivitiesView: View {
    var body: some View {
        ZStack{
            Color(hex: 0xff342049).ignoresSafeArea()
            VStack(alignment: .leading){
                VStack{
                    //No lleva nada
                }.frame(height: 180)
                Text("Meditation").foregroundColor(.white).padding()
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(1...7, id: \.self){_ in
                            ZStack{
                                AsyncImage(url: URL(string: "https://picsum.photos/id/28/150"))
                                Text("Relieve").foregroundColor(.white)
                                    .bold()
                                    .padding([.horizontal], 46)
                                    .padding([.vertical], 10)
                                    .background(Color(hex: 0xff342049, alpha: 0.9))
                                    .position(x: 75, y: 120)
                            }.frame(width: 150, height: 120)
                                .clipped()
                                .cornerRadius(40, corners: .topLeft)
                        }
                    }.background(Color(hex: 0xff000000, alpha: 0.2))
                        .frame(width: 400, height: 120)
                }
                
                Text("Running").foregroundColor(.white).padding()
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(1...7, id: \.self){_ in
                            ZStack{
                                AsyncImage(url: URL(string: "https://picsum.photos/id/68/150"))
                                Text("Aftermoon").foregroundColor(.white)
                                    .bold()
                                    .padding([.horizontal], 32)
                                    .padding([.vertical], 10)
                                    .background(Color(hex: 0xff342049, alpha: 0.9))
                                    .position(x: 75, y: 120)
                            }.frame(width: 150, height: 120)
                                .clipped()
                                .cornerRadius(40, corners: .topLeft)
                        }
                    }.background(Color(hex: 0xff000000, alpha: 0.2))
                        .frame(width: 400, height: 120)
                }
                
                Spacer()
            }.frame(width: 400, height: 750)
                .ignoresSafeArea()
            VStack {
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "arrow.backward")
                        Spacer()
                        Image(systemName: "gearshape")
                    }.padding()
                    Text("Activities").font(.largeTitle)
                        .bold()
                        .padding([.horizontal], 50)
                    Text("Best activities for you").foregroundColor(.gray)
                        .italic()
                        .padding([.horizontal], 50)
                }.frame(width: 400, height: 220)
                    .background()
                    .cornerRadius(100, corners: .bottomLeft)
                    .ignoresSafeArea()
                Spacer()
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
