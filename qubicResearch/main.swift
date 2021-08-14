//
//  main.swift
//  qubicResearch
//
//  Created by Chris McElroy on 8/14/21.
//

import Foundation

let board = Board()
board.addMove(0, for: 0)
board.addMove(1, for: 0)
board.addMove(5, for: 0)
print(board.hasW2(0) ?? false)
