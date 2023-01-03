Pod::Spec.new do |spec|
  spec.name = "SwiftProtobuf"
  spec.version = "1.20.3"

  spec.summary = "Plugin and runtime library for using protobuf with Swift."
  spec.homepage = "https://github.com/apple/swift-protobuf"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = ["4.0", "4.2", "5.0"]

  spec.source = { :git => "https://github.com/apple/swift-protobuf.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.prepare_command = <<-BASH
    sed -i -e 's/"SwiftProtobufTests\\./"SwiftProtobuf_Unit_SwiftProtobufTests\\./' Tests/#{spec.name}Tests/*.swift
    BASH

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
