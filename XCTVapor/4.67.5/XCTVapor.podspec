Pod::Spec.new do |spec|
  spec.name = "XCTVapor"
  spec.version = "4.67.5"

  spec.summary = "A server-side Swift HTTP web framework."
  spec.homepage = "https://github.com/vapor/vapor"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/vapor.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.pod_target_xcconfig = {
    "ENABLE_TESTING_SEARCH_PATHS" => "YES",
  }

  spec.dependency "Vapor", "#{spec.version}"

  spec.frameworks = "XCTest"
end
