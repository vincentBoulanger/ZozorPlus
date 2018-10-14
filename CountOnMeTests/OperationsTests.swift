//
//  OperationsTests.swift
//  CountOnMeTests
//
//  Created by VINCENT BOULANGER on 02/10/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//func testGivenScoreIsForty_WhenIncrementingPlayer1Score_ThenGameIsOverAndWonByPlayer1() {
//setPlayerOneScore(40)

//game.incrementScore(forPlayer: .one)
//
//XCTAssertEqual(game.winner, .one)
//XCTAssertTrue(game.isOver)
//}
// func testGivenScoreIsNull_WhenIncrementingPlayer1Score_ThenScoreShouldBeFifteen() {}

//func testGivenScoreIsFifteen_WhenIncrementingPlayer1Score_ThenScoreShouldBeThirty() {}
//
//func testGivenScoreIsThirty_WhenIncrementingPlayer1Score_ThenScoreShouldBeForty() {}
//
//func testGivenScoreIsForty_WhenIncrementingPlayer1Score_ThenGameIsOverAndWonByPlayer1() {}


import XCTest
@testable import CountOnMe


class OperationsTests: XCTestCase {
	var operations: Operations!
	override func setUp() { // permet de réinitialiser la classe Operations pour chaque test
		super.setUp()
		operations = Operations()
	}

	
	/////////////////////////////
	// - MARK: stringNumbers
	/////////////////////////////
	/////////////////////////////
	// - MARK: operators
	/////////////////////////////

	/////////////////////////////
	// - MARK: isExpressionCorrect
	/////////////////////////////

	/////////////////////////////
	// - MARK: canAddOperator
	/////////////////////////////
	
	/////////////////////////////
	// - MARK: calculateTotal
	/////////////////////////////


	func testGivenTwoNumbersWithMinusOperand_WhenEqualButtonIspressed_ThenResultIsTheDifference() {
		// ETANT DONNÉ QUE
		// QUAND
		let _ = operations.addNewNumber(5)
		let _ = operations.minusActionButton()
		let _ = operations.addNewNumber(2)
		
		// ALORS
		XCTAssert(operations.calculateTotal() == "3.00")
		
	}
	func testGivenTwoNumbersWithPlusOperand_WhenEqualButtonIspressed_ThenResultIsTheAddition() {
		// ETANT DONNÉ QUE
		// QUAND
		let _ = operations.addNewNumber(2)
		let _ = operations.plusActionButton()
		let _ = operations.addNewNumber(2)
		XCTAssert(operations.calculateTotal() == "4.00")
	}
	func testGivenTwoNumbersWithMultiplyOperand_WhenEqualButtonIspressed_ThenResultIsTheMultiplication() {
		// ETANT DONNÉ QUE
		// QUAND
		let _ = operations.addNewNumber(2)
		let _ = operations.multiplyActionButton()
		let _ = operations.addNewNumber(3)
		XCTAssert(operations.calculateTotal() == "6.00")
	}
	func testGivenTwoNumbersWithDivideOperand_WhenEqualButtonIspressed_ThenResulIsTheDivision() {
		// ETANT DONNÉ QUE
		// QUAND
		let _ = operations.addNewNumber(10)
		let _ = operations.divideActionButton()
		let _ = operations.addNewNumber(4)
		XCTAssert(operations.calculateTotal() == "2.50")
	}
	func testGivenTwoNumbersDividedByZero_WhenEqualButtonIspressed_ThenResulIsTheDivisionIsImpossible() {
		// ETANT DONNÉ QUE
		// QUAND
		let _ = operations.addNewNumber(10)
		let _ = operations.divideActionButton()
		let _ = operations.addNewNumber(0)
		//XCTAssert(operations.divisionByZero == false)
	}

	func testGivenStringNumbersHasOneElement_WhenIsExpressionIsCorrect_ThenIsExpressionisRefused() {
		operations.stringNumbers = ["0"]
		XCTAssert(operations.isExpressionCorrect == true)
	}

	func testGivenStringNumbersIsEmpty_WhenAddNumber_ThenCanAddOperatorIsRefused() {
		//operations.stringNumbers
		let _ = operations.stringNumbers.isEmpty == true
		XCTAssert(operations.canAddOperator == false)
	}
	/////////////////////////////
	// - MARK: PlusButtonTest
	/////////////////////////////

	
	/////////////////////////////
	// - MARK: clear
	/////////////////////////////
//	func testGivenResultIsDisplayed_WhenClearIsPressed_ThenResetData () {
//		operations.stringNumbers = ["3", "2"]
//		operations.operators = ["+", "-"]
//		operations.clear()
//		XCTAssert(operations.stringNumbers == [String()])
//		XCTAssert(operations.operators == ["+"])
//
//	}
	func testGivenCalculateTotal_expressionIsCorrect () {//@@@@@@@@@
		let _ = operations.stringNumbers.last != nil
		let _ = operations.stringNumbers.isEmpty == true
		let _ = operations.stringNumbers.count != 1
		XCTAssert(operations.isExpressionCorrect == false)
		//
	}
	func testGivenCalculateTotal_expressionIsCorrect2 () {//@@@@@@@@@
		let _ = operations.isExpressionCorrect == true
		XCTAssert(operations.calculateTotal() != "0")
		//
	}
	/////////////////////////////
	// - MARK: updateDisplay
	/////////////////////////////
	func testGivenStringNumberIsLaunched_WhenStringNumbersIsDetermine_ThenStringNumbersIsDisplayed() {
		// ETANT DONNÉ QUE
		// QUAND

		let _ = operations.addNewNumber(0)

		// ALORS
		XCTAssert(operations.updateDisplay() == "0")
	}

	func testIsExpressionIsCorrect() {
//		let _ = operations.stringNumbers.isEmpty == true
		let _ = operations.stringNumbers.count != 1
		XCTAssert(operations.isExpressionCorrect == false)
	}
//	func testIsExpressionIsCorrect2() {
//		//let _ = operations.stringNumbers.isEmpty == true
//		let _ = operations.stringNumbers.count == 1
//		XCTAssert(operations.isExpressionCorrect == false)
//	}
	func testGivenStringNumbersHasAValue_WhenNumbersArePressed_ThenStringNumbersAppendNewNumber() {
		operations.stringNumbers = ["1"]
		let _ = operations.addNewNumber(1)
		XCTAssert(operations.stringNumbers == ["11"])
		
	}
//	func testPriority() {
//		let _ = operations.addNewNumber(2)
//		let _ = operations.operators = ["+", "+"]
//		let _ = operations.addNewNumber(10)
//		let _ = operations.operators = ["+", "*"]
//		let _ = operations.addNewNumber(2)
//		XCTAssert(operations.calculateTotal() == "22")
//	}
//	func testPriority2() {
//		let _ = operations.addNewNumber(2)
//		let _ = operations.operators = ["+", "+"]
//		let _ = operations.addNewNumber(10)
//		let _ = operations.operators = ["+", "*"]
//		let _ = operations.addNewNumber(2)
//		XCTAssert(operations.calculateTotal() == "24")
//	}
//	func testPriority3 () {
//		let _ = operations.addNewNumber(2)
//		let _ = operations.operators = ["+", "+"]
//		let _ = operations.addNewNumber(10)
//		let _ = operations.operators = ["+", "*"]
//		let _ = operations.addNewNumber(2)
//		XCTAssert(operations.calculateTotal() == "22")
//	}
}

