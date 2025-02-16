//
//  SwiftUIView.swift
//  OrthopedicPathologiesAppSwiftUI
//
//  Created by Fernanda Perovano on 11/02/25.
//

import SwiftUI

struct Register: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image("usuario")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.top, 120)

            VStack(spacing: 12) {
                TextField("Digite seu email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .keyboardType(.emailAddress)
                    .shadow(radius: 5)
                    .padding(.top, 40)
                SecureField("Digite sua senha", text: $senha)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .keyboardType(.decimalPad)
                    .shadow(radius: 5)
            }
            Button(action: {
                dismiss() 
            }) {
                Text("Cadastrar")
                    .foregroundColor(.green)
                    .fontWeight(.bold)
            }
            .padding(.top, 40)

            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.title2)
                }
            }
        }
    }
}

struct CadastroView_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
