Pod::Spec.new do |spec|
  spec.name = "RawStructuredFieldValues"
  spec.version = "0.3.0"

  spec.summary = "A Swift implementation of the HTTP Structured Header Field specification."
  spec.homepage = "https://github.com/apple/swift-http-structured-headers"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-http-structured-headers.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
end
