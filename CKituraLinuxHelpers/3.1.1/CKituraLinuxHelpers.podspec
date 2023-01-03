Pod::Spec.new do |spec|
  spec.name = "CKituraLinuxHelpers"
  spec.version = "3.1.1"

  spec.summary = "A networking library for Kitura, based on SwiftNIO."
  spec.homepage = "https://github.com/Kitura/Kitura-NIO"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "CLinuxHelpers"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.2"

  spec.source = { :git => "https://github.com/Kitura/Kitura-NIO.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.module_name}/include/*.h"
end
