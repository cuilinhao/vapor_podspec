Pod::Spec.new do |spec|
  spec.name = "APNSwift"
  spec.version = "4.0.0"

  spec.summary = "An HTTP/2 APNS library built on AsyncHTTPClient."
  spec.homepage = "https://github.com/swift-server-community/APNSwift"
  spec.author = "Swift on Server Community"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE" }

  spec.ios.deployment_target = "15.0"
  spec.osx.deployment_target = "12.0"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/swift-server-community/APNSwift.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Logging", "~> 1.0"
  spec.dependency "Crypto", ">= 1.0.0", "< 3.0.0"
  spec.dependency "AsyncHTTPClient", "~> 1.10"
  spec.dependency "JWTKit", "~> 4.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
