Pod::Spec.new do |spec|
  spec.name = "SwiftAlgorithms"
  spec.version = "1.0.0"

  spec.summary = "Commonly used sequence and collection algorithms for Swift."
  spec.homepage = "https://github.com/apple/swift-algorithms"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "Algorithms"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.1"

  spec.source = { :git => "https://github.com/apple/swift-algorithms.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "SwiftRealModule", "~> 1.0"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
