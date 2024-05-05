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
                        Spacer()
                    }
                .padding()
        }
    }
}


#Preview {
    ContentView()
}
