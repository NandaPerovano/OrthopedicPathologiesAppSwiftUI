//
//  SwiftUIView.swift
//  OrthopedicPathologiesAppSwiftUI
//
//  Created by Fernanda Perovano on 13/02/25.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var selectedTab: Int? = 0

    let tabs: [TabItem] = [
        TabItem(title: "Início", icon: "house.fill", tag: 0),
        TabItem(title: "Pesquisar", icon: "magnifyingglass", tag: 1)
    ]
}
