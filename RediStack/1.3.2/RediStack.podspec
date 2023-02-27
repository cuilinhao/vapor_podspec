Pod::Spec.new do |spec|
  spec.name = "RediStack"
  spec.version = "1.3.2"

  spec.summary = "Non-blocking, event-driven Swift client for Redis."
  spec.homepage = "https://gitlab.com/swift-server-community/RediStack"
  spec.documentation_url = "http://docs.redistack.info/"
  spec.author = "Swift on Server Community"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.5"

  spec.source = { :git => "https://gitlab.com/swift-server-community/RediStack.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.prepare_command = <<-BASH
    sed -i -e '120 s/Metrics\\.//' 'Sources/#{spec.name}/RedisMetrics.swift'
    BASH

  spec.dependency "Logging", "~> 1"
  spec.dependency "Metrics", "> 1", "< 3"
  spec.dependency "NIO", "~> 2.43"
  spec.dependency "ServiceDiscovery", "~> 1"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "RediStackTestUtils", "#{spec.version}"

    test.dependency "NIOTestUtils", "~> 2.43"
  end

  spec.test_spec "#{spec.name}IntegrationTests" do |test|
    test.source_files = "Tests/#{spec.name}IntegrationTests/**/*.swift"

    test.dependency "RediStackTestUtils", "#{spec.version}"
  end
end
