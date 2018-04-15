#
# Be sure to run `pod lib lint MKColorPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKColorPicker'
  s.version          = '1.2'
  s.summary          = 'Easy customizable color picker.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
MKColorPicker is a fantastic color picker 🎨 written in Swift. Developers can use our color picker as is or they can customize it with all the available features

                       DESC

  s.homepage         = 'https://github.com/malkouz/MKColorPicker'
#s.screenshots     = 'https://github.com/malkouz/MKColorPicker/blob/master/demo.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Moayad Al kouz' => 'moayad_kouz9@hotmail.com' }
  s.source           = { :git => 'https://github.com/malkouz/MKColorPicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/malkouz'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MKColorPicker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MKColorPicker' => ['MKColorPicker/Assets/*.png']
  # }

end
