Pod::Spec.new do |spec|
  spec.name = "RangeSetTestHelpers"
  spec.version = "1.0.1"

  spec.summary = "Swift Evolution preview package for SE-0270."
  spec.homepage = "https://github.com/apple/swift-se0270-range-set"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "TestHelpers"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.1"

  spec.source = { :git => "https://github.com/apple/swift-se0270-range-set.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"
  spec.pod_target_xcconfig = {
    "ENABLE_TESTING_SEARCH_PATHS" => "YES",
  }

  spec.frameworks = "XCTest"
end
