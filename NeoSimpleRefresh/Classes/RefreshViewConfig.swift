//
//  RefreshViewConfig.swift
//  YHCSFINANCE
//
//  Created by Neo on 2017/11/20.
//  Copyright © 2017年 YHCS. All rights reserved.
//

import Foundation
import UIKit
public class RefreshViewConfig {
    public static let share = RefreshViewConfig()
    public var defaultView: (UIView&RefreshStatusChangeProtocol) {
        get{
            return CustomAnimateRefreshView()
        }
    }
    public var defaultPullHeight: CGFloat = 60
}

