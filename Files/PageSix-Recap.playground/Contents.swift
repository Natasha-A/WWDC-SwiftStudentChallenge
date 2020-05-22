import PlaygroundSupport
import SwiftUI
struct PageSixViewController: View {
    @State private var answerOne: String = "Enter #"
    var body: some View {
        NavigationView {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Text("5. Recap!").navigationBarTitle("")
                    .navigationBarHidden(true) //Hide default navbar
                    .foregroundColor(.black)
                    .padding(10)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text("5. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!. Recap!").foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                HStack{
                    VStack {
                        Text("LED").foregroundColor(.black)
                        Image(uiImage: #imageLiteral(resourceName: "LEDIconR1.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230)
                            .border(Color.green)
                            .padding(10)
                        TextField("Enter #", text: $answerOne).border(Color.black).frame(width: 70, height: 10, alignment: .center).foregroundColor(.black)
                    }
                    VStack {
                        Text("Resistor").foregroundColor(.black)
                        Image(uiImage:#imageLiteral(resourceName: "CapacitatorIcon2.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230)
                            .border(Color.green)
                            .padding(10)
                        TextField("Enter #", text: $answerOne).border(Color.black).frame(width: 70, height: 10, alignment: .leading).foregroundColor(.black)
                    }
                }.padding(.bottom, 30).border(Color.black)
                HStack{
                    VStack {
                        Text("Capacitator").foregroundColor(.black)
                        Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230)
                            .border(Color.green)
                            .padding(10)
                        TextField("Enter #", text: $answerOne).border(Color.black).frame(width: 70, height: 10, alignment: .leading).foregroundColor(.black)
                    }
                    VStack {
                        Text("Transistor").foregroundColor(.black)
                        Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230)
                            .border(Color.green)
                            .padding(10)
                        TextField("Enter #", text: $answerOne).border(Color.black).frame(width: 70, height: 10, alignment: .leading).foregroundColor(.black)
                    }
                }
                Text("(1) Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line!").foregroundColor(.black).padding(10).multilineTextAlignment(.leading)
                Text("(2) Line 2!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!").foregroundColor(.black).multilineTextAlignment(.leading)
                Text("(3) Line 3!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!").foregroundColor(.black).padding(10).multilineTextAlignment(.leading)
                Text("(4) Line 4!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!").foregroundColor(.black).multilineTextAlignment(.leading)
            }
        }
    }.navigationViewStyle(StackNavigationViewStyle())
}
//Main Program
}

PlaygroundPage.current.setLiveView(PageSixViewController())


