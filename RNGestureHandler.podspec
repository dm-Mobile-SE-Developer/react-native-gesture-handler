require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name         = "RNGestureHandler"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/dm-Mobile-SE-Developer/react-native-gesture-handler"
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/dm-Mobile-SE-Developer/react-native-gesture-handler", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.exclude_files = ['node_modules/**']
  s.dependency "React"

end
