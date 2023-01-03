Pod::Spec.new do |spec|
  spec.name = "_CSwiftSyntax"
  spec.version = "0.50700.1"

  spec.summary = "A set of Swift libraries for parsing, inspecting, generating, and transforming Swift source code."
  spec.homepage = "https://github.com/apple/swift-syntax"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = { :git => "https://github.com/apple/swift-syntax.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
end
