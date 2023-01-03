Pod::Spec.new do |spec|
  spec.name = "SwiftSyntaxParser"
  spec.version = "0.50700.1"

  spec.summary = "A set of Swift libraries for parsing, inspecting, generating, and transforming Swift source code."
  spec.homepage = "https://github.com/apple/swift-syntax"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = { :git => "https://github.com/apple/swift-syntax.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "_InternalSwiftSyntaxParser", "#{spec.version}"
  spec.dependency "SwiftSyntax", "#{spec.version}"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Test/*.swift"
    test.resources = "Tests/#{spec.name}Test/Inputs/*"
  end

  spec.test_spec "PerformanceTests" do |test|
    test.source_files = "Tests/PerformanceTest/*.swift"
    test.resources = "Tests/PerformanceTest/Inputs/*"
  end
end
