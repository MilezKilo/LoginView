//
//  SignUp.swift
//  LoginAndSignUpPage
//
//  Created by Майлс on 09.02.2022.
//

import SwiftUI

struct SignUp: View {
    
    @Binding var pass: String
    @Binding var user: String
    
    var body: some View {
        VStack {
            HStack {
                titleView
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            accountView
                .padding(.horizontal, 25)
                .padding(.top, 5)
            passView
                .padding(.horizontal, 25)
                .padding(.top, 20)
            
            loginButton
            
            socialButtons
        }
    }
}

extension SignUp {
    private var titleView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Create account")
                .font(.title)
                .bold()
        }
    }
    private var accountView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Login")
                .font(.caption)
                .bold()
                .foregroundColor(.gray)
            TextField("email", text: $user)
                .padding()
                .foregroundColor(.black)
                .background(Color.white.cornerRadius(10))
                .shadow(color: Color.black.opacity(0.25), radius: 5)
        }
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
        }
    }
    private var loginButton: some View {
        Button(action: {}) {
            Text("Sign Up")
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
                    Text("Sign Up with Face ID")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color("Color"))
                    Spacer(minLength: 0)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Color"), lineWidth: 1)
                        .frame(height: 60))
            }
            
            HStack(spacing: 50) {
                ForEach(socials, id: \.self) { social in
                    Button(action: {}) {
                        Image(social)
                            .resizable()
                            .frame(width: 30, height: 30)
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
struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(pass: .constant(""), user: .constant(""))
    }
}
