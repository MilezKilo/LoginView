//
//  Login.swift
//  LoginAndSignUpPage
//
//  Created by Майлс on 09.02.2022.
//

import SwiftUI

struct Login: View {
    
    @Binding var pass: String
    
    var body: some View {
        
        VStack {
            HStack {
                titleView
                Spacer(minLength: 0)
                imageView
            }
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            passView
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            loginButton
            
            socialButtons
        }
    }
}

extension Login {
    private var titleView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Hello again")
                .bold()
            Text("Elizabeth")
                .font(.title)
                .bold()
            
            Button(action: {}) {
                Text("This isn't me")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color("Color"))
            }
        }
    }
    private var imageView: some View {
        Image("elizabeth")
            .resizable()
            .scaledToFill()
            .frame(width: 85, height: 85)
            .clipShape(Circle())
    }
    private var passView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Password")
                .font(.caption)
                .bold()
                .foregroundColor(.gray)
            SecureField("password", text: $pass)
                .padding()
                .foregroundColor(.black)
                .background(Color.white.cornerRadius(10))
                .shadow(color: Color.black.opacity(0.25), radius: 5)
            Button(action: {}) {
                Text("Forget Password")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color("Color"))
            }
        }
    }
    private var loginButton: some View {
        Button(action: {}) {
            Text("Login")
                .font(.system(size: 20))
                .bold()
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 50)
                .frame(height: 60)
                .background(LinearGradient(
                        colors: [Color("Color"), Color("Color1")],
                        startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
        }
        .padding(.horizontal, 25)
        .padding(.top, 20)
    }
    private var socialButtons: some View {
        VStack {
            Button(action: {}) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(Color("Color"))
                    Text("Login With Face ID")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color("Color"))
                    Spacer(minLength: 0)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Color"), lineWidth: 1)
                        .frame(height: 60))
            }
            
            HStack(spacing: 50) {
                ForEach(socials, id: \.self) { social in
                    Button(action: {}) {
                        Image(social)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(social == "google" ? "Color1" : "Color"))
                    }
                }
            }
            .padding(.top, 25)
        }
        .padding(.top, 20)
        .padding(.horizontal, 25)
    }
}

//MARK: - PREVIEW
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(pass: .constant(""))
    }
}
