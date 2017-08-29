#
# Be sure to run `pod lib lint ColorPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ColorPicker'
  s.version          = '0.1.0'
  s.summary          = 'Easy customizable color picker.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ColorPicker is a fantastic color picker 🎨 written in Swift. Developers can use our color picker as is or they can customize it with all the available features

                       DESC

  s.homepage         = 'https://github.com/malkouz/ColorPicker'
  s.screenshots     = 'https://github.com/malkouz/ColorPicker/raw/master/demo.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Moayad Al kouz' => 'moayad_kouz9@hotmail.com' }
  s.source           = { :git => 'https://github.com/malkouz/ColorPicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/malkouz'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ColorPicker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ColorPicker' => ['ColorPicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
