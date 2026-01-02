//
//  AppModeLiveStore.swift
//  TicTacToe-TheOne-Curso
//
//  Created by Adrian Rodriguez Llorens on 01/01/26.
//

import Foundation
import Combine

@MainActor
final class AppModeLiveStore: ObservableObject {
  @Published private(set) var appMode: AppMode = .gameSetup
  
  func goGameMode() {
    appMode = .game
  }
  
  func goSetupMode() {
    appMode = .gameSetup
  }
  
}
