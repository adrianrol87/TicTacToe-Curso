//
//  AppModeViewModel.swift
//  TicTacToe-TheOne-Curso
//
//  Created by Adrian Rodriguez Llorens on 01/01/26.
//

import Foundation
import Combine
import Factory

final class AppModeViewModel: ObservableObject {
  @Published var appMode: AppMode = .gameSetup
  private var cancellable = Set<AnyCancellable>()
  @Injected(\.appModeStore) var appModeStore
  
  init() {
    setSubacribers()
  }
}
 
private extension AppModeViewModel {
  func setSubacribers() {
    appModeStore.$appMode
      .receive(on: DispatchQueue.main)
      .sink { [weak self] _ in
        guard let self else { return }
        updateAppMode()
      }
      .store(in: &cancellable)
  }
  
  func updateAppMode() {
    appMode = appModeStore.appMode
  }
}



