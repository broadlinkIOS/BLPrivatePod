#
#  Be sure to run `pod spec lint BLExtension.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "BLExtension"
  s.version      = "0.1.0"
  s.summary      = "BLExtension utility."
  s.description  = "utility of ios Finally, don't worry about the indent, CocoaPods strips it"

  s.homepage     = "https://github.com/broadlinkIOS/BLExtension"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "pszertlek" => "357426163@qq.com" }
  # Or just: s.author    = "pszertlek"
  # s.authors            = { "pszertlek" => "357426163@qq.com" }
  # s.social_media_url   = "http://twitter.com/pszertlek"
  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/broadlinkIOS/BLExtension.git", :tag => "#{s.version}" }

#s.source_files  = "Classes", "Classes/**/*.{h,m}"

#s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

s.default_subspec = 'Category'
#s.subspec 'All' do |spec|
# spec.ios.dependency 'BLExtension/Category'
# spec.ios.dependency 'BLExtension/SecurityUtil'
#end

s.subspec 'Category' do |spec|
spec.requires_arc        = true
spec.source_files = [
'Classes/Category/*.{h,mm,m}'
]
spec.ios.dependency 'YYCategories'

end

#s.subspec 'SecurityUtil' do |spec|
#spec.requires_arc        = false
#spec.public_header_files = [
#'Classes/GTMBase64/*.h',
#'Classes/SecurityUtil/*.h'
#]
#spec.source_files = [
#'Classes/GTMBase64/*.{h,mm,m}',
#'Classes/SecurityUtil/*.{h,mm,m}'
#]
#spec.ios.dependency 'BLExtension/Category'
#end

end
