//
//  ContentView.swift
//  UITrace2021年6月24日
//
//  Created by 吉田周平 on 2021/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var showingLoginView = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Continue as guest")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.trailing)
                })
            }
            Spacer()
            Text("Etsy")
                .foregroundColor(Color(.sRGB,
                                       red: 225/255,
                                       green: 115/255,
                                       blue: 62/255,
                                       opacity: 1.0))
                .font(.largeTitle)
            Image("magicpattern-jbywvpa9vH8-unsplash")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            Spacer()
            Text("Welcome to the world's most imaginative marketplace")
                .frame(width: 320)
                .font(.title2)
                .multilineTextAlignment(.center)
            Button(action: {
                showingLoginView.toggle()
            }, label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(24)
                    .padding(.horizontal)
            })
            Button(action: {}, label: {
                Text("I already have an account")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(24)
                    .padding(.horizontal)
            })
        }
        .sheet(isPresented: $showingLoginView) {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
