Pod::Spec.new do |spec|
  spec.name = "RediStackTestUtils"
  spec.version = "1.3.2"

  spec.summary = "Non-blocking, event-driven Swift client for Redis."
  spec.homepage = "https://gitlab.com/swift-server-community/RediStack"
  spec.documentation_url = "http://docs.redistack.info/"
  spec.author = "Swift on Server Community"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.5"

  spec.source = { :git => "https://gitlab.com/swift-server-community/RediStack.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.pod_target_xcconfig = {
    "ENABLE_TESTING_SEARCH_PATHS" => "YES",
  }

  spec.dependency "RediStack", "#{spec.version}"

  spec.dependency "NIO", "~> 2.43"

  spec.frameworks = "XCTest"
end
