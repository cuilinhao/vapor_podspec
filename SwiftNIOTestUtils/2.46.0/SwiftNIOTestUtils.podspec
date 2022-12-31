Pod::Spec.new do |spec|
  spec.name = "SwiftNIOTestUtils"
  spec.version = "2.46.0"

  spec.summary = "Event-driven network application framework for high performance protocol servers & clients, non-blocking."
  spec.homepage = "https://github.com/apple/swift-nio"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "NIOTestUtils"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-nio.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "SwiftNIOPOSIX", "#{spec.version}"
  spec.dependency "SwiftNIOCore", "#{spec.version}"
  spec.dependency "SwiftNIOEmbedded", "#{spec.version}"
  spec.dependency "SwiftNIOHTTP1", "#{spec.version}"

  spec.dependency "SwiftAtomics", "~> 1.0"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"
  end
end
