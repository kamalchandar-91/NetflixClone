//
//  Extensions.swift
//  Netflix
//
//  Created by kamal chandar on 14/03/25.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
