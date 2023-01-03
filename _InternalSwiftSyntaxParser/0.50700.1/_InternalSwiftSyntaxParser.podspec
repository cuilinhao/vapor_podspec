Pod::Spec.new do |spec|
  spec.name = "_InternalSwiftSyntaxParser"
  spec.version = "0.50700.1"

  spec.summary = "A set of Swift libraries for parsing, inspecting, generating, and transforming Swift source code."
  spec.homepage = "https://github.com/apple/swift-syntax"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = {
    :http => "https://github.com/apple/swift-syntax/releases/download/#{spec.version}/_InternalSwiftSyntaxParser.xcframework.zip",
    :sha256 => "956b7acf0ad7177e1a0d250d4938412f1bebf95327e184849872d3cdf2c1e9f4",
  }
  spec.vendored_libraries = "**/lib_InternalSwiftSyntaxParser.dylib"
end
