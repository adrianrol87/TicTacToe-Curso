//
//  Container+Registration.swift
//  TicTacToe-TheOne-Curso
//
//  Created by Adrian Rodriguez Llorens on 01/01/26.
//

import Factory

extension Container {
  var appModeStore: Factory<AppModeLiveStore> {
    self {MainActor.assumeIsolated { AppModeLiveStore() } }.singleton
  }
}
