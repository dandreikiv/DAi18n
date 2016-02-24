//
//  DAi18n.swift
//  DAi18n
//
//  Created by Dmytro Andreikiv on 24/02/16.
//  Copyright © 2016 Dmytro Andreikiv. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    public override func awakeFromNib() {
        super.awakeFromNib()
        guard let localizedKey = text else {return}
        text = NSBundle.mainBundle().localizedStringForKey(localizedKey, value: nil, table: nil)
    }
}

extension UIButton {
    public override func awakeFromNib() {
        super.awakeFromNib()
        guard let localizedKey = titleLabel?.text else {return}
        let localizedText = NSBundle.mainBundle().localizedStringForKey(localizedKey, value: nil, table: nil)
        setTitle(localizedText, forState: .Normal)
    }
}

extension UIBarButtonItem {
    public override func awakeFromNib() {
        super.awakeFromNib()
        guard let localizedKey = title else {return}
        title = NSBundle.mainBundle().localizedStringForKey(localizedKey, value: nil, table: nil)
    }
}

extension UINavigationItem {
    public override func awakeFromNib() {
        super.awakeFromNib()
        if let localizedTitleKey = title {
            title = NSBundle.mainBundle().localizedStringForKey(localizedTitleKey, value: nil, table: nil)
        }
        
        if let localizedPromptKey = prompt {
            prompt = NSBundle.mainBundle().localizedStringForKey(localizedPromptKey, value: nil, table: nil)
        }
    }
}

extension UISearchBar {
    public override func awakeFromNib() {
        super.awakeFromNib()
        if let localizedTitleKey = text {
            text = NSBundle.mainBundle().localizedStringForKey(localizedTitleKey, value: nil, table: nil)
        }
        
        if let localizedPlaceholderKey = placeholder {
            placeholder = NSBundle.mainBundle().localizedStringForKey(localizedPlaceholderKey, value: nil, table: nil)
        }
        
        if let localizedPromptKey = prompt {
            prompt = NSBundle.mainBundle().localizedStringForKey(localizedPromptKey, value: nil, table: nil)
        }
    }
}

extension UISegmentedControl {
    public override func awakeFromNib() {
        super.awakeFromNib()
        for segmentIdx in 0..<self.numberOfSegments {
            guard let localizedKey = titleForSegmentAtIndex(segmentIdx) else {continue}
            setTitle( NSBundle.mainBundle().localizedStringForKey(localizedKey, value: nil, table: nil),
                forSegmentAtIndex: segmentIdx
            )
        }
    }
}

extension UITabBarItem {
    public override func awakeFromNib() {
        super.awakeFromNib()
        guard let localizedKey = title else {return}
        title = NSBundle.mainBundle().localizedStringForKey(localizedKey, value: nil, table: nil)
    }
}

extension UITextField {
    public override func awakeFromNib() {
        super.awakeFromNib()
        if let localizedTitleKey = text {
            text = NSBundle.mainBundle().localizedStringForKey(localizedTitleKey, value: nil, table: nil)
        }
        
        if let localizedPlaceholderKey = placeholder {
            placeholder = NSBundle.mainBundle().localizedStringForKey(localizedPlaceholderKey, value: nil, table: nil)
        }
    }
}

extension UITextView {
    public override func awakeFromNib() {
        super.awakeFromNib()
        if let localizedTitleKey = text {
            text = NSBundle.mainBundle().localizedStringForKey(localizedTitleKey, value: nil, table: nil)
        }
    }
}