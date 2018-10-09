//
//  main.swift
//  Strings_Lesson_One_10_9
//
//  Created by Ari Rivera on 10/9/18.
//  Copyright © 2018 Ari Rivera. All rights reserved.
//

import Foundation

//first lesson on strings
let year = 2018
//use string interpolation to print out the year 2018
print("the current year is \(year)")
//use string concatenation to print out full name
let firstName = "John"
let lastName = "Appley"
let fullName = firstName + " " + lastName
print(fullName)
print("the person's full name is \(fullName)")
//string literals
let name = "Eli"
//initialization - means to give something a default value
var date: String = "October 9th, 2018"
print(date)
//more with initialization
let someString = String(format: ".2f", 10.345)
print(someString)
print("using string formatting to print 2 decimal places \(someString)")

//test for empty string
let emptyString = ""
//also an example here of using a ternary
//.isEmoty is an example of a built-in function
emptyString.isEmpty ? print("is empty") : print("not empty")
//alternately using if/else
if emptyString.isEmpty {
    print("is empty")
} else {
    print("not empty")
}
//look up what an object does by clicking the option keyboard button while over what you want described
//comparing strings
//let str1 = "Pursuit"
//let str2 = "C4Q"
//if str1 === str2 ? print("story") : print("not so much")

//string mutability - meaning that strings can be changed
var homePlanet = "earth"
homePlanet = "mars"
//the string from a var is mutable, the string from a let since it's a constant is immutable (aka cannot be changed)
//an example
var codingExperience = 0
codingExperience = 10
//casting
let stringExperience = String(codingExperience)
print("I have \(stringExperience.description) in coding")
//going over value type
let movie = "The Royal Tenenbaums"
var nextMovie = movie
nextMovie += " 2"
//so in above if nextMovie was a class type it would affect movie's value - it doesn't in this example as it's a value type
print("movie is \(movie) and nextMovie is \(nextMovie)")
//iterating through a string
let iOS = "iOS is awesome!"
for letter in iOS {
    //print() defaults to printing on separate lines because of new line characters. If we want to print them out on one line you would want to use a terminator
    print(letter) //using a for-in loop to print out every character of iOS string
}
//let's do the same thing but get it to print out on one line
for lettery in iOS {
print(lettery, terminator: "")
}
//count characters in a string
//count is a property on a collection type - counts number of items in a collection
print("there are \(iOS.count) characters in the string")
//drop the last character in a string
print("dropping the last character in the \(iOS.dropLast()) string")
//reverse string
let greeting = "hola"
//here we use casting again
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")
//check if a string is a palindrome
let palindromeStr = "tacocat"
let isPalindrome = String(palindromeStr.reversed())
if palindromeStr == isPalindrome {
    print("is a palindrome")
} else {
    print("totes not a palindrome")
}
//comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("NOT equal")

//U+1F40D is snake - there is a code for everything!
let snake = "\u{1F40D}\u{1F61C}" //unicode scalar
for _ in 0...10 {
    print(snake, terminator: "")
}

