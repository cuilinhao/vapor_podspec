Pod::Spec.new do |spec|
  spec.name = "System"
  spec.version = "1.2.1"

  spec.summary = "Low-level system calls and types for Swift."
  spec.homepage = "https://github.com/apple/swift-system"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "SystemPackage"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.2"

  spec.source = { :git => "https://github.com/apple/swift-system.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.pod_target_xcconfig = {
    "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "$(inherited) SYSTEM_PACKAGE",
    "OTHER_CFLAGS" => "$(inherited) -D_CRT_SECURE_NO_WARNINGS",
  }

  spec.dependency "CSystem", "#{spec.version}"
end
