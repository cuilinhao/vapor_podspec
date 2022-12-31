Pod::Spec.new do |spec|
  spec.name = "NIOHTTP2"
  spec.version = "1.23.1"

  spec.summary = "HTTP/2 support for SwiftNIO."
  spec.homepage = "https://github.com/apple/swift-nio-http2"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-http2.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIOHPACK", "#{spec.version}"

  spec.dependency "NIO", "~> 2.35"
  spec.dependency "NIOCore", "~> 2.35"
  spec.dependency "NIOHTTP1", "~> 2.35"
  spec.dependency "NIOTLS", "~> 2.35"
  spec.dependency "NIOConcurrencyHelpers", "~> 2.35"
  spec.dependency "Atomics", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "NIOFoundationCompat", "~> 2.35"
  end
end
