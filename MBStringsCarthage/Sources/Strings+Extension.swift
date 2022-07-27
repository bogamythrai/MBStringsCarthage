//
//  Strings+Extension.swift
//  MBStringsCarthage
//
//  Created by Mythrai Boga on 27/07/22.
//

import Foundation
import UIKit

extension Array where Element == String {
    func bulletPointList(font: UIFont) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = 15
        paragraphStyle.minimumLineHeight = font.pointSize
        paragraphStyle.maximumLineHeight = font.pointSize
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .left, location: 15)]

        let stringAttributes = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]

        let string = map({ "•\t\($0)" }).joined(separator: "\n")

        return NSAttributedString(string: string,
                                  attributes: stringAttributes)
    }
}
