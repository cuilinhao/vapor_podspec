Pod::Spec.new do |spec|
  spec.name = "CSystem"
  spec.version = "1.2.1"

  spec.summary = "Low-level system calls and types for Swift."
  spec.homepage = "https://github.com/apple/swift-system"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.2"

  spec.source = { :git => "https://github.com/apple/swift-system.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
end
