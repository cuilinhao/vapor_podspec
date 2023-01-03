Pod::Spec.new do |spec|
  spec.name = "BlueSocket"
  spec.version = "2.0.4"

  spec.summary = "Socket framework for Swift using the Swift Package Manager."
  spec.homepage = "https://github.com/Kitura/BlueSocket"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE" }

  spec.module_name = "Socket"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.0"

  spec.source = { :git => "https://github.com/Kitura/BlueSocket.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"
end
