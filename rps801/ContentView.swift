////
////  ContentView.swift
////  rps801
////
////  Created by Amir on 08/01/2022.
////
//
//
/////
/////
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        GameNavigation
//    }
//
//    var GameNavigation: some View{
//        NavigationView{
//            VStack{
//                NavigationLink(destination: SinglePlayer() ){
//                    Text("Single Player")
//                }
//
//
//                NavigationLink(destination:SinglePlayer() ){
//                    Text("Two Player")
//
//                }
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationTitle("First View")
//
//            }
//        }
//    }
//
//}
//
//struct SinglePlayer: View{
//
//  //  @State private var
//    var body: some View{
//        VStack{
//        Text("Choose your hero")
//            Spacer()
//
//            NavigationLink(destination:SingleResult(SelectedChoice: "Rock")){
//               // Text("Rock")
//                RoundedEmojiButton(emoji: "🗿")
//            }
//            Spacer()
//
//            NavigationLink(destination:SingleResult(SelectedChoice: "Paper")){
//                RoundedEmojiButton(emoji: "🧻")
//            }
//            Spacer()
//
//            NavigationLink(destination:SingleResult(SelectedChoice: "Scissors")){
//                RoundedEmojiButton(emoji: "✂️")
//            }
//            Spacer()
//
//
//        }
//    }
//
//}
//
//
//
//struct SingleResult: View{
//    var SelectedChoice: String
//    @State var randomnumber = Int.random(in: 1..<4)
//    var body: some View{
//    VStack{
//        Text("Hello")
//        Text(compare(mychoice: SelectedChoice))
//    }
//
//}
//
//    func computerchoice(number: Int) -> String{
//
//        if (number == 1){
//            return ("Rock")
//
//        }
//        else if (number == 2){
//            return ("Paper")
//        }
//        else{
//            return ("Scissors")
//        }
//    }
//
//
//
////    func computerchoice2(){
////        var randomnumber = Int.random(in: 1..<4)
////        var pcchoice = Int
////
////        if (randomnumber == 1){
////            pcchoice =
////
////        }
////        else if (number == 2){
////            return ("Paper")
////        }
////        else{
////            return ("Scissors")
////        }
////    }
//
//
//
//    func compare(mychoice: String) -> String{
//        if (computerchoice(number: randomnumber) == mychoice){
//            return ("It's a Draw")
//        //    return ("PC picked \(computerchoice(number: randomnumber))")
//        }
//
//
//        else if ((computerchoice(number: randomnumber) == "Rock" && computerchoice(number: randomnumber) == "Scissors") || (mychoice == "Scissors" && computerchoice(number: randomnumber) == "Paper") || (mychoice == "Paper" && computerchoice(number: randomnumber) == "Rock")){
//            return ("You Win")
//      //      return ("PC picked \(computerchoice(number: randomnumber))")
//        }
//
//
//        else {
//            return ("You Loose")
//         //   return ("PC picked \(computerchoice(number: randomnumber))")
//        }
//    }
//
//
//
//}
//
//
//struct RoundedEmojiButton: View {
//    let emoji: String
//
//    var body: some View {
//        ZStack {
//            Capsule()
//                .fill(Color.gray)
//                .frame(width: 342, height: 128)
//            Text(emoji)
//        }
//    }
//}
//
//
//// RoundedEmojiButton(emoji: "🧻")
//
//// computerchoice(number: randomnumber) -> Rock Paper or Scissors
//
//
//
//
//
////func checkMyChoice(hero: String)
//
////
////struct ResultView: View {
////    var choice: String
////
////    var body: some View {
////        Text("You chose \(choice)")
////    }
////}
////
//////ResultView(choice: "Heads")
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
