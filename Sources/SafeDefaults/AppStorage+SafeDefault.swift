//
//  File.swift
//  
//
//  Created by Benjamín Guzmán López on 11-08-24.
//

import SwiftUI

public extension AppStorage {
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

public extension AppStorage where Value : ExpressibleByNilLiteral {
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Bool?, Default.Value == Value {
        assert(safeDefault.defaultValue == nil, "Default value for optional UserDefaults key '\(safeDefault)' must be nil")
        self.init(safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Int?, Default.Value == Value {
        assert(safeDefault.defaultValue == nil, "Default value for optional UserDefaults key '\(safeDefault)' must be nil")
        self.init(safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Double?, Default.Value == Value {
        assert(safeDefault.defaultValue == nil, "Default value for optional UserDefaults key '\(safeDefault)' must be nil")
        self.init(safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == String?, Default.Value == Value {
        assert(safeDefault.defaultValue == nil, "Default value for optional UserDefaults key '\(safeDefault)' must be nil")
        self.init(safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == URL?, Default.Value == Value {
        assert(safeDefault.defaultValue == nil, "Default value for optional UserDefaults key '\(safeDefault)' must be nil")
        self.init(safeDefault.key, store: safeDefault.store)
    }
    
    init<Default: SafeDefault>(_ safeDefault: Default.Type) where Value == Data?, Default.Value == Value {
        assert(safeDefault.defaultValue == nil, "Default value for optional UserDefaults key '\(safeDefault)' must be nil")
        self.init(safeDefault.key, store: safeDefault.store)
    }
}
