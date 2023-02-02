Pod::Spec.new do |spec|
  spec.name = "Pulse"
  spec.version = "2.1.4"

  spec.summary = "Pulse: Network Logger for Apple Platforms"
  spec.homepage = "https://kean.blog/pulse/home"
  spec.author = "Alexander Grebenyuk"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "11.0"
  spec.tvos.deployment_target = "13.0"
  spec.watchos.deployment_target = "7.0"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/kean/Pulse.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
