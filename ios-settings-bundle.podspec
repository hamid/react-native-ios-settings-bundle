require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ios-settings-bundle"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  ios-settings-bundle
                   DESC
  s.homepage     = "https://github.com/hamid/react-native-ios-settings-bundle"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Hamid Reza Salimian" => "Hamid@salimian.me" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/hamid/react-native-ios-settings-bundle", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

