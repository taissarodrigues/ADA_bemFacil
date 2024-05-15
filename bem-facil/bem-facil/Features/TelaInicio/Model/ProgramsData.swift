//
//  ProgramData.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 14/05/24.
//

import Foundation
import SwiftUI

class ProgramsData {
    static let programs: [Program] = [
        Program(
            name: "Pé de Meia",
            image: "pedemeia",
            category: "Educação",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;", "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "pedemeia", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Benefício Prestação Continuada",
            image: "bpc",
            category: "Assistência Social",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "bpc", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Bolsa Familia",
            image: "bolsafamilia",
            category: "Assistência Social",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "bolsafamilia", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Minha casa, Minha vida",
            image: "mcmv",
            category: "Assistência Social",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "mcmv", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Vale Gás",
            image: "valegas",
            category: "Assistência Social",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "valegas", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Bolsa Atleta",
            image: "bolsaAtleta",
            category: "Cultura",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "bolsaAtleta", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Desenrola Fies",
            image: "desenrolaFies",
            category: "Educação",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "desenrolaFies", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        ),
        Program(
            name: "Farmácia Popular",
            image: "farmacia",
            category: "Saúde",
            requirements: [
                "Estar matriculada em escola pública e ter baixa renda, ou;",
                "Estar em situação de rua, ou;",
                "Estar inscrita no Cadastro único (CadÚnico)."
            ],
            documents: [
                "Documento de identificação oficial com foto e o número do CPF;",
                "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
            ],
            urls: [
                ProgramLink(icon: "farmacia", shortName: "Meu SUS digital", linkURL: "https://meususdigital.saude.gov.br/login")
            ]
        )
    ]
}

struct Program: Identifiable, Equatable, Hashable {
    let id: UUID = UUID()
    let name: String
    let image: String
    let category: String
    let requirements: [String]
    let documents: [String]
    let urls: [ProgramLink]
    
    static func == (_ lhs: Program, _ rhs: Program) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

struct ProgramLink: Identifiable {
    let id: UUID = UUID()
    let icon: String
    let shortName: String
    let linkURL: String
}
