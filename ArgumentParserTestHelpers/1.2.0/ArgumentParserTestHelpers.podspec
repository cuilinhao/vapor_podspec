Pod::Spec.new do |spec|
  spec.name = "ArgumentParserTestHelpers"
  spec.version = "1.2.0"

  spec.summary = "Straightforward, type-safe argument parsing for Swift."
  spec.homepage = "https://github.com/apple/swift-argument-parser"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-argument-parser.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.pod_target_xcconfig = {
    "ENABLE_TESTING_SEARCH_PATHS" => "YES",
  }

  spec.dependency "ArgumentParser", "#{spec.version}"
  spec.dependency "ArgumentParserToolInfo", "#{spec.version}"

  spec.frameworks = "XCTest"
end
