//
//  File.swift
//  
//
//  Created by Cristian Baluta on 05/11/2019.
//

import Foundation

protocol RCPreferencesProtocol {
    var rawValue: String {get}
    func defaultValue() -> Any
}
