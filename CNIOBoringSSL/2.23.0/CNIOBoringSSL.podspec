Pod::Spec.new do |spec|
  spec.name = "CNIOBoringSSL"
  spec.version = "2.23.0"

  spec.summary = "TLS Support for SwiftNIO, based on BoringSSL."
  spec.homepage = "https://github.com/apple/swift-nio-ssl"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-ssl.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c,S,cc}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
  spec.pod_target_xcconfig = {
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
  }
  spec.module_map = false

  spec.libraries = "c++"
end
