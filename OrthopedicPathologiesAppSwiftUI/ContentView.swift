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
                Button {
                    print("Clique no botão!!")
                } label: {
                    Text("Login")
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.yellow)
                        .font(.system(size: 20, weight: .bold))
                        .background(Color(.sRGB, red: 0, green: 0.5, blue: 0, opacity: 1))
                        .cornerRadius(8)
                        .padding(.top, 10)
                }
                
                HStack{
                    Text("Não tem conta?")
                        .foregroundColor(Color.white)
                    Button {
                        print("Clique no botão cadastre-se!!")
                    } label: {
                        Text("Cadastre-se")
                            .foregroundColor(.yellow)
                            .font(.system(size: 18, weight: .semibold))
                    }
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .padding([.top, .leading, .trailing], 20.0)
        }
    }
}


#Preview {
    ContentView()
}
