//
//  MatchManager.swift
//  Guess The Doodle
//
//  Created by Andrii on 05.11.2023.
//

import Foundation

class MatchManager: ObservableObject {
    @Published var inGame = false
    @Published var isGameOver = false
    @Published var authenticationSate = PlayerAuthState.authenticating
    @Published var currentlyDrawing = true
    @Published var drawPrompt = ""
    @Published var pastGuesses = [PastGuess]()
    @Published var score = 0
    @Published var remainingTime = maxTimeRemaining
}
