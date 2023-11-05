//
//  MenuView.swift
//  Guess The Doodle
//
//  Created by Andrii on 05.11.2023.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchManager: MatchManager
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(30)
            Spacer()
            Button {
                // TODO: Start match making menu
            } label: {
                Text("PLAY")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .disabled(matchManager.authenticationSate != .authenticated || matchManager.inGame)
            .padding(.vertical, 20)
            .padding(.horizontal, 100)
            .background(
                Capsule(style: .circular)
                    .fill(matchManager.authenticationSate != .authenticated || matchManager.inGame ? .gray : Color("playBtn"))
            )
            Text(matchManager.authenticationSate.rawValue)
                .font(.headline.weight(.semibold))
                .foregroundColor(Color("primaryYellow"))
                .padding()
            Spacer()
        }
        .background(
            Image("menuBg")
                .resizable()
                .scaledToFill()
                .scaleEffect(1.2)
        )
        .ignoresSafeArea()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(matchManager: MatchManager())
    }
}
