Pod::Spec.new do |spec|
  spec.name = "MySQLKit"
  spec.version = "4.6.1"

  spec.summary = "Pure Swift MySQL client built on non-blocking, event-driven sockets."
  spec.homepage = "https://github.com/vapor/mysql-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.5"

  spec.source = { :git => "https://github.com/vapor/mysql-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "AsyncKit", "~> 1.0"
  spec.dependency "Crypto", "> 1", "< 3"
  spec.dependency "Logging", "~> 1.0"
  spec.dependency "MySQLNIO", "~> 1.0"
  spec.dependency "NIO", "~> 2.0"
  spec.dependency "NIOFoundationCompat", "~> 2.0"
  spec.dependency "NIOSSL", "~> 2.14"
  spec.dependency "SQLKit", "~> 3.16"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "SQLKitBenchmark"
  end
end
