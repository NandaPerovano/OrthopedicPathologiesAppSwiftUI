//
//  SwiftUIView.swift
//  OrthopedicPathologiesAppSwiftUI
//
//  Created by Fernanda Perovano on 13/02/25.
//

import SwiftUI

class PatologiaViewModel: ObservableObject {
    @Published var patologias: [Pathology] = [
        Pathology(name: "COLUNA CERVICAL", image: "colunaCervical"),
        Pathology(name: "COLUNA LOMBAR", image: "colunaLombar"),
        Pathology(name: "OMBRO", image: "ombro"),
        Pathology(name: "COTOVELO", image: "cotovelo"),
        Pathology(name: "PUNHO/MÃO", image: "punho")
    ]
}

