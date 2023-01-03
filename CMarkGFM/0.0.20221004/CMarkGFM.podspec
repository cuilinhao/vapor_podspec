Pod::Spec.new do |spec|
  spec.name = "CMarkGFM"
  spec.version = "0.0.20221004"

  spec.summary = "CommonMark parsing and rendering library and program in C."
  spec.homepage = "https://github.com/apple/swift-cmark"
  spec.author = "Apple Inc."
  spec.license = { :type => "BSD 2-Clause", :file => "COPYING" }

  spec.module_name = "cmark_gfm"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = { :git => "https://github.com/apple/swift-cmark.git", :tag => "swift-DEVELOPMENT-SNAPSHOT-2022-10-04-a" }
  spec.source_files = "src/**/*.{h,c,inc}"
  spec.public_header_files = "src/include/*.h"
end
