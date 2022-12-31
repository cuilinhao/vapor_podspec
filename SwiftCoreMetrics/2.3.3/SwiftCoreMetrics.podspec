Pod::Spec.new do |spec|
  spec.name = "SwiftCoreMetrics"
  spec.version = "2.3.3"

  spec.summary = "A Metrics API for Swift."
  spec.homepage = "https://github.com/apple/swift-metrics"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "CoreMetrics"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-metrics.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"
end
