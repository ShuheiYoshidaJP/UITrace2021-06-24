//
//  LoginView.swift
//  UITrace2021年6月24日
//
//  Created by 吉田周平 on 2021/06/24.
//

import SwiftUI

struct LoginView: View {
    @State var emailOrUserName = ""
    @State var password = ""
    let link = "https://www.apple.com/jp/"
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Color(.sRGB, red: 246/255, green: 235/255, blue: 230/255, opacity: 1.0)
                    .frame(height: 400)
                VStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Cancel")
                                .foregroundColor(.black)
                                .padding()
                        })
                        Spacer()
                    }
                    TextField("Email or Username", text: $emailOrUserName)
                        .padding()
                        .background(Color.white)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray, lineWidth: 1.0)
                        )
                        .padding(.horizontal)
                    
                    TextField("Password", text: $emailOrUserName)
                        .padding()
                        .background(Color.white)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray, lineWidth: 1.0)
                        )
                        .padding(.horizontal)
                    //MARK: - render Markdown content
                    Text("By tapping Sign in, or Continue with Apple, Facebook, or Google, you agree to **[Etsy's Terms of Use](\(link))** and **[Privacy Policy](\(link))**")
                        .font(.caption)
                        .padding()
                    
                    Button(action: {
                    }, label: {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .cornerRadius(24)
                            .padding(.horizontal)
                    })
                    Button(action: {}, label: {
                        Text("Forgot password")
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .cornerRadius(24)
                            .padding(.horizontal)
                    })
                }
            }
            Spacer()
                .frame(height: 56)
            Button(action: {}, label: {
                Label("Continue with Apple", systemImage: "applelogo")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 2.0)
                    )
                    .padding(.horizontal)
            })
            Button(action: {}, label: {
                HStack {
                    Image("f_logo_RGB-Blue_58")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                    Text("Continue with Facebook")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(.black, lineWidth: 2.0)
                )
                .padding(.horizontal)
            })
            Button(action: {}, label: {
                HStack {
                    Image("google_icon")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                    Text("Continue with Google")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(.black, lineWidth: 2.0)
                )
                .padding(.horizontal)
            })
            Button(action: {}, label: {
                Text("**Don't have an account? Sign up**")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(24)
                    .padding(.horizontal)
            })
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
