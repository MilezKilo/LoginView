//
//  Home.swift
//  LoginAndSignUpPage
//
//  Created by Майлс on 09.02.2022.
//

import SwiftUI

struct Home: View {
    
    @State private var index: Int = 0
    @Namespace var name
    
    @State private var pass: String = ""
    @State private var user: String = ""
    
    var body: some View {
        VStack {
            if UIScreen.main.bounds.height < 750 {
                ScrollView(.vertical, showsIndicators: false) {
                    mainView
                }
            } else {
                mainView
            }
        }
        .padding(.vertical)
    }
}

extension Home {
    private var header: some View {
        HStack(spacing: 0) {
            Button(action: {
                withAnimation(.spring()) {
                    index = 0
                }
            }) {
                VStack {
                    Text("Login")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(index == 0 ? .accentColor : .gray)
                    
                    ZStack {
                        Capsule()
                            .fill(Color.black.opacity(0.04))
                            .frame(height: 4)
                        
                        if index == 0 {
                            Capsule()
                                .fill(Color("Color"))
                                .frame(height: 4)
                                .matchedGeometryEffect(id: "Tab", in: name)
                        }
                    }
                }
            }
            
            Button(action: {
                withAnimation(.spring()) {
                    index = 1
                }
            }) {
                VStack {
                    Text("Sign in")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(index == 1 ? .accentColor : .gray)
                    
                    ZStack {
                        Capsule()
                            .fill(Color.black.opacity(0.04))
                            .frame(height: 4)
                        
                        if index == 1 {
                            Capsule()
                                .fill(Color("Color"))
                                .frame(height: 4)
                                .matchedGeometryEffect(id: "Tab", in: name)
                        }
                    }
                }
            }
        }
    }
    private var mainView: some View {
        VStack {
            Spacer()
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
            
            header.padding(.top, 30)
            Spacer()
            if index == 0 {
                Login(pass: $pass)
            } else {
                SignUp(pass: $pass, user: $user)
            }
            Spacer()
        }
    }
}


//MARK: - PREVIEW
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().preferredColorScheme(.light)
    }
}
let socials = ["apple", "google", "facebook"]
