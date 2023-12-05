//
//  Tela8.swift
//  CalmSpaceFinal
//
//  Created by Student09 on 22/08/23.
//

import SwiftUI

struct Tela8: View {
    var body: some View {
        VStack {
                    Text("Lembre-se de pedir ajuda a profissional especializado")
                        .font(.title2)
                        .fontWeight(.black)
                        .multilineTextAlignment(.center)
                        .position(x:190,y:70)
                    HStack{
                        Image(systemName: "phone.arrow.down.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .padding(.leading)
                            .position(x:30,y:100)
                        Text("Centro de valorização da vida\n Ligue 188")
                            .multilineTextAlignment(.center)
                            .position(x:20,y:100)
                    }
                    HStack{
                        Image(systemName: "envelope")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .position(x:40,y:90)
                        Text("Mande e-mail para:\nComunicacao@cvv.org.br")
                            .multilineTextAlignment(.center)
                            .position(x:20,y:100)
                    }
                    HStack {
                        Image(systemName: "person.wave.2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .position(x:40,y:80)
                            //.padding(.leading)
                        Text("Pesquise no site e ache o posto de atendimento mais próximo:")
                            .multilineTextAlignment(.center)
                            .position(x:20,y:90)
                    }
                    Text("https://www.cvv.org.br/postos-de-atendimento/")
                        .position(x:190,y:50)
                    Image("doutora")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200)
                        
                    
        }.background(Color(.white))
                 .ignoresSafeArea()    }
}

struct Tela8_Previews: PreviewProvider {
    static var previews: some View {
        Tela8()
    }
}
