//Day01
import Cocoa

//var greeting = "Hello, playground"

//var name = "Ted"
//name = "Rebecca"
//name = "Keeley"
//use var only the first time and change

let character = "Daphne"
//character = "Eloise"
//character = "Franceca"
//you can't change constant

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"
//가능한 변수보단 상수를 사용하는 것이 좋다

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

// Day 3
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Novall")
beatles.append("Vivian")

// temperatures.append("Chris")
// 배열에 한번에 한 종류의 데이터만 포함되도록하기에 위의 것 불가

let firstBeatle = beatles[0] // 문자열 배열
let firstNumber = numbers[0] // 정수열 배열
// let notAllowed = firstBeatle + firstNumber

var scores = Array<Int>() // 정수를 추가
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = Array<String>() // = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters = ["Lana","Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

//sort사용해 배열을 정렬
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())
// 오름차순으로 정렬된 새로운 배열 반환, 알파벳 순으로, 숫자면 숫자순으로

// reversed()
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// How to store and find data in dictionaries
var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")
// 항목2가 실제 존재하는지 보장 불가하기에 문제 야기되기에 딕셔너리를 활용
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//print(employee2["name"])
//print(employee2["job"])
//print(employee2["location"])
// 유효하지만, 값이 할당되지 않은 딕셔너리 키를 읽으려고 해서 오류가 생기는 것
// 옵셔널은 데이터가 있을 수도 있고 없을 수도 있다.

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Othis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

//빈 딕셔너리를 마들고 하나씩 설정 가능
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// [Sring: Int] 문자열을 키, 정수를 값으로
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Batman"] = "Penguin"
// 키 사용해 값을 다시 작성 가능 

// How to use sets for fast data lookup
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)
