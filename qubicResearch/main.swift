//
//  main.swift
//  qubicResearch
//
//  Created by Chris McElroy on 8/14/21.
//

import Foundation

print("test 1:")
testWin(for: 0, on: "HmR9Dj")

print("\ntest 2:")
testWin(for: 0, on: "CjVMdsqhHR")

print("\ntest 3:")
testWin(for: 0, on: "m9-MhRQH")


func testWin(for n: Int, on setup: String) {
	let board = Board()
	expandMoves(setup).forEach({ board.addMove($0) })
	
	// test1
	let start1 = Date.now
	let ans1 = board.hasW2(n)
	let time1 = Date.now - start1
	
	// test2
	let start2 = Date.now
	let ans2 = board.hasW2P(n)
	let time2 = Date.now - start2
	
	// reporting
	let faster = time1 > time2 ? "faster" : "slower"
	let ratio = String(100*(max(time1, time2)/min(time1, time2)).rounded()/100)
	if ans1 == ans2 {
		let message = ans1 == nil ? "No win" : "\(ans1!) move win"
		print(message, "- finished", ratio, "times", faster)
	} else {
		print("unmatched:", ans1 ?? "nil", ans2 ?? "nil", "- finished", ratio , "times", faster)
	}
}
