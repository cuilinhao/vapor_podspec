Pod::Spec.new do |spec|
  spec.name = "SwiftAtomics"
  spec.version = "1.0.3"

  spec.summary = "Low-level atomic operations for Swift."
  spec.homepage = "https://github.com/apple/swift-atomics"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "Atomics"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-atomics.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "_AtomicsShims", "#{spec.version}"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"
    test.exclude_files = "Tests/#{spec.module_name}Tests/main.swift"
  end
end
