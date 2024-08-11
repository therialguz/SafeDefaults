//
//  File.swift
//  
//
//  Created by Benjamín Guzmán López on 11-08-24.
//

import SwiftSyntax
import SwiftSyntaxMacros

public struct SafeDefaultMacro: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> ExprSyntax {
        print(node.argumentList.map { $0.expression })
        
        return "URL(string: \"https://www.avanderlee.com\")!"
    }
}
