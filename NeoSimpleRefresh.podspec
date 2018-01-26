#
# Be sure to run `pod lib lint NeoSimpleRefresh.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NeoSimpleRefresh'
  s.version          = '0.1.0'
  s.summary          = 'A simple RefreshControl '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'A swift RefreshControl ,It is very easy to use,and you can config it customer'
                       DESC

  s.homepage         = 'https://github.com/Rookieneo/NeoSimpleRefresh'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rookieneo' => 'rookieneo1224@163.com' }
  s.source           = { :git => 'https://github.com/Rookieneo/NeoSimpleRefresh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NeoSimpleRefresh/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NeoSimpleRefresh' => ['NeoSimpleRefresh/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
