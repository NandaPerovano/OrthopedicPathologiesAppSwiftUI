//
//  Pathologis.swift
//  OrthopedicPathologiesAppSwiftUI
//
//  Created by Fernanda Perovano on 13/02/25.
//

import SwiftUI
struct Pathologies: View {
    @StateObject private var viewModel = PatologiaViewModel()
    @StateObject private var tabBarViewModel = TabBarViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 20))
                            .foregroundColor(.green)
                        Spacer()
                    }
                    .padding()
                }
                
                Text("Principais patologias das articulações na\nFisioterapia Ortopédica")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.green)
                    .padding(.top, 8)
                
                List(viewModel.patologias) { Pathology in
                    HStack {
                        Image(Pathology.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.trailing, 8)
                        
                        Text(Pathology.name)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                    }
                    .padding(.vertical, 4)
                }
                .listStyle(.plain)
                
                Spacer()
                
                // A TabBar com navegação
                HStack {
                    ForEach(tabBarViewModel.tabs) { tab in
                        NavigationLink(
                            destination: destinationView(for: tab),
                            tag: tab.tag,
                            selection: $tabBarViewModel.selectedTab
                        ) {
                            VStack {
                                Image(systemName: tab.icon)
                                    .font(.system(size: 24))
                                Text(tab.title)
                            }
                            .foregroundColor(tabBarViewModel.selectedTab == tab.tag ? .green : .gray)
                            .frame(maxWidth: .infinity)
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .shadow(radius: 2)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
    
    // Função que retorna a view correspondente com base na tab selecionada
    private func destinationView(for tab: TabItem) -> some View {
        switch tab.tag {
        case 0:
            return AnyView(Home()) // Home
        case 1:
            return AnyView(Search()) // Search
        default:
            return AnyView(Text("Unknown"))
        }
    }
}
