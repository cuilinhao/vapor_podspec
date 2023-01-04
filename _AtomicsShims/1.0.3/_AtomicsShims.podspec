Pod::Spec.new do |spec|
  spec.name = "_AtomicsShims"
  spec.version = "1.0.3"

  spec.summary = "Low-level atomic operations for Swift."
  spec.homepage = "https://github.com/apple/swift-atomics"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-atomics.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
  spec.pod_target_xcconfig = {
    "LIBRARY_SEARCH_PATHS" => "$(inherited) $(SDKROOT)/usr/lib/swift",
  }
  spec.module_map = false

  spec.libraries = "swiftCore"
end
