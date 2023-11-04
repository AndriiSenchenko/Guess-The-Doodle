//
//  Misc.swift
//  Guess The Doodle
//
//  Created by Andrii on 05.11.2023.
//

import Foundation

let everydayObjects: [String] = [
    "Apple", "Banana", "Car", "Desk", "Elevator",
    "Fork", "Guitar", "Hat", "Ice Cream", "Jacket",
    "Kite", "Laptop", "Mug", "Notebook", "Orange",
    "Pencil", "Quilt", "Radio", "Shoes", "Table",
    "Umbrella", "Violin", "Wallet", "Xylophone", "Yacht",
    "Zebra", "Book", "Cup", "Dress", "Earphones",
    "Flower", "Globe", "Hammer", "Ink", "Juice",
    "Keyboard", "Lamp", "Mirror", "Newspaper", "Oven",
    "Pillow", "Quill", "Ruler", "Socks", "Television",
    "Umbrella", "Vase", "Watch", "X-ray", "Yogurt",
    "Zipper", "Backpack", "Candle", "Dumbbell", "Elephant",
    "Frisbee", "Glasses", "Hamburger", "Igloo", "Jigsaw",
    "Kangaroo", "Ladder", "Magnet", "Nail", "Orange",
    "Pizza", "Quilt", "Remote", "Sunglasses", "T-shirt",
    "Umbrella", "Violin", "Wrench", "Xylophone", "Yo-yo",
    "Zucchini", "Basket", "Camera", "Dolphin", "Earrings",
    "Football", "Guitar", "Headphones", "Ice", "Jelly",
    "Kite", "Laptop", "Microphone", "Nose", "Octopus",
    "Pencil", "Quilt", "Razor", "Scissors", "Towel",
    "Umbrella", "Violin", "Wallet", "Xylophone", "Yo-yo",
]

enum PlayerAuthState: String {
    case authenticating = "Logging in to Game Center..."
    case unauthenticated = "Please sing in to Game Center to play"
    case authenticated = ""
    case error = "There was an error logging into Game Center."
    case restricted = "You`re not allowed to play multiplayer games!"
}

struct PastGuess: Identifiable {
    let id = UUID()
    var message: String
    var correct: Bool
}

let maxTimeRemaining = 100
