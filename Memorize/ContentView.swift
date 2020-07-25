//
//  ContentView.swift
//  Memorize
//
//  Created by Michael Jones on 7/23/20.
//  Copyright © 2020 Michael Jones. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("X")
            }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
 Lecture 2: MVVM and the Swift Type System
 Theory:
 Struct V Class
 Struct: value type: new copy every time the struct is written to
        Functional programming
        -No inheritance
        init() initializes all variables (var someint;)
        Mutability: var vs let. ALWAYs have to specify if you want to write to a var.
        *The go to for data structures,
            ex: most things in SwiftUI
 Class: refrence type: passed around via pointers.
        OOP (focuses on encapsulating data)
        -Has Single Inheritance (Super class) ((Only one level))
        init does NOT initialize variables (var someint = 15)
        Mutability: always mutable, since everything is a pointer. (confusing?)
        *specific use cases, these are better.
            ex: ViewModel in MVVM is a class. UIKit/Storyboards is class based
 
 Views are protocols.
 
 Generics:
    Swift is strongly typed.
        Strongly Typed: every var/parameter/etc must have an explicit type.
    Sometimes we dont care about the type. Ex. An Array.
    Many other languages have generics.
        General structure of an array
 */
struct Array<Element> {
    //...
    func append(_ element: Element) { /*...*/ }
}
/*
    the type here is 'Element'... this is unspecific.. thus a "Dont Care" type.
    
 */
var a = Array<Int>()
/*
a.append(/*element: Int */ 22)
    Basically, here the coder must choose what variable to use when actually using the Element.
    Specifying element -> int
 
 functions as types. (non void methods)
    (Int, Int)  -> Bool          //takes two ints, returns a Boolean
    (Double)    -> Void          //Takes a double, returns nothing
    ()          -> Array<String> //Takes nothing, returns a String[]
 */
