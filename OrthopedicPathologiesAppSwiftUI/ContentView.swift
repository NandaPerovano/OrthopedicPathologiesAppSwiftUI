//
//  ContentView.swift
//  OrthopedicPathologiesAppSwiftUI
//
//  Created by Fernanda Perovano on 05/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("fundoVerde")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Spacer()
                    VStack {
                        Text("Fisioterapia")
                            .foregroundColor(.yellow)
                            .font(.system(size: 40, weight: .bold))
                        Image ("LOGO")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                        Spacer()
                    }
                .padding()
        }
    }
}


#Preview {
    ContentView()
}
