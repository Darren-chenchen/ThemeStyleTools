# ThemeStyleTools
![Pod Version](https://img.shields.io/cocoapods/v/ThemeStyleTools.svg?style=flat)
![Pod Platform](https://img.shields.io/cocoapods/p/ThemeStyleTools.svg?style=flat)
![Pod License](https://img.shields.io/cocoapods/l/ThemeStyleTools.svg?style=flat)

#### 这是一个更换主题的库,只支持更换一个主体颜色，依赖于RXSwift。由于更换主题的需求可能都是五花八门的，每个产品的想法也都有可能不同，有的需要更换tabbar的图片，或者导航栏的图片等等，想要做到完全的定制几乎是不可能的，只能根据项目具体的需求来定制。我同时也写了一份动态更换tabbar图标的demo，完全是模拟从服务器下载主题到本地，并进行更换。详情参考 [CLThemeDemo](https://github.com/Darren-chenchen/CLThemeDemo)



### 效果图
![(logo)](http://images2017.cnblogs.com/blog/818253/201712/818253-20171208130823062-1970024626.gif)

# 要求

- iOS 8.0+
- swift 3.0+

# 使用方式

	pod 'ThemeStyleTools'


# 简介

1.在AppDelegate里面配置默认的主题色
        
    ThemeStyleTools.enable(defaultTheme: "#2F4F4F")

2.在切换主题色的地方更新主题

    ThemeStyleTools.updateTheme(themeStr: colorStr!)


3.使用

	//修改UIView的背景颜色 
	ThemeStyleTools.cl_setupViewBackgroundColor(view: bgView)
	//修改UILabel的文字颜色 
	ThemeStyleTools.cl_setupViewLabelTextColor(label: label)
	//UIButton文字颜色normal
	ThemeStyleTools.cl_setupBtnNormalTextColor(btn: btn)
	//UIButton文字颜色selected
	ThemeStyleTools.cl_setupBtnSelectedTextColor(btn: btn)
	//UIButton图片颜色normal 
	ThemeStyleTools.cl_setupBtnNormalImgColor(btn: btn)
	//UIButton图片颜色select
	ThemeStyleTools.cl_setupBtnSelectImgColor(btn: btn)
	//修改UIImageView的图片颜色 
	ThemeStyleTools.cl_setupImageViewColor(img: bgView)
	
	//修改UISlider的颜色 
	ThemeStyleTools.cl_setupSliderColor(slider: slider)
    //修改UIPageControl的颜色 
	ThemeStyleTools.cl_setupPageControlColor(page: page)
    //修改UIProgressView的颜色 
	ThemeStyleTools.cl_setupProgressViewlColor(progress: progress)
    //修改UISwitch的颜色 
	ThemeStyleTools.cl_setupSwitchViewlColor(switchView: switchView)
	 //修改UITextField的文字颜色 
	ThemeStyleTools.cl_setupTextFieldTextColor(textField: textField) 
	//修改UISegmentedControl的颜色 
	ThemeStyleTools.cl_setupSegmentControllColor(segment: segment) 
	//修改UITextView的文字颜色 
	ThemeStyleTools.cl_setupTextViewColor(textView: self.textView)

4.在这个库中我将监听主题更换的类开放了出来，假如当app处于默认主题时我想让一个按钮的图片处于黑色状态，其他主题处于白色状态，可使用下面的方式

	// 监听主题的更换，设置自己想要的颜色 
	ListeningThemeAdjuster.listeningTheme.asObservable().subscribe(onNext: { (colorStr:String) in
            if colorStr != "#2F4F4F" {
                self.leftBtn.tintColor = UIColor.white
                let img = self.leftBtn.image(for: .normal)?.withRenderingMode(.alwaysTemplate)
                self.leftBtn.setImage(img, for: .normal)
            } else {
                self.leftBtn.tintColor = UIColor.black
                let img = self.leftBtn.image(for: .normal)?.withRenderingMode(.alwaysTemplate)
                self.leftBtn.setImage(img, for: .normal)
            }
        }).addDisposableTo(disposeBag)


5.该库依赖于rxswift ,截止目前RxSwift暂未更新到swift4.0，如果发现你的项目引入rxswift后报错，注意检查rxswift的编译版本
buildsettings(搜索swift language version) 将编译版本改为swift3.2，当然，如果以后支持了swift4.0，就可以忽略这一步了

![(logo)](http://images2017.cnblogs.com/blog/818253/201712/818253-20171208140047593-1277633841.png)