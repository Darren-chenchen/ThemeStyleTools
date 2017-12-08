Pod::Spec.new do |s|
  s.name = 'ThemeStyleTools'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'This is a theme demo'
  s.homepage = 'https://github.com/Darren-chenchen/ThemeStyleTools'
  s.authors = { 'Darren-chenchen' => '1597887620@qq.com' }
  s.source = { :git => 'https://github.com/Darren-chenchen/ThemeStyleTools.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'CLThemeDemo/ThemeStyleTools/**/*.swift'
  s.resource_bundles = { 
	'CLImagePickerTool' => []
  s.dependency 'RxSwift', '~> 3.0'
  s.dependency 'RxCocoa', '~> 3.0'
  }
end
