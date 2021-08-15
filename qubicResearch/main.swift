//
//  main.swift
//  qubicResearch
//
//  Created by Chris McElroy on 8/14/21.
//

import Foundation

print("test 1:")
let board1 = Board()
board1.addMove(0, for: 0)
board1.addMove(1, for: 0)
board1.addMove(5, for: 0)
testWin(for: 0, depth: 4, on: board1)
testWin(for: 0, depth: 5, on: board1)

print("\ntest 2:")
let board2 = Board()
for p in expandMoves("CjVMdsqhHR") {
	board2.addMove(p)
}
testWin(for: 0, depth: 32, on: board2)


func testWin(for n: Int, depth: Int, on board: Board) {
	let time1 = Date.now
	print(board.hasW2(n, depth: depth) ?? 0, "in", Date.now - time1)
	let time2 = Date.now
	print(board.hasW2P(n, depth: depth), "in", Date.now - time2)
}
