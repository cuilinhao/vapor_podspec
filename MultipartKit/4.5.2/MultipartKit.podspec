Pod::Spec.new do |spec|
  spec.name = "MultipartKit"
  spec.version = "4.5.2"

  spec.summary = "Parses and serializes multipart-encoded data with Codable support."
  spec.homepage = "https://github.com/vapor/multipart-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/multipart-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "NIO", "~> 2.33"
  spec.dependency "NIOHTTP1", "~> 2.33"
  spec.dependency "Collections", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
