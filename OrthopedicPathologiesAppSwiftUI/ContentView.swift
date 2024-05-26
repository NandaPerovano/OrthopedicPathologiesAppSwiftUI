//
//  ContentView.swift
//  OrthopedicPathologiesAppSwiftUI
//
//  Created by Fernanda Perovano on 05/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    
    var body: some View {
        ZStack{
            Image("fundoVerde")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image ("simbolo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                    .frame(width: 120, height: 120)
                Text("Fisioterapia")
                    .foregroundColor(.yellow)
                    .font(.system(size: 40, weight: .bold))
                    .padding(.top,40)
                Text("Patologias Ortopédicas")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                TextField("Digite seu email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .keyboardType(.emailAddress)
                    .padding(.top, 40)
                SecureField("Digite sua senha", text: $senha)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .keyboardType(.decimalPad)
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
