
import PlaygroundSupport
import SwiftUI

/*Can also use page navigation*/

 struct StartScreenViewController: View {
 @State private var showDetails = false
    var body: some View {
        NavigationView {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Intro to Electronics")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Image(uiImage:#imageLiteral(resourceName: "comps.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400)
                    .padding(50)
 
                Text("So you want to learn about electronics? Well you came to the right place. I am going to show you some of the most unique features you can find!I am going to show you some of the most unique features you can find!")
                    .lineLimit(4)
                    .truncationMode(.middle)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(30)
                NavigationLink(destination: PageOneViewController()){
                //Toggle button
                    Text("Show details")
                        .foregroundColor(.black)
                        .padding(30)
                        .border(Color.black)
            }.padding(40)
            }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        }
 }

/*********** PAGE ONE *************/
struct PageOneViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.all)
            VStack { //Vertical Section Stacks
                Text("1. Introducing LEDs!")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                HStack { //Section One
                    Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 5.27.54 PM.png")) //1st horizontal group
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                        .border(Color.green)
                    
                    VStack {
                        Text("This is a text body! This is a text body! This is a text body! This is a text body!This is a text body! This is a text body! This is a text body!This is a text body! This is a text body! This is a text body!") //2nd horizontal group
                            .foregroundColor(.black)
                            .border(Color.blue)
                            .padding(20)
                        
                        Button(action: {
                            self.nextPage.toggle()
                        }) {
                            Text("Show details")
                        }
                    }
                    
                }.border(Color.black).padding(30)
                
                if nextPage {//...Once button is clicked, adds to view Section Two
                    
                    HStack { //Section Two
                        Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...") //1st horizonal group
                            .foregroundColor(.black)
                            .border(Color.blue)
                            .padding(20)
                        
                        Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 5.27.54 PM.png")) //2nd horizonal group
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .border(Color.green)
                        VStack { //3rd horizonal group
                            Text("...and the lowest grade (C-) is given to the shortest leg - the Cathode(-)!")
                                .foregroundColor(.black)
                                .border(Color.blue)
                                .padding(20)
                            
                            NavigationLink(destination: PageTwoViewController()){
                            Text("Show details")
                                    .foregroundColor(.black)
                                    .padding(20)
                                    .border(Color.black)
                            }
                        }
                    }.border(Color.black).padding(30)
                    HStack{
                        Button("❔What is polarity?") {
                            self.showPopover = true
                        }.popover(
                            isPresented: self.$showPopover,
                            arrowEdge: .bottom
                        ) { Text("This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!").padding(10)
                        }
                        Spacer()
                    }.padding(20)
                }
            }.navigationViewStyle(StackNavigationViewStyle())
        }.border(Color.black)
    } //All within a ZStack
}
//NavigationLink(destination: PageOneViewController()){

/*********** PAGE TWO *************/

struct PageTwoViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.all)
            VStack { //Vertical Section Stacks
                Text("1.LEDS!")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...")
                    .foregroundColor(.black)
                    .padding(20)
                    .multilineTextAlignment(.center)
                
                HStack { //Section One
                    
                    Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember thei")
                        .foregroundColor(.white)
                    
                    Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 5.27.54 PM.png")) //1st horizontal group
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                        .border(Color.green)
                    
                    VStack {
                        Spacer()
                        Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember thei")
                        
                        Button(action: {
                            self.showSectionTwo.toggle()
                        }) {
                            Text("Show details")
                                .foregroundColor(.black)
                                .padding(20)
                                .border(Color.black)
                        }
                        if showSectionTwo {
                            Text("...Show circuit!")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                HStack { //Section Two
                    Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 5.27.54 PM.png")) //2nd horizonal group
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                        .border(Color.green)
                    VStack { //3rd horizonal group
                        Text("...and the lowest grade (C-) is given to the shortest leg - the Cathode(-)!lowest grade (C-) is given to the shortest leg - the Cathode(-)!lowest grade (C-) is given to the shortest leg - the Cathode(-)!")
                            .foregroundColor(.black)
                            .border(Color.blue)
                            .padding(20)
                        
                        NavigationLink(destination: PageThreeViewController()) {
                            Text("Continue")
                                .foregroundColor(.black)
                                .padding(20)
                                .border(Color.black)
                        }
                    }
                }.border(Color.black).padding(20)
                VStack {
                    HStack{
                        Button("❔What is a schematic?") {
                            self.showPopover = true
                        }.popover(
                            isPresented: self.$showPopover,
                            arrowEdge: .bottom
                        ) { Text("This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!This is what polarity is!").padding(10)
                        }
                        Spacer()
                    }.padding(20)
                }
            }
        }
    }
    //All within a ZStack
}

