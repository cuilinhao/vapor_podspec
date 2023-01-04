Pod::Spec.new do |spec|
  spec.name = "Crypto"
  spec.version = "2.2.2"

  spec.summary = "Open-source implementation of a substantial portion of the API of Apple CryptoKit suitable for use on Linux platforms."
  spec.homepage = "https://github.com/apple/swift-crypto"
  spec.documentation_url = "https://developer.apple.com/documentation/cryptokit"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-crypto.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "$(inherited) CRYPTO_IN_SWIFTPM" }

  spec.default_subspecs = :none
  spec.subspec "BoringSSL" do |subspec|
    subspec.source_files = "Sources/#{spec.name}/**/*.swift"
    subspec.pod_target_xcconfig = {
      "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "CRYPTO_IN_SWIFTPM_FORCE_BUILD_API",
    }

    subspec.dependency "CCryptoBoringSSL", "#{spec.version}"
    subspec.dependency "CCryptoBoringSSLShims", "#{spec.version}"
    subspec.dependency "CryptoBoringWrapper", "#{spec.version}"
  end

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
    test.resources = "Tests/Test Vectors/**/*"
  end
end
