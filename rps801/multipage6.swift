//
//  multipage6.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//

import SwiftUI

struct multipage6: View {
    @Binding var multimychoice: String
    @Binding var multichoiceopponent: String
    @State var transition = false
    
    
    var body: some View {
        //        Text(mychoice)
        //        Text(pcchoice)
        VStack{
            Spacer()
                .frame(height:50)
            
            HStack{
                
                if transition{
                    EmojiButton(emoji: multimychoice)
                        .transition(.move(edge: .trailing))
                        .offset(y: -10)
                        .offset(x: 60)
                        .font(.system(size: 80))
                        
                                    
                                    }
                                    
                                    if transition{
                            EmojiButton(emoji: multichoiceopponent)
                                .offset(y: 0)
                                .offset(x: -60)
                                .font(.system(size: 80))
                                .transition(.move(edge: .trailing))
                            
                        }
                                    }
                                    
                                    
                                    Text(multicompare(multimychoice: multimychoice, multichoiceop: multichoiceopponent))
                                        .font(.system(size: 80))
                                    }
                                    
                                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                transition = true
                            }
                        }
                                    
                                    
                                    }
                                    }
                                    //struct multipage6_Previews: PreviewProvider {
//    static var previews: some View {
//        multipage6()
//    }
//}


func multicompare(multimychoice: String, multichoiceop: String) -> String{
    if  (multimychoice == multichoiceop){
        return ("Tie!")
            }


    else if (multimychoice == "🗿" && multichoiceop == "✂️") || (multimychoice == "✂️" && multichoiceop == "🧻") || (multimychoice == "🧻" && multichoiceop == "🗿"){
        return ("Win")
 
    }


    else {
        return ("Lose!")
    }
}



