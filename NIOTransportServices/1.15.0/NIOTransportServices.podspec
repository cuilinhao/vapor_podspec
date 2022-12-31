Pod::Spec.new do |spec|
  spec.name = "NIOTransportServices"
  spec.version = "1.15.0"

  spec.summary = "Extensions for SwiftNIO to support Apple platforms as first-class citizens."
  spec.homepage = "https://github.com/apple/swift-nio-transport-services"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-transport-services.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIO", "~> 2.42"
  spec.dependency "NIOCore", "~> 2.42"
  spec.dependency "NIOFoundationCompat", "~> 2.42"
  spec.dependency "NIOTLS", "~> 2.42"
  spec.dependency "Atomics", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "NIOEmbedded", "~> 2.42"
  end
end
