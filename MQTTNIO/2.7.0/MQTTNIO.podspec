Pod::Spec.new do |spec|
  spec.name = "MQTTNIO"
  spec.version = "2.7.0"

  spec.summary = "A Swift NIO MQTT v3.1.1 and v5.0 Client."
  spec.homepage = "https://github.com/swift-server-community/mqtt-nio"
  spec.documentation_url = "https://swift-server-community.github.io/mqtt-nio/documentation/mqttnio/"
  spec.author = "Swift on Server Community"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE" }

  spec.ios.deployment_target = "12.0"
  spec.osx.deployment_target = "10.14"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/swift-server-community/mqtt-nio.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Atomics", "~> 1.0"
  spec.dependency "Logging", "~> 1.0"
  spec.dependency "NIO", "~> 2.42"
  spec.dependency "NIOConcurrencyHelpers", "~> 2.42"
  spec.dependency "NIOHTTP1", "~> 2.42"
  spec.dependency "NIOWebSocket", "~> 2.42"
  spec.dependency "NIOTransportServices", "~> 1.6"
  spec.osx.dependency "NIOSSL", "~> 2.14"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
