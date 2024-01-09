//
//  ContentView.swift
//  UserDefaults_Ex
//
//  Created by Raghav Deo on 23/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = "BB@gmail.com"
    let savedEmail = UserDefaults.standard.string(forKey: "Email")
    var body: some View {
        NavigationView {
            
            HStack
            {
                Spacer()
                VStack {
                    
                    Text(savedEmail ?? "").onAppear {
                        UserDefaults.standard.set(email, forKey: "Email")
                    }
                    NavigationLink("Next") {
                        NextView()
                    }
                    Spacer()
                }
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
