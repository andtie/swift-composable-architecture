import ComposableArchitecture
import SwiftUI

@Reducer
struct SyncUpForm {
  @ObservableState
  struct State {
    var syncUp: SyncUp
  }

  enum Action: BindableAction {
    case binding(BindingAction<State>)
  }

  var body: some ReducerOf<Self> {
    BindingReducer()
    
    Reduce { state, action in
      switch action {
      case .binding:
        return .none
      }
    }
  }
}
