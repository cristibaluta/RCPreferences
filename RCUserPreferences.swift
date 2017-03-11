//
//  RCPreferences.swift
//
//  Created by Cristian Baluta on 10/03/2017.
//  Copyright © 2017 Imagin soft. All rights reserved.
//

import Foundation

protocol RCPreferencesProtocol {
    var rawValue: String {get}
    func defaultValue() -> Any
}

class RCPreferences<E> where E: RCPreferencesProtocol {
    
    fileprivate let userDefaults = UserDefaults.standard
    
    fileprivate func get (_ key: String) -> Any? {
        return userDefaults.object(forKey: "RCPreferences-" + key)
    }
    
    fileprivate func set (_ value: Any, forKey key: String) {
        userDefaults.set(value, forKey: "RCPreferences-" + key)
        userDefaults.synchronize()
    }
}

extension RCPreferences {
    
    func bool (_ key: E) -> Bool {
        return get(key) 
    }
    
    func int (_ key: E) -> Int {
        return get(key) 
    }
    
    func string (_ key: E) -> String {
        return get(key) 
    }
    
    func date (_ key: E) -> Date {
        return get(key) 
    }
    
    func get<T> (_ key: E) -> T {
        guard let oldValue = userDefaults.object(forKey: key.rawValue) else {
            return key.defaultValue() as! T
        }
        return oldValue as! T
    }
    
    func set (_ value: Any, forKey key: E) {
        userDefaults.set(value, forKey: key.rawValue)
    }
}
