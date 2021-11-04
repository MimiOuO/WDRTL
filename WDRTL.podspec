#
# Be sure to run `pod lib lint WDRTL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "WDRTL"
  s.version          = "0.2.0"
  s.summary          = "WD RTL"
  s.frameworks       = "UIKit"
  s.description      = "RTL of WDLive"
  s.homepage         = "https://github.com/MimiOuO/WDRTL"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "MimiOuO" => "xsz12213129@163.com" }
  # source存放的地址是代码的真正地址
  s.source           = { :git => "https://github.com/MimiOuO/WDRTL.git", :tag => "#{s.version}" }
  # pod install时真正下载下来的文件路径，这里指定的是你仓库下的Classes目录中的所有.h和.m文件（填写的是相对地址）
  # ** 通配目录
  s.source_files     = "WDRTL/Classes/**/*.{h,m}"
  s.requires_arc     = true
  s.platform         = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  # s.library        = "sqlite3" # 框架依赖系统的sqlite3


# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


  


  
  # s.resource_bundles = {
  #   'WDRTL' => ['WDRTL/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
