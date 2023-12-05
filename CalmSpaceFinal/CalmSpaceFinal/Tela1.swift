//
//  Tela1.swift
//  CalmSpaceFinal
//
//  Created by Student09 on 22/08/23.
//

import SwiftUI

struct Tela1: View {
    
    @State private var selection = "Ansioso"
    let emotions = ["Ansioso", "Depressivo", "Frustado"]
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Text("CalmSpace")
                        .font(.system(size: 33))
                        .bold(true)
                        .position(x:150, y:100)
                    
                    Image("mato")
                        .resizable()
                        .frame(width:150, height: 200)
                        .position(x:140, y:90)
                    
                }.ignoresSafeArea()
                
                
                Spacer()
                Text("Bem vindo!")
                                .bold(true)
                                .font(.system(size: 35))
                            Text("Como você esta se sentindo hoje? ")
                                .bold(true)
                                .font(.system(size: 23))
                
                Picker("Select a emotion", selection: $selection) {
                    ForEach(emotions, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                .accentColor(.black)
                Spacer()
                
                
                NavigationLink(destination:
                                selection == "Ansioso" ? AnyView(Tela2())
                                : selection == "Depressivo" ? AnyView(Tela8())
                                : AnyView(Tela2())
                            ){
                    Image("continuar")
                    .resizable()
                    .frame(width: 200,height:100)
                    .foregroundColor(.black)
                }
                
                Image("passa")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .position(x:310, y:100)
                
                NavigationLink(destination: Tela8()){
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundColor(.black)
                        Text("Contatos") .foregroundColor(.black)
                            .font(.system(size: 23))
                        
                    }
                    
                    .frame(width: 400, height: 60)
                    .background(.white)
                    .opacity(0.4)
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("corTela1"))
            .ignoresSafeArea()
        }
        
    }
    
    
}

struct Tela1_Previews: PreviewProvider {
    static var previews: some View {
        Tela1()
    }
}
