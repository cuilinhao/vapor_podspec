Pod::Spec.new do |spec|
  spec.name = "NIOSOCKS"
  spec.version = "1.15.0"

  spec.summary = "Useful code around SwiftNIO."
  spec.homepage = "https://github.com/apple/swift-nio-extras"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-extras.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIO", "~> 2.42"
  spec.dependency "NIOCore", "~> 2.42"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "NIOEmbedded", "~> 2.42"
  end
end
