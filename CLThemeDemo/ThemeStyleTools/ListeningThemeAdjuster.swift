//
//  ListeningThemeAdjuster.swift
//  CLThemeDemo
//
//  Created by darren on 2017/12/7.
//  Copyright © 2017年 陈亮陈亮. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

public class ListeningThemeAdjuster {
    
    // 给出默认的主题
    public static var listeningTheme: Variable<String> = Variable(Project_Theme)
    
    init() { }
    
    static func cl_updateTheme(themeColorStr: String) {
        self.listeningTheme.value = themeColorStr
    }
}
