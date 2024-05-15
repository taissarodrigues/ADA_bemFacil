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
                HStack(alignment: .top) {
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 48.76, height: 41)
                    
                    Text(title)
                        .font(.system(size: 28))
                        .font(.largeTitle)
                        .bold()
                }
                .padding(.top, -60)
                .frame(height: 50)
                
                VStack(alignment: .leading) {
                    Text("Requisitos obrigatórios")
                        .font(.system(size: 20))
                        .font(.title)
                        .bold()
                        .padding(.leading)
                        .padding(.bottom)
                    
                    ForEach(requirements, id: \.self) { info in
                        HStack {
                            Image(systemName: "circle.fill")
                                .font(.system(size: 8))
                            
                            Text(info)
                                .font(.system(size: 16))
                                .padding(.leading)
                                .padding(.bottom)
                        }
                    }
                    Text("Documentos necessários")
                        .font(.system(size: 20))
                        .font(.title)
                        .bold()
                        .padding(.leading)
                        .padding(.bottom)

                    ForEach(documents, id: \.self) { info in
                        HStack {
                            Image(systemName: "circle.fill")
                                .font(.system(size: 8))
                            Text(info)
                                .font(.system(size: 16))
                                .padding()
                        }
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .padding(.top, -30)

                VStack(alignment: .leading) {
                    Text("Links sugeridos")
                        .font(.system(size: 20))
                        .font(.title)
                        .bold()
                        .padding(.leading)
                        .padding(.bottom, -10)
                    
                    ForEach(links) { link in
                        Button {
                            if let linkurl = URL(string: link.linkURL) {
                                UIApplication.shared.open(linkurl)
                            }
                        } label: {
                            HStack {
                                Image(link.icon)
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .frame(width: 25, height: 25)
                                Text(link.shortName)
                                    .font(.system(size: 17))
                                    .bold()
                                    .underline()
                                
                            }
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 178, height: 38)
                                    .foregroundStyle(.fundodois.opacity(0.2))
                                    .shadow(radius: 3)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .foregroundStyle(.black)
                    }
                }
                .frame( maxWidth: 317, maxHeight: 95.19, alignment: .leading)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top, -20)
                .padding()
            }
        }
        .background(Color.fundo)
    }
}

#Preview {
    TelaInfo(title: "Pé de Meia", image: Image("pedemeia"), requirements: ["Estar matriculada em escola pública e ter baixa renda, ou;", "Estar em situação de rua, ou;", "Estar inscrita no Cadastro único (CadÚnico)."], documents: ["Documento de identificação oficial com foto e o número do CPF;", "Autorização do programa dignidade menstrual, gerada pelo app: Meus SUS digital."], links: [ProgramLink(icon: "sus", shortName: "Meu SUS digital", linkURL: "google.com")])
}
