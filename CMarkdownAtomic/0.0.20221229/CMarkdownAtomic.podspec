Pod::Spec.new do |spec|
  spec.name = "CMarkdownAtomic"
  spec.version = "0.0.20221229"

  spec.summary = "A Swift package for parsing, building, editing, and analyzing Markdown documents."
  spec.homepage = "https://github.com/apple/swift-markdown"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "CAtomic"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = { :git => "https://github.com/apple/swift-markdown.git", :tag => "swift-DEVELOPMENT-SNAPSHOT-2022-12-29-a" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.{h,c}"
  spec.public_header_files = "Sources/#{spec.module_name}/include/*.h"
  spec.module_map = false
end
