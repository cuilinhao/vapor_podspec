Pod::Spec.new do |spec|
  spec.name = "KituraLoggerAPI"
  spec.version = "2.0.0"

  spec.summary = "Logger protocol."
  spec.homepage = "https://github.com/Kitura/LoggerAPI"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "LoggerAPI"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.0"

  spec.source = { :git => "https://github.com/Kitura/LoggerAPI.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "Logging", "~> 1.0"
end
