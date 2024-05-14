//
//  Teste.swift
//  bem-facil
//
//  Created by Taissa Vitoria Rodrigues de Paula on 13/05/24.
//
import SwiftUI

struct TelaInfo: View {
    
    let title: String
    let image: Image
    let requirements: [String]
    let documents: [String]
    let links: [ProgramLink]
    
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                    
                    
                    
                    Text(title)
                        .font(.system(size: 20))
                        .font(.largeTitle)
                    
                        .bold()
                    
                }
                .frame(height: 50)
                
                VStack (alignment: .leading) {
                    Text("Requisitos obrigatórios")
                        .font(.title)
                        .font(.system(size: 20))
                        .bold()
                        .padding(.leading)
                        .padding(.bottom)
                    
                    
                    ForEach(requirements, id: \.self) { info in
                        HStack {
                            Text("•")
                                .font(.system(size: 16))
                                .padding(.leading)
                        }
                        Text(info)
                            .font(.system(size: 16))
                            .padding(.leading)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    Text("Documentos necessários")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                        .padding(.bottom)
                    ForEach(documents, id: \.self) { info in
                        Text("•\(info)")
                            .font(.system(size: 16))
                            .padding()
                    }
                }
                
                .padding()
                .background(.white)
                
                VStack(alignment: .leading) {
                    Text("Links sugeridos")
                        .font(.system(size: 20))
                        .font(.title)
                        .bold()
                        .padding(.leading)
                        .padding(.bottom)
                    
                    ForEach(links) { link in
                        Button {
                            // abrir o safari e passar o link.linkURL pra ser aberto
                        } label: {
                            HStack {
                                Image(link.icon)
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                Text(link.shortName)
                                    .font(.system(size: 17))
                                
                                    .bold()
                                    .underline()
                                
                            }
                            .frame(height: 25)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 178,height: 38)
                                    .foregroundStyle(.fundodois.opacity(0.5))
                            }
                        }
                        .foregroundStyle(.black)
                    }
                }
                
                .padding()
                .background(Color.white)
                .frame(width: 373, height: 95.19)
                .cornerRadius(10)
            }
        }
        .background(Color.fundo)
    }
}

#Preview {
    TelaInfo(title: "Pé de Meia", image: Image("pedemeia"), requirements: ["Estar matriculada em escola pública e ter baixa renda, ou;","Estar em situação de rua, ou;",
                                                                           "Estar inscrita no Cadastro único (CadÚnico)."], documents: ["Documento de identificação oficial com foto e o número do CPF;","Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."
                                                                                                                                       ],links: [
                                                                                                                                        ProgramLink(icon: "sus", shortName: "Meu SUS digital", linkURL: "google.com")
                                                                                                                                       ])
}
