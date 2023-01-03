Pod::Spec.new do |spec|
  spec.name = "AsyncKit"
  spec.version = "1.15.0"

  spec.summary = "Sugary extensions for the SwiftNIO library."
  spec.homepage = "https://github.com/vapor/async-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "11.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.5.2"

  spec.source = { :git => "https://github.com/vapor/async-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIO", "~> 2.33"
  spec.dependency "Logging", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "Atomics", "~> 1.0"
  end
end
