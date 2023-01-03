Pod::Spec.new do |spec|
  spec.name = "RangeSet"
  spec.version = "1.0.1"

  spec.summary = "Swift Evolution preview package for SE-0270."
  spec.homepage = "https://github.com/apple/swift-se0270-range-set"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "SE0270_RangeSet"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.1"

  spec.source = { :git => "https://github.com/apple/swift-se0270-range-set.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}_Tests/**/*.swift"

    test.dependency "RangeSetTestHelpers", "#{spec.version}"
  end
end
