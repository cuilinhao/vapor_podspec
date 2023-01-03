Pod::Spec.new do |spec|
  spec.name = "NIOSSH"
  spec.version = "0.5.0"

  spec.summary = "SwiftNIO SSH is a programmatic implementation of SSH using SwiftNIO."
  spec.homepage = "https://github.com/apple/swift-nio-ssh"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-nio-ssh.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.prepare_command = <<-BASH
    sed -i -e '49,53d;66,69d;82,84d;112,118d;136,140d;157,160d' 'Sources/#{spec.name}/Keys And Signatures/NIOSSHPrivateKey.swift'
    sed -i -e '414,437d' 'Tests/#{spec.name}Tests/EndToEndTests.swift'
    BASH

  spec.dependency "NIOCore", "~> 2.42"
  spec.dependency "NIOConcurrencyHelpers", "~> 2.42"
  spec.dependency "NIOFoundationCompat", "~> 2.42"
  spec.dependency "Crypto", ">= 1.0.0", "< 3.0.0"
  spec.dependency "Atomics", "~> 1.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "NIOEmbedded", "~> 2.42"
  end
end
