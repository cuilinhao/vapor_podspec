Pod::Spec.new do |spec|
  spec.name = "IsPower"
  spec.version = "2.0.0"

  spec.summary = "Preview package for Swift Evolution proposal SE-0288."
  spec.homepage = "https://github.com/apple/swift-se0288-is-power"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "SE0288_IsPower"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.1"

  spec.source = { :git => "https://github.com/apple/swift-se0288-is-power.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"
  end
end
