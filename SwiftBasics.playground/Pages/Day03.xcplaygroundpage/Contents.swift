//: [Previous](@previous)

import Foundation
import Cocoa

var greeting = "Hello, playground"

// Mark: - Day 3
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

// Mark: - How to use sets for fast data lookup
do{
    //let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
    //print(people)
    
    var people = Set<String>()
    people.insert("Denzel Washington")
    people.insert("Tom Cruise")
    people.insert("Nicolas Cage")
    people.insert("Samuel L Jackson")
    
    // insert()을 활용한다. 배열에서는 append()를 사용
    // Set은 항목을 매우 빠르게 찾을 수 있도록 최적화도니 순서로 저장한다.
}

// Mark: - How to create and use enums

    var selected = "Monday"
    selected = "Tuesday"
    selected = "January"
    selected = "Friday "
    // 공백이 있는 Friday와 없는 Friday를 다르게 인식한다. 모든 글자를 저장하지 않아도 되도록 enum(열거형)이 등장한다.
    // 열거형을 사용하면 특정 값 범위내에서만 값을 가질 수 있는 새로운 데이터 타입을 정의할 수 있다.
    
    //enum Weekday{
    //    case monday
    //    case tuesday
    //    case wednesday
    //    case thursday
    //    case friday
    //}
    // 문자열 대신 열거형 써보기
    //var day = Weekday.monday
    //day = Weekday.tuesday
    //day = Weekday.friday
    // 실수로 공백 추가하거나 월 이름 틀릴 일이 없어짐
    // 열거형을 더 쉽게 사용하는 두 가지 기능
    // 1. case 한번만 작성하고 쉼표로 구분 가능하다
    enum Weekday{
        case monday, tuesday, wednesday, thursday, friday
    }

// 변수나 상수에 값을 할당하면 해당 데이터 형식이 고정된다. (문자열에서 정수로 변경 불가)
// 열거형의 경우 첫번째 할당 후에는 열거형 이름을 생략할 수 있다.
var day = Weekday.monday
day = .tuesday
day = .friday
// 열거형의 주요 장점 중 하나는 Swift가 최적화된 형태로 저장한다는 것 