/*********** PAGE THREE *************/
struct PageThreeViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    @State private var ohms: Double = 0
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.
                all)
            
            VStack{
                Text("2. Resistors")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 5.27.54 PM.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .border(Color.green)//1st horizontal group
                
                Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...")
                    .foregroundColor(.black)
                    .padding(20)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                        .border(Color.green) //1st horizontal group
                    VStack {
                        Text("Try to move the slider to see how the value of the resistence (in ohms) changes how much current flows.").foregroundColor(.black)
                        Slider(value: $ohms, in: 0...100, step: 1) //Slider
                        if (ohms <= 20){
                            Text("Low Brightness!").foregroundColor(.black).padding(.bottom, 20)
                        } else if (ohms > 20 && ohms < 60){
                            Text("Medium Brightness!").foregroundColor(.black).padding(.bottom, 20)
                        } else {
                            Text("High Brightness!").foregroundColor(.black).padding(.bottom, 20)
                        }
                        
                        NavigationLink(destination: PageFourViewController()) {
                            Text("Continue")
                                .foregroundColor(.black)
                                .padding(20)
                                .border(Color.black)
                    }
                }.padding(10)
            }.padding(20)
        }.border(Color.black).padding(20)
    } //ZStack closing
} //Body closing
}

/*********** PAGE FOUR *************/
struct PageFourViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    @State private var circuitOne: Bool = false
    @State private var circuitTwo: Bool = false
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.
                all)
            
            VStack{
                Text("3. Capacitators")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 5.27.54 PM.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280)
                    .border(Color.green) //1st horizontal group
                
                Text("If you noticed on the 'legs' of the LEDs, the lengths for each one is different. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...")
                    .foregroundColor(.black)
                    .padding(20)
                    .multilineTextAlignment(.center)
                HStack {
                    VStack {
                        Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .border(Color.green) //1st horizontal group
                        Button(action: {
                            self.circuitOne.toggle()
                        }) {
                            Text("Continue")
                                .foregroundColor(.black)
                                .padding(5)
                                .border(Color.black)
                        }
                        if circuitOne {
                            Text("Show C circuit!")
                                .foregroundColor(.black)
                        }
                    }
                    VStack {
                        Text("Try to move the slider to see how the value of the resistence (in ohms) changes how much current flows.").foregroundColor(.black).padding(10)               .multilineTextAlignment(.center)
                        NavigationLink(destination: PageFiveViewController()) {
                            Text("Continue")
                                .foregroundColor(.black)
                                .padding(20)
                                .border(Color.black)
                        }
                    }.padding(10)
                    
                    VStack {
                        Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .border(Color.green)  //2st horizontal group
                        Button(action: {
                            self.nextPage.toggle()
                        }) {
                            Text("Continue")
                                .foregroundColor(.black)
                                .border(Color.black)
                        }
                        if nextPage {
                            Text("No C circuit!")
                                .foregroundColor(.black)
                        }
                    }
                }.padding(10)
            }.padding(20)//VStack Closing
        }
    }
}

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

//************* PAGE SIX - RECAP **************
struct PageSixViewController: View {
    @State private var answerOne: String = "Enter #"
    @State private var answerTwo: String = "Enter #"
    @State private var answerThree: String = "Enter #"
    @State private var answerFour: String = "Enter #"
    
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
                            Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 230)
                                .border(Color.green)
                                .padding(10)
                            TextField("Enter #", text: $answerOne).border(Color.black).frame(width: 70, height: 10, alignment: .center).foregroundColor(.black)
                            /*if (answerOne == "1") {
                                Text("Correct!").foregroundColor(.green)
                            } else {
                                Text("Try Again!").foregroundColor(.red)
                            }*/
                        }
                        VStack {
                            Text("Resistor").foregroundColor(.black)
                            Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 230)
                                .border(Color.green)
                                .padding(10)
                            TextField("Enter #", text: $answerTwo).border(Color.black).frame(width: 70, height: 10, alignment: .leading).foregroundColor(.black)
                            /*if (answerTwo == "1") {
                                Text("Correct!").foregroundColor(.green)
                                
                            } else {
                                Text("Try Again!").foregroundColor(.red)
                            }*/
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
                            TextField("Enter #", text: $answerThree).border(Color.black).frame(width: 70, height: 10, alignment: .leading).foregroundColor(.black)
                            /*if (answerThree == "1") {
                                Text("Correct!").foregroundColor(.green)
                            } else {
                                Text("Try Again!").foregroundColor(.red)
                            }*/
                        }
                        VStack {
                            Text("Transistor").foregroundColor(.black)
                            Image(uiImage:#imageLiteral(resourceName: "Screen Shot 2020-05-15 at 3.48.44 PM.png")).resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 230)
                                .border(Color.green)
                                .padding(10)
                            TextField("Enter #", text: $answerFour).border(Color.black).frame(width: 70, height: 10, alignment: .leading).foregroundColor(.black)
                            /*if (answerFour == "1") {
                                Text("Correct!").foregroundColor(.green)
                                
                            } else {
                                Text("Try Again!").foregroundColor(.red)
                            }*/
                        }
                    }
                    Text("(1) ResistorLine 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line!").foregroundColor(.black).padding(10).multilineTextAlignment(.leading)
                    Text("(2) TransistorLine 2!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!").foregroundColor(.black).multilineTextAlignment(.leading)
                    Text("(3) LEDLine 3!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!").foregroundColor(.black).padding(10).multilineTextAlignment(.leading)
                    Text("(4) CapacitatorLine 4!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!Line 1!").foregroundColor(.black).multilineTextAlignment(.leading)
                }
            }
            Text("Continue")
        }
    }
    //Main Program
}
}
PlaygroundPage.current.setLiveView(StartScreenViewController())
