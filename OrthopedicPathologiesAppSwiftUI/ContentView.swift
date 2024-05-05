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
                
                Image ("simbolo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                    .frame(width: 120, height: 120)
                Text("Fisioterapia")
                    .foregroundColor(.yellow)
                    .font(.system(size: 40, weight: .bold))
                Text("Patologias Ortopédicas")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    
                
                
                
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
