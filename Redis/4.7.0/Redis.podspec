Pod::Spec.new do |spec|
  spec.name = "Redis"
  spec.version = "4.7.0"

  spec.summary = "Vapor provider for RediStack."
  spec.homepage = "https://github.com/vapor/redis"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.2"

  spec.source = { :git => "https://github.com/vapor/redis.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "RediStack", "~> 1.1"
  spec.dependency "Vapor", "~> 4.50"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"

    test.dependency "XCTVapor", "~> 4.50"
  end
end
