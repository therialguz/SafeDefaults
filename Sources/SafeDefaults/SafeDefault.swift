//
//  File.swift
//  
//
//  Created by Benjamín Guzmán López on 11-08-24.
//

import Foundation

public protocol SafeDefault {
    associatedtype Value
    
    static var key: String { get }
    static var defaultValue: Value { get }
    
    static var store: UserDefaults { get }
}

// MARK: Default values implementation
public extension SafeDefault {
    static var store: UserDefaults { UserDefaults.standard }
}

// MARK: Get Value
public extension SafeDefault {
    static func getValue() -> Value where Value == Bool {
        store.value(forKey: key) as? Bool ?? defaultValue
    }
    
    static func getValue() -> Value where Value == Int {
        store.value(forKey: key) as? Int ?? defaultValue
    }
    
    static func getValue() -> Value where Value == Double {
        store.value(forKey: key) as? Double ?? defaultValue
    }
    
    static func getValue() -> Value where Value == String {
        store.value(forKey: key) as? String ?? defaultValue
    }
    
    static func getValue() -> Value where Value == URL {
        store.value(forKey: key) as? URL ?? defaultValue
    }
    
    static func getValue() -> Value where Value == Data {
        store.value(forKey: key) as? Data ?? defaultValue
    }
    
    static func getValue() -> Value where Value : RawRepresentable, Value.RawValue == Int {
        guard let rawValue = store.value(forKey: key) as? Int else {
            return defaultValue
        }
        return Value(rawValue: rawValue) ?? defaultValue
    }
    
    static func getValue() -> Value where Value : RawRepresentable, Value.RawValue == String {
        guard let rawValue = store.value(forKey: key) as? String else {
            return defaultValue
        }
        return Value(rawValue: rawValue) ?? defaultValue
    }
}
