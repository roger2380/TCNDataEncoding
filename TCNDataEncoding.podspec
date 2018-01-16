#
# Be sure to run `pod lib lint TCNDataEncoding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TCNDataEncoding'
  s.version          = '0.0.5'
  s.summary          = 'data Utils for truecolor'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  一些数据编解码,压缩解压,格式处理相关的工具方法
                       DESC

  s.homepage         = 'ssh://git@git.1kxun.com/ios/TCNDataEncoding.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '唐艺源' => 'tyy@shtruecolor.com' }
  s.source           = { :git => 'ssh://git@git.1kxun.com/ios/TCNDataEncoding.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |sp|
    sp.dependency 'TCNDataEncoding/Compress'
    sp.dependency 'TCNDataEncoding/JavaScriptString'
    sp.dependency 'TCNDataEncoding/Base64'
    sp.dependency 'TCNDataEncoding/RSA'
    sp.dependency 'TCNDataEncoding/UrlEncode'
  end

  s.subspec 'Compress' do |sp|
    sp.source_files  = "TCNDataEncoding/Compress/**/*.{h,m}"
    sp.public_header_files = "TCNDataEncoding/Compress/**/*.h"
    sp.libraries    = "z"
  end

  s.subspec 'JavaScriptString' do |sp|
    sp.source_files  = "TCNDataEncoding/JavaScriptString/**/*.{h,m}"
    sp.public_header_files = "TCNDataEncoding/JavaScriptString/**/*.h"
  end

  s.subspec 'Base64' do |sp|
    sp.source_files  = "TCNDataEncoding/Base64/**/*.{h,m}"
    sp.public_header_files = "TCNDataEncoding/Base64/**/*.h"
  end

  s.subspec 'RSA' do |sp|
    sp.source_files  = "TCNDataEncoding/RSA/**/*.{h,m}"
    sp.public_header_files = "TCNDataEncoding/RSA/**/*.h"
    sp.dependency 'TCNDataEncoding/Base64'
  end

  s.subspec 'UrlEncode' do |sp|
    sp.source_files  = "TCNDataEncoding/UrlEncode/**/*.{h,m}"
    sp.public_header_files = "TCNDataEncoding/UrlEncode/**/*.h"
  end
    
  # s.resource_bundles = {
  #   'test' => ['test/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
