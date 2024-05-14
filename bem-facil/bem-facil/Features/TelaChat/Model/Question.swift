import Foundation

struct Question {
    var pattern: String
    var response: String
    
    static let mockQuestionsPatterns: [Question] = [
        Question(pattern: "bolsa jovem|como recebo o bolsa jovem",
                 response: "• Para receber o Bolsa Jovem, você pode se cadastrar em sua unidade de assistência social mais próxima.\nEste benefício oferece suporte financeiro e oportunidades de desenvolvimento para jovens de baixa renda.\n[Saiba mais](https://bolsajovem.gov.br).\nRequisitos: idade entre 15 e 29 anos, renda familiar per capita de até meio salário mínimo."),
        Question(pattern: "beneficios|quais beneficios tenho direito sendo baixa renda|baixa renda",
                 response: "• Os benefícios disponíveis para pessoas de baixa renda incluem assistência médica gratuita, subsídios de moradia, vouchers para educação e programas de capacitação profissional.\nRequisitos: comprovar renda familiar per capita de até um salário mínimo, estar cadastrado em programas sociais do governo.\n[Mais informações](https://beneficios.gov.br)."),
        Question(pattern: "dignidade menstrual|como acessar dignidade menstrual",
                 response: "• Para acessar a dignidade menstrual, você pode se inscrever em programas governamentais que fornecem produtos de higiene menstrual gratuitos ou a preços subsidiados, além de promoverem educação sobre saúde reprodutiva.\n[Veja aqui](https://dignidademenstrual.gov).\nRequisitos: nenhum."),
        Question(pattern: "bolsa familia|como receber bolsa familia",
                 response: "• Para receber o Bolsa Família, é necessário se cadastrar no programa social do governo, comprovar sua situação de baixa renda e manter seus dados atualizados.\nEste benefício oferece apoio financeiro mensal para famílias em situação de vulnerabilidade.\n[Clique para saber mais](https://bolsafamilia.gov.br).\nRequisitos: renda familiar de até R$ 178 por pessoa."),
        Question(pattern: "juventude digital|como participar juventude digital",
                 response: "• Para participar da Juventude Digital, siga os passos de inscrição disponibilizados pelo governo em seu portal online.\nEste programa oferece acesso gratuito a recursos digitais, cursos online e oportunidades de emprego na área de tecnologia.\n[Acesse aqui](https://juventudedigital.gov).\nRequisitos: idade entre 18 e 29 anos, interesse em tecnologia."),
        Question(pattern: "auxilio gas|como solicitar auxilios gas| gás| Gas",
                 response: "• Para solicitar auxílios gás, você precisa se cadastrar nos programas de assistência social do governo ou entrar em contato com organizações locais que oferecem esse suporte.\nEsses auxílios visam ajudar famílias de baixa renda a cobrir os custos de gás de cozinha.\n[Mais informações](https://auxiliosgas.gov).\nRequisitos: renda familiar per capita de até meio salário mínimo."),
        Question(pattern: "farmacia popular|como utilizar farmacia popular",
                 response: "• Para utilizar o Farmácia Popular, basta se dirigir a uma das unidades participantes e apresentar a receita médica.\nEste programa oferece medicamentos gratuitos ou com descontos para tratamento de diversas condições de saúde.\n[Veja aqui](https://farmaciapopular.gov.br).\nRequisitos: receita médica válida, medicamentos listados no programa."),
        Question(pattern: "pé de meia|como funciona o pé de meia",
                         response: "• O Pé de Meia é um programa de educação financeira que oferece orientações e ferramentas para poupar e investir dinheiro.\nVocê pode participar de palestras, cursos e receber materiais educativos sobre o tema.\n[Saiba mais](https://pé-de-meia.gov).\nRequisitos: interesse em aprender sobre educação financeira.")
    ]
}
