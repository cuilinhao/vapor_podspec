Pod::Spec.new do |spec|
  spec.name = "Collections"
  spec.version = "1.0.4"

  spec.summary = "Commonly used data structures for Swift."
  spec.homepage = "https://github.com/apple/swift-collections"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-collections.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "DequeModule", "#{spec.version}"
  spec.dependency "OrderedCollections", "#{spec.version}"
end
