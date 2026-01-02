//
//  ContentView.swift
//  TicTacToe-TheOne-Curso
//
//  Created by Adrian Rodriguez Llorens on 01/01/26.
//

import SwiftUI

struct AppModeVIew: View {
  @StateObject private var viewModel = AppModeViewModel()
  
  var body: some View {
    Group {
      switch viewModel.appMode {
      case .gameSetup:
        Text("Game Setup")
      case .game:
        Text("Game")
      }
    }
    .animation(.easeIn, value: viewModel.appMode)
  }
}

#Preview {
  AppModeVIew()
}
