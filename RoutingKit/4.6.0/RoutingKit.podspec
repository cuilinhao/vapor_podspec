Pod::Spec.new do |spec|
  spec.name = "RoutingKit"
  spec.version = "4.6.0"

  spec.summary = "High-performance trie-node router."
  spec.homepage = "https://github.com/vapor/routing-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "11.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/routing-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Logging", "~> 1.4"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
