//import UIKit
//
//protocol settingModelProtocol {
//    func deleteNotes()
//}
//
//class SettingModel {
//    
//    weak var controller: SettingControllerProtocol?
//    private let coreDataservice = CoreDataService.shared
//    init(controller: SettingControllerProtocol) {
//        self.controller = controller
//    }
//    
//}
//
//extension SettingModel: settingModelProtocol {
//    func deleteNotes() {
//        coreDataservice.deleteNotes { response in
//            if response == .success {
//                self.controller?.onSuccesDelete()
//            } else {
//                self.controller?.onFailureDelete()
//            }
//        }
//    }
//}
