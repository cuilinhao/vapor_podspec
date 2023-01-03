Pod::Spec.new do |spec|
  spec.name = "KituraNIO"
  spec.version = "3.1.1"

  spec.summary = "A networking library for Kitura, based on SwiftNIO."
  spec.homepage = "https://github.com/Kitura/Kitura-NIO"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "KituraNet"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.2"

  spec.source = { :git => "https://github.com/Kitura/Kitura-NIO.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "CKituraLinuxHelpers", "#{spec.version}"

  spec.dependency "NIO", "~> 2.33"
  spec.dependency "NIOFoundationCompat", "~> 2.33"
  spec.dependency "NIOHTTP1", "~> 2.33"
  spec.dependency "NIOWebSocket", "~> 2.33"
  spec.dependency "NIOConcurrencyHelpers", "~> 2.33"
  spec.dependency "NIOSSL", "~> 2.0"
  spec.dependency "NIOExtras", "~> 1.0"
  spec.dependency "BlueSSLService", "~> 2.0"
  spec.dependency "KituraLoggerAPI", "~> 2.0"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"
  end
end
