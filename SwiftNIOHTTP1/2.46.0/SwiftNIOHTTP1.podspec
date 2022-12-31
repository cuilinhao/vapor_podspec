Pod::Spec.new do |spec|
  spec.name = "SwiftNIOHTTP1"
  spec.version = "2.46.0"

  spec.summary = "Event-driven network application framework for high performance protocol servers & clients, non-blocking."
  spec.homepage = "https://github.com/apple/swift-nio"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "NIOHTTP1"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-nio.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "SwiftNIOConcurrencyHelpers", "#{spec.version}"
  spec.dependency "SwiftNIO", "#{spec.version}"
  spec.dependency "SwiftNIOCore", "#{spec.version}"
  spec.dependency "CNIOLLHTTP", "#{spec.version}"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"

    test.dependency "SwiftNIOEmbedded", "#{spec.version}"
    test.dependency "SwiftNIOPOSIX", "#{spec.version}"
    test.dependency "SwiftNIOFoundationCompat", "#{spec.version}"
    test.dependency "SwiftNIOTestUtils", "#{spec.version}"
  end
end
