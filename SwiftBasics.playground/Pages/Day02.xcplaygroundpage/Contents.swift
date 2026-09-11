//: [Previous](@previous)

import Foundation
import Cocoa

// Day02
// How to store truth with Booleans
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

//let number = 120
//print(number.isMultiple(of: 3))

let goodDogs = true
//let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)

// How to join strings together
let firstPart = "Hello, "
let secondPart = "World!"
let greeting = firstPart + secondPart

// let people = "Haters"
// let action = "hate"
// let lyric = people + " gonna " + action
// print(lyric)

// Int와 Double 숫자 합치면 operator overloading(연산자 오버로딩)이라고 한다.
// `&`와 같은 연산자가 사용 방식에 따라 다른 의미를 가질 수 있다는 뜻
// 결합되는 문자열이 많아지면 비효율적이기 떄문에 지양

let luggageCode = "1" + "2" + "3" + "4" + "5"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."
// 특수하게 처리할 수 있도록 큰따옴표 앞에 백슬래시를 붙이면 문자열 안에 큰따옴표를 포함할 수 있습니다.
// 문자열 안에 백슬래시를 넣고, 그 안에 변수나 상수의 이름을 괄호 안에 넣으면 됩니다.

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age)years old."
print(message)

// let number = 11
// let missionMessage = "Apollo" + number + " landed on the moon."
// 위 같은 코드는 문자열끼리, 정수끼리, 소수끼리만 더할 수 있어 불가능

let number = 11
let missionMessage = "Apollo" + String(number) + " landed on the moon"
//그러니 문자열 보간을 쓰자

print("5 x 5 is \(5 * 5)")

// Summary: Simple data
// Checkpoint 1
let Celsius = 34.0
let Fahrenheit = Celsius * 9.0 / 5.0 + 32.0
print(Fahrenheit)
