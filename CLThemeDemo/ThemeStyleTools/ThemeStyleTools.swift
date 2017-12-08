//
//  ThemeStyleTools.swift
//  CLThemeDemo
//
//  Created by darren on 2017/12/7.
//  Copyright © 2017年 陈亮陈亮. All rights reserved.
//

import UIKit

import UIKit
import RxSwift

public class ThemeStyleTools {
    static fileprivate let disposeBag = DisposeBag() // 监听者自动销毁器
}

//MARK: - UIView相关
extension ThemeStyleTools {
    //MARK: - view背景色
    public static func cl_setupViewBackgroundColor(view: UIView) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            view.backgroundColor = color
            
        }).disposed(by: disposeBag)
    }
}

//MARK: - UILabel
extension ThemeStyleTools {
    //UILabel主要文字颜色
    public static func cl_setupViewLabelTextColor(label: UILabel) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            label.textColor = color
        }).disposed(by: disposeBag)
    }
    
    // 副标题的颜色
    public static func cl_setupViewSubLabelTextColor(label: UILabel) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            label.textColor = color
        }).disposed(by: disposeBag)
    }
}
//MARK: - UIButton
extension ThemeStyleTools {
    //UIButton文字颜色normal
    public static func cl_setupBtnNormalTextColor(btn: UIButton) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            btn.setTitleColor(color, for: .normal)
        }).disposed(by: disposeBag)
    }
    //UIButton文字颜色selected
    public static func cl_setupBtnSelectedTextColor(btn: UIButton) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            btn.setTitleColor(color, for: .selected)
        }).disposed(by: disposeBag)
    }
    
    //UIButton图片颜色normalnormal
    public static func cl_setupBtnNormalImgColor(btn: UIButton) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            btn.tintColor = color
            let img = btn.image(for: .normal)?.withRenderingMode(.alwaysTemplate)
            btn.setImage(img, for: .normal)
        }).disposed(by: disposeBag)
    }
    //UIButton图片颜色select
    public static func cl_setupBtnSelectImgColor(btn: UIButton) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            btn.tintColor = color
            let img = btn.image(for: .selected)?.withRenderingMode(.alwaysTemplate)
            btn.setImage(img, for: .selected)
        }).disposed(by: disposeBag)
    }
}
//MARK: - UIImageView
extension ThemeStyleTools {
    //UIImageView图片颜色
    public static func cl_setupImageViewColor(img: UIImageView) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            let image = img.image?.withRenderingMode(.alwaysTemplate)
            img.tintColor = color
            img.image = image
        }).disposed(by: disposeBag)
    }
}
//MARK: - UISlider
extension ThemeStyleTools {
    //UISlider颜色
    public static func cl_setupSliderColor(slider: UISlider) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            slider.tintColor = color
        }).disposed(by: disposeBag)
    }
}
//MARK: - UITextView
extension ThemeStyleTools {
    //UITextView文字颜色
    public static func cl_setupTextViewColor(textView: UITextView) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            textView.textColor = color
        }).disposed(by: disposeBag)
    }
}

//MARK: - UIPageControl
extension ThemeStyleTools {
    //UISlider颜色
    public static func cl_setupPageControlColor(page: UIPageControl) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            page.currentPageIndicatorTintColor = color
            
        }).disposed(by: disposeBag)
    }
}

//MARK: - UIProgressView
extension ThemeStyleTools {
    public static func cl_setupProgressViewlColor(progress: UIProgressView) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            progress.tintColor = color
            
        }).disposed(by: disposeBag)
    }
}
//MARK: - UISwitch
extension ThemeStyleTools {
    public static func cl_setupSwitchViewlColor(switchView: UISwitch) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            switchView.onTintColor = color
            
        }).disposed(by: disposeBag)
    }
}

//MARK: - UITextField
extension ThemeStyleTools {
    public static func cl_setupTextFieldTextColor(textField: UITextField) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            textField.textColor = color
            textField.layoutSubviews()
            
        }).disposed(by: disposeBag)
    }
}
//MARK: - UISegmentedControl
extension ThemeStyleTools {
    public static func cl_setupSegmentControllColor(segment: UISegmentedControl) {
        ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            
            Project_Theme = colorStr
            let color = UIColor(hexString: Project_Theme)
            
            segment.tintColor = color
            
        }).disposed(by: disposeBag)
    }
}

extension ThemeStyleTools {
    
    public static func currentThemeColor() -> String {
        return Project_Theme
    }
    
    public static func enable(defaultTheme: String) {
        // 皮肤相关
        let theme = UserDefaults.standard.value(forKey: currentThemeKey)
        if theme != nil {
            let themeStr = theme as? String
            Project_Theme = themeStr ?? defaultTheme
        } else {
            Project_Theme = defaultTheme
            // 设置默认的
            CLUserDefaults.set(Project_Theme, forKey: currentThemeKey)
            CLUserDefaults.synchronize()
        }
    }
    
    public static func updateTheme(themeStr: String) {
        // 记录使用的主题
        CLUserDefaults.set(themeStr, forKey: currentThemeKey)
        CLUserDefaults.synchronize()
        
        ListeningThemeAdjuster.cl_updateTheme(themeColorStr: themeStr)
    }
}


