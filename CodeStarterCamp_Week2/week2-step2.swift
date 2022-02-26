func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count != 6 {
        let number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }

    return lottoNumbers
}

func compareNumbers(chooseNumbers: Set<Int>, winningNumbers: Set<Int>) -> Set<Int> {
    
    return chooseNumbers.intersection(winningNumbers)
}

func changeLiterals(of integerNumbers: Set<Int>) -> Set<String> {
    var literalNumbers: Set<String> = Set<String>()
    
    for number in integerNumbers {
        literalNumbers.insert(String(number))
    }
    
    return literalNumbers
}

func printSameNumbers(_ sameNumbers: Set<String>) {
    let resultLottoNumbers = sameNumbers.sorted().joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 " + resultLottoNumbers + " 입니다!")
}

func printLottoResult(_ sameNumbers: Set<Int>) {
    let sameLiteralNumbers = changeLiterals(of: sameNumbers)
    
    if sameLiteralNumbers.isEmpty != true {
        printSameNumbers(sameLiteralNumbers)
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}


let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let winnigLottoNumbers = makeLottoNumbers()
let sameNumbers = compareNumbers(chooseNumbers: myLottoNumbers, winningNumbers: winnigLottoNumbers)
printLottoResult(sameNumbers)



