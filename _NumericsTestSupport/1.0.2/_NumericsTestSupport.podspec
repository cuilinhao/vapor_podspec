Pod::Spec.new do |spec|
  spec.name = "_NumericsTestSupport"
  spec.version = "1.0.2"

  spec.summary = "Advanced mathematical types and functions for Swift."
  spec.homepage = "https://github.com/apple/swift-numerics"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "_TestSupport"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.0"

  spec.source = { :git => "https://github.com/apple/swift-numerics.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/_TestSupport/**/*.swift"

  spec.dependency "SwiftNumerics", "#{spec.version}"
end
