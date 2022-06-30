//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by smfc on 29/6/2022.
//

import Foundation

func generateLottoNumber() -> Set<Int> {
    var generatedNumbers: Set<Int> = Set<Int>()
    while generatedNumbers.count < 6 {
        generatedNumbers.insert(Int.random(in: 1...45))
    }
    return generatedNumbers
}

func commpareLottoNumbers(myNumber: Array<Int>, thisWeekNumber: Set<Int>) {
    let matchingNumbers = Set(myNumber).intersection(thisWeekNumber).sorted()
    let matchingNumberQuantity = matchingNumbers.count
    
    if let lastElement = matchingNumbers.last {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 1...matchingNumberQuantity {
            if(index != matchingNumberQuantity) {
                print(index, terminator: ", ")
            }
            else {
                print(lastElement, terminator: " 입니다!\n")
            }
        }
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
