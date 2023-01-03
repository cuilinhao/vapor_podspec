Pod::Spec.new do |spec|
  spec.name = "WebSocketKit"
  spec.version = "2.6.1"

  spec.summary = "WebSocket client library built on SwiftNIO."
  spec.homepage = "https://github.com/vapor/websocket-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/websocket-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIO", "~> 2.33"
  spec.dependency "NIOCore", "~> 2.33"
  spec.dependency "NIOConcurrencyHelpers", "~> 2.33"
  spec.dependency "NIOFoundationCompat", "~> 2.33"
  spec.dependency "NIOHTTP1", "~> 2.33"
  spec.dependency "NIOWebSocket", "~> 2.33"
  spec.dependency "NIOSSL", "~> 2.14"
  spec.dependency "NIOTransportServices", "~> 1.11"
  spec.dependency "Atomics", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
