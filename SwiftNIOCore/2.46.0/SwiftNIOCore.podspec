Pod::Spec.new do |spec|
  spec.name = "SwiftNIOCore"
  spec.version = "2.46.0"

  spec.summary = "Event-driven network application framework for high performance protocol servers & clients, non-blocking."
  spec.homepage = "https://github.com/apple/swift-nio"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "NIOCore"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-nio.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "SwiftNIOConcurrencyHelpers", "#{spec.version}"
  spec.dependency "CNIOLinux", "#{spec.version}"
  spec.dependency "CNIOWindows", "#{spec.version}"

  spec.dependency "SwiftAtomics", "~> 1.0"
  spec.dependency "SwiftCollections", "~> 1.0"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"

    test.dependency "SwiftNIOEmbedded", "#{spec.version}"
    test.dependency "SwiftNIOFoundationCompat", "#{spec.version}"
  end
end
