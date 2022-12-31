Pod::Spec.new do |spec|
  spec.name = "SwiftNIOSSL"
  spec.version = "2.23.0"

  spec.summary = "TLS Support for SwiftNIO, based on BoringSSL."
  spec.homepage = "https://github.com/apple/swift-nio-ssl"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "NIOSSL"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-ssl.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "CNIOBoringSSL", "#{spec.version}"
  spec.dependency "CNIOBoringSSLShims", "#{spec.version}"

  spec.dependency "SwiftNIO", "~> 2.42"
  spec.dependency "SwiftNIOCore", "~> 2.42"
  spec.dependency "SwiftNIOConcurrencyHelpers", "~> 2.42"
  spec.dependency "SwiftNIOTLS", "~> 2.42"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"

    test.dependency "SwiftNIOEmbedded", "~> 2.42"
    test.dependency "SwiftNIOPOSIX", "~> 2.42"
  end
end
