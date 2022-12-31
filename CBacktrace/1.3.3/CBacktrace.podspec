Pod::Spec.new do |spec|
  spec.name = "CBacktrace"
  spec.version = "1.3.3"

  spec.summary = "Backtraces for Swift on Linux and Windows."
  spec.homepage = "https://github.com/swift-server/swift-backtrace"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/swift-server/swift-backtrace.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.module_name}/include/*.h"
end
