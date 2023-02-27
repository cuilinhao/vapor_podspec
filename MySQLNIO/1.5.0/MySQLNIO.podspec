Pod::Spec.new do |spec|
  spec.name = "MySQLNIO"
  spec.version = "1.5.0"

  spec.summary = "Non-blocking, event-driven Swift client for MySQL."
  spec.homepage = "https://github.com/vapor/mysql-nio"
  spec.author = "Vapor"
  spec.license = { :type => "MIT" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.5"

  spec.source = { :git => "https://github.com/vapor/mysql-nio.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Crypto", "> 1", "< 3"
  spec.dependency "Logging", "~> 1.0"
  spec.dependency "NIO", "~> 2.0"
  spec.dependency "NIOSSL", "~> 2.14"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
