//
//  ContentView.swift
//  FP-Viagem
//
//  Created by Elisangela Pethke on 17.05.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { view in
            
            //MARK: - VStack Principal
            VStack{
                
                //MARK: - VStack herader
                
                VStack{
                    Text("Travel Now")
                    
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .font(.custom("avenir Book", size: 40))
                        .padding(.top,20)
                    
                    Text("SPECIAL")
                        .foregroundColor(Color.yellow)
                        .font(.custom("Avenir Black", size: 25))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 38)
                    
                         Text("GERMANY")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 22))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                }
                .frame(width:view.size.width, height:170 ,alignment:.top)
                .background(Color.purple)
                
                HStack{
                    Button(action: {}) {
                        Text("Hoteis")
                            .font(.custom("avenir Medium", size: 17))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(Color.blue)
                    .offset(x: 50)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                            .font(.custom("avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    .offset(x: -50)
                }
                .offset(y: -33)
                
                
                List (viagens) { viagem in
                    VStack (alignment:.leading){
                        Text(viagem.titulo)
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                        Image(viagem.imagem)
                            .resizable()
                            .frame(height:125)
                        
                        HStack{
                            Text(viagem.quantidadeDeDias)
                                .font(.body)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.blue)
                            Spacer()
                            Text(viagem.valor)
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                        }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
