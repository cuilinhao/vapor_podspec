Pod::Spec.new do |spec|
  spec.name = "ServiceDiscovery"
  spec.version = "1.2.0"

  spec.summary = "A service discovery API for Swift."
  spec.homepage = "https://github.com/apple/swift-service-discovery"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-service-discovery.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Atomics", "~> 1"
  spec.dependency "Logging", "~> 1.2"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
