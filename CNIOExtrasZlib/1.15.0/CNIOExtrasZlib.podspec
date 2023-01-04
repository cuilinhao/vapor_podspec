Pod::Spec.new do |spec|
  spec.name = "CNIOExtrasZlib"
  spec.version = "1.15.0"

  spec.summary = "Useful code around SwiftNIO."
  spec.homepage = "https://github.com/apple/swift-nio-extras"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-extras.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
  spec.module_map = false

  spec.libraries = "z"
end
