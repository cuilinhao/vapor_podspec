Pod::Spec.new do |spec|
  spec.name = "JWTKit"
  spec.version = "4.7.0"

  spec.summary = "JSON Web Token signing and verification (HMAC, RSA, ECDSA) using BoringSSL."
  spec.homepage = "https://github.com/vapor/jwt-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/jwt-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "CJWTKitBoringSSL", "#{spec.version}"

  spec.dependency "Crypto", ">= 1.0.0", "< 3.0.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
