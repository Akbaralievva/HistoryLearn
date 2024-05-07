////
////  SettingsController.swift
////  HistoryLearn
////
////  Created by A LINA on 25/4/24.
////
//
//
//import UIKit
//
//protocol SettingControllerProtocol: AnyObject {
//    func onDeleteNotes()
//    func onSuccesDelete()
//    func onFailureDelete()
//}
//
//class SettingController {
//    
//    var view: settingViewProtocol?
//    var model: settingModelProtocol?
//    
//    init(view: settingViewProtocol) {
//        self.view = view
//        self.model = SettingModel(controller: self)
//    }
//    
//}
//
//extension SettingController: SettingControllerProtocol {
//    func onSuccesDelete() {
//        view?.succesDelete()
//    }
//    
//    func onFailureDelete() {
//        view?.failureDelete()
//    }
//    
//    func onDeleteNotes() {
//        model?.deleteNotes()
//    }
//}
