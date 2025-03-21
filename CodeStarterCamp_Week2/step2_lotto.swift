//
//  step2_compareLotto.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - 내 번호 찍기
let myLottoNumbers = [3, 18, 25, 4, 10, 11]

//MARK: - 로또 번호 생성
func generateLotto() -> Array<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return Array(lottoNumbers)
}

//MARK: - 일치하는 번호를 판독
func checkResult() -> Array<Int> {
    let lottoNumbers = generateLotto()
    let sameNumbers = lottoNumbers.filter(myLottoNumbers.contains)
    return sameNumbers
}

//MARK: - 당첨 여부를 알림
func tellResult() {
    let sameNumbers = checkResult().map(String.init)
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbers.joined(separator: ", ")) 입니다!")
    }
}
