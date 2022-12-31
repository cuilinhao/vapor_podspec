Pod::Spec.new do |spec|
  spec.name = "NIOTestUtils"
  spec.version = "2.46.0"

  spec.summary = "Event-driven network application framework for high performance protocol servers & clients, non-blocking."
  spec.homepage = "https://github.com/apple/swift-nio"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-nio.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIOPOSIX", "#{spec.version}"
  spec.dependency "NIOCore", "#{spec.version}"
  spec.dependency "NIOEmbedded", "#{spec.version}"
  spec.dependency "NIOHTTP1", "#{spec.version}"

  spec.dependency "Atomics", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
