//
//  SafeDefaultsMacrosTests.swift
//  
//
//  Created by Benjamín Guzmán López on 11-08-24.
//

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(SafeDefaultsMacros)
import SafeDefaultsMacros

let testMacros: [String: Macro.Type] = [
    "safeDefault": SafeDefaultMacro.self
]


final class SafeDefaultsMacrosTests: XCTestCase {
    func testComponentMacro() throws {
        assertMacroExpansion(
            #"""
            #safeDefault("test", defaultValue: true)
            """#,
            expandedSource:
            #"""
            struct testDefault {
                static var key = "test"
                static var defaultValue = true
            }
            """#,
            macros: testMacros)
    }
}
#endif
