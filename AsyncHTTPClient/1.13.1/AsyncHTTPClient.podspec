Pod::Spec.new do |spec|
  spec.name = "AsyncHTTPClient"
  spec.version = "1.13.1"

  spec.summary = "HTTP client library built on SwiftNIO."
  spec.homepage = "https://github.com/swift-server/async-http-client"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/swift-server/async-http-client.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.prepare_command = <<-BASH
    sed -i -e 's/Bundle\\.module/Bundle\\(for: Self\\.self\\)/' 'Tests/#{spec.name}Tests/AsyncAwaitEndToEndTests.swift'
    sed -i -e 's/Bundle\\.module/Bundle\\(for: Self\\.self\\)/' 'Tests/#{spec.name}Tests/HTTPClientTests.swift'
    BASH

  spec.dependency "CAsyncHTTPClient", "#{spec.version}"

  spec.dependency "NIO", "~> 2.42"
  spec.dependency "NIOCore", "~> 2.42"
  spec.dependency "NIOPOSIX", "~> 2.42"
  spec.dependency "NIOHTTP1", "~> 2.42"
  spec.dependency "NIOConcurrencyHelpers", "~> 2.42"
  spec.dependency "NIOHTTP2", "~> 1.19"
  spec.dependency "NIOSSL", "~> 2.22"
  spec.dependency "NIOHTTPCompression", "~> 1.13"
  spec.dependency "NIOSOCKS", "~> 1.13"
  spec.dependency "NIOTransportServices", "~> 1.11"
  spec.dependency "Logging", "~> 1.4"
  spec.dependency "Atomics", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
    test.resources = [
      "Tests/#{spec.name}Tests/Resources/self_signed_cert.pem",
      "Tests/#{spec.name}Tests/Resources/self_signed_key.pem",
    ]

    test.dependency "NIOEmbedded", "~> 2.42"
    test.dependency "NIOFoundationCompat", "~> 2.42"
    test.dependency "NIOTestUtils", "~> 2.42"
  end
end
