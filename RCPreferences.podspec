#
# Be sure to run `pod lib lint RCPreferences.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RCPreferences'
  s.version          = '1.0'
  s.summary          = 'Swift typesafe wrapper over UserDefaults to help you build user preferences in your app'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        Swift typesafe wrapper over UserDefaults to help you build user preferences in your app.
                       DESC

  s.homepage         = 'http://www.imagin.ro'
  s.license          = 'Copyright © 2019 IMAGIN Soft. All rights reserved.'
  s.author           = { 'Cristian Baluta' => 'cristi.baluta@gmail.com' }
  s.source           = { :git => 'https://github.com/ralcr/RCPreferences.git'}
#, :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'RCPreferences.swift'
  s.requires_arc = true

end
