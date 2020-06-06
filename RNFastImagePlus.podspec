require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name          = "RNFastImagePlus"
  s.version       = package['version']
  s.summary       = package['description']
  s.authors       = { "Sabinaya KC" => "kc.sabinaya@gmail.com" }
  s.homepage      = "https://github.com/sabinayakc/react-native-fast-image#readme"
  s.license       = "MIT"
  s.platforms     = { :ios => "8.0", :tvos => "9.0" }
  s.framework     = 'UIKit'
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/sabinayakc/react-native-fast-image.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'SDWebImage', '~> 5.0'
  s.dependency 'SDWebImageWebPCoder', '~> 0.4.1'
end
