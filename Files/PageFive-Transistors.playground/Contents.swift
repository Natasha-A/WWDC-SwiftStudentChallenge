import PlaygroundSupport
import SwiftUI

/*********** PAGE FIVE *************/
struct PageFiveViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    @State private var showCircuit: Bool = false
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.all)
            VStack{
                Text("4. Transistors")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 7.27.11 PM.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280)
                    .border(Color.green) //1st horizontal group
                
                
                Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...")
                    .foregroundColor(.black)
                    .padding(20)
                    .multilineTextAlignment(.center)
                
                VStack{
                    HStack {
                        VStack {
                            Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400)
                                .border(Color.green)  //2st horizontal group
                            Button(action: {
                                self.showCircuit.toggle()
                            }) {
                                Text("Continue")
                                    .foregroundColor(.black)
                                    .padding(5)
                                    .border(Color.black)
                            }
                            if showCircuit {
                                Text("Show circuit!")
                                    .foregroundColor(.black)
                            }
                        }
                        VStack {
                            Spacer()
                            Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)... the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...").foregroundColor(.black).padding(20)
                            NavigationLink(destination: PageSixViewController()) {
                                Text("Continue")
                                    .foregroundColor(.black)
                                    .padding(20)
                                    .border(Color.black)
                            }
                        }
                    }
                }.padding(10)
            }.border(Color.black) //VStack 2
        } //VStack 1
    } // ZStack
}// Body View
