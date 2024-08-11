//
//  File.swift
//  
//
//  Created by Benjamín Guzmán López on 11-08-24.
//

import SwiftUI

extension AppStorage {
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Bool, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Int, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Double, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == String, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == URL, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Data, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value : RawRepresentable, Value.RawValue == Int, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value : RawRepresentable, Value.RawValue == String, Default.Value == Value {
        self.init(wrappedValue: safeDefault.defaultValue, safeDefault.key, store: safeDefault.store)
    }
}
