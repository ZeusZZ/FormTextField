Pod::Spec.new do |s|
  s.name             = "FormTextField"
  s.summary          = "A UITextField that supports formatters and input validators such as maximum length and regex"
  s.version          = "2.0.2"
  s.homepage         = "https://github.com/ZeusZZ/FormTextField"
  s.license          = 'MIT'
  s.author           = { 'antony' => 'antonyzhong.mason@gmail.com' }
  s.source           = { :git => "https://github.com/ZeusZZ/FormTextField.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/3lvis'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'Source/**/*'
  s.frameworks = 'UIKit'
  s.swift_version = '4.0'
end
