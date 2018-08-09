//
//  main.swift
//  JSONParser
//
//  Created by JK on 10/10/2017.
//  Copyright © 2017 JK. All rights reserved.
//

import Foundation


func analyzeJson() -> Bool {
    // 입력받기
    let inputValue = InputView.readInput()
    // 입력값 비어있는지 확인
    guard let input = InputView.isEmpty(to: inputValue) else { return true }

    // 예외처리
    guard GrammarChecker.checkException(to: input) else { return true }
    
    // 분석하기
    let json = Analysis.analysisJson(to: input)
    // 출력하기
    OutputView.printJson(to: json)
    return false
}

var analyze = true
while analyze {
    analyze = analyzeJson()
}
