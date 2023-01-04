Pod::Spec.new do |spec|
  spec.name = "CAsyncHTTPClient"
  spec.version = "1.13.1"

  spec.summary = "HTTP client library built on SwiftNIO."
  spec.homepage = "https://github.com/swift-server/async-http-client"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/swift-server/async-http-client.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
  spec.module_map = false
end
