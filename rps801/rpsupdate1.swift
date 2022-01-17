//
//  rpsupdate1.swift
//  rps801
//
//  Created by Amir on 12/01/2022.
//

import SwiftUI

struct rpsupdate1: View {
    
    @State var secondpage = false
    @State var multiplegame = false
    
    //cherez Button change secondapage to true
    // trigerti -> NavigationLink (isActive: $secondpage)
    // zapuskaet page2
    
    var body: some View {
        GameNavigation1
    }
    var GameNavigation1: some View{
        
        NavigationView{
            ZStack{
                Image("rpsbg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                        .frame(height:50)
                    Text("Welcome to the game!").font(.system(size: 54, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                    Spacer()
                    
                    // if secondapage is true -> switch to //SinglePlayer1()
                    //isActive
                    
                    NavigationLink(isActive: $secondpage){
                        rpspage2()
                    } label: {
                        EmptyView()
                    }
                    //Q zachem navlink + empty view
                    //raznica s destination: (..)
                    
                    Button{
                        secondpage = true
                    } label : {
                        ZStack {
                            RoundedRectangle(cornerRadius: 9).fill(Color.purple).frame(width: 358, height: 50)
                            Text("Single Player")
                                .foregroundColor(.white)
                    }
                }
                    
                    NavigationLink(isActive: $multiplegame){
                        multipage2()
                    } label: {
                        EmptyView()
                    }
                    
                    Spacer()
                        .frame(height:5)
                    
                    Button{
                        multiplegame = true
                    } label : {
                        ZStack {
                            RoundedRectangle(cornerRadius: 9).fill(Color.purple).frame(width: 358, height: 50)
                            Text("Multiplayer")
                                .foregroundColor(.white)
                    }
                }
                    
                    
    
                }
            
                    

//             NavigationLink(destination: SinglePlayer() ){
//                  Text("Single Player")
//                }
//
//
//                NavigationView {
//                    VStack {
//                        NavigationLink(isActive: $showSecondView) {
                
//                            SecondView()
//                        } label: {
//                            EmptyView()
//                        }
//
//                        Button {
//                            showSecondView = true
//                        } label: {
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 16).fill(Color.red).frame(height: 52)
//                                Text("hit me and I will navigate")
//                            }
//                            .padding()
//                        }
//                    }
//                    .onAppear {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                            showSecondView = true
//                        }
//                    }
//                    .navigationBarTitleDisplayMode(.inline)
//                    .navigationTitle("First View")
//                }
                
//                NavigationLink(destination:SinglePlayer() ){
//                    Text("Two Player")
//
//                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("")
                
            }
        }
    }
    
                        }



//button for single/multi

//struct playbutton: View {
//    var text: String
//  //  var clicked: Bool /// use closure for callback
//
//    var body: some View {
//        Button { /// call the closure here
//            HStack {
//                Text(text) /// your text
//            }
//            .foregroundColor(Color.purple)
//            .padding()
//            .background(Color(.secondarySystemBackground))
//            .cornerRadius(16)
//            .frame(width: 34, height: 50, alignment: .center)
//        }
//    }
//}
        
    
//}





struct rpsupdate1_Previews: PreviewProvider {
    static var previews: some View {
        rpsupdate1()
    }
}

