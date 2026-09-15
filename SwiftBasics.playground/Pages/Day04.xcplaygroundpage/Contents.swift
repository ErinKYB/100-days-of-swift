import Foundation
import Cocoa

// MARK: How to use type annotations

// 값을 즉시 할당하고 싶지 않거나, Swift가 자동으로 판단한 데이터 유형을 재정의하고 싶을 때가 있는데, 이때 타입 어노테이션이 유용하게 사용된다.
// let surname = "Lasso" // 상수
// var score = 0         // 변수

// 타입 어노테이션: 원하는 데이터 타입을 명시적으로 지정할 수 있다.
let surname: String = "Lasso"
var score: Int = 0
// 소수점 아래일 경우 double

//String 텍스트를 포함
let playerName: String = "Roy"

// Int 정수를 저장
var luckyNumber: Int = 13

//Double 소수점 포함
let pi: Double = 3.141

//Bool 참이거나 거짓
var isAuthenticated: Bool = true

//Array 다양한 값을 저장할 수 있으며, 모든 값은 추가하는 순서대로 유지된다.
var albums: [String] = ["Red", "Fearless"]

// Dictionary 다양한 값을 저장할 수 있으며, 데이터에 접근하는 방법을 결정할 수 있다.
// 다음과 같이 특수화되어야 한다.
var user: [String: String] = ["id": "@twostraws"]

// Set 다양한 값을 저장할 수 있지만, 내용을 확인하기에 최적화된 순서로 저장한다.
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// 이런 모든 데이터 유형을 아는 것은 초기값을 제공하고 싶지 않을 때 중요하다.
// 문자열 배열을 생성하는 아래 코드
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

//Swift는 문자열 배열을 할당하는 것을 인식하기에 타입 어노테이션은 필요하지 않지만, 빈 문자열 배열을 생성하려면 해당 배열의 타입을 알아야 한다.
var teams: [String] = [String]()

// 아래와 같이 빈 배열을 만들 수 도 있다
var cities: [String] = []

//가능한 한 타입 추론을 활용하는 것을 선호할 땐 아래와 같이
var clues = [String]()

// 열거형(enum)
// 다른 유형과 달리, 요일을 저장하는 열거형, 사용자가 원하는 UI테마를 저장하는 열거형, 심지어 현재 앱에 표시되는 화면을 저장하는 열거형과 같이 사용자가 직접 새로운 유형을 만들 수 있도록 해주기 떄문에

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

// 타입 어노테이션을 언제 사용하는 게 좋을까?
// 한 타입 추론을 선호한다. 상수나 변수에 값을 할당하면 Swift가 자동으로 올바른 타입을 선택하기 때문이다.
// var score = 0.0 얻기도 한다.

let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)

// 65번 줄처럼 타입 어노테이션이 있어야 어떤 종류의 데이터가 포함되는지 알 수 있다.

// 타입 추론이든 타입 어노테이션이든 Swift는 상수와 변수가 어떤 데이터 타입을 갖는지 알아야 한다.

// 타입 어노테이션을 사용하면 타입 추론을 어느 정도 할 수 있지만, 최종 코드는 실행 가능해야 한다.
// 아래 코드는 허용되지 않는다.
// let score: Int = "Zero"

// 타입 어노테이션을 사용하더라도 0을 정수로 변환할 수 없다.


