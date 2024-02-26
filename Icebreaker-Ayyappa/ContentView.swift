//
//  ContentView.swift
//  Icebreaker-Ayyappa
//
//  Created by Ayyappa Tata on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var txtFirstName: String = ""
    @State var txtLastName: String = ""
    @State var txtPrefName: String = ""
    @State var txtAnswer: String = ""
    
    @State var txtQuestion: String = ""
    
    var body: some View {
        
        VStack {
            Text("Icebreaker")
                .font(.system(size: 40))
                .bold()
            
            Text("Build by Ayyappa")
            
            TextField("FirstName", text: $txtFirstName)
            TextField("LastName", text: $txtLastName)
            TextField("PreferredName", text: $txtPrefName)
            
            
            Button(action: { setRandomQuestion()}){
                Text("Get a New Random QUestion")
                    .font(.system(size: 28))
                
            }
            
            Text("Question")
            
            
            TextField("Answer", text: $txtAnswer)
            
            
            Button(action: { writeStudentToFirebase()}){
                Text("Submit")
                    .font(.system(size: 28))
                
            }
        }
        .font(.largeTitle)
        .multilineTextAlignment(.center)
        .autocorrectionDisabled(true)
        .padding()
    }
    
    func setRandomQuestion(){
    }
        
    func writeStudentToFirebase(){
        print("submit presses")
        print("First Name:\(txtFirstName)")
        print("Last Name:\(txtLastName)")
        print("Preferred Name:\(txtPrefName)")
        print("Answer:\(txtAnswer)")
    }
}

#Preview {
    ContentView()
}
