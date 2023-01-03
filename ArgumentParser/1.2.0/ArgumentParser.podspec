Pod::Spec.new do |spec|
  spec.name = "ArgumentParser"
  spec.version = "1.2.0"

  spec.summary = "Straightforward, type-safe argument parsing for Swift."
  spec.homepage = "https://github.com/apple/swift-argument-parser"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.6"

  spec.source = { :git => "https://github.com/apple/swift-argument-parser.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.prepare_command = <<-BASH
    sed -i -e 's/Bundle\\.module/Bundle\\(for: Self\\.self\\)/' 'Tests/#{spec.name}ExampleTests/CountLinesExampleTests.swift'
    BASH

  spec.dependency "ArgumentParserToolInfo", "#{spec.version}"

  spec.test_spec "#{spec.name}EndToEndTests" do |test|
    test.source_files = "Tests/#{spec.name}EndToEndTests/**/*.swift"

    test.dependency "ArgumentParserTestHelpers", "#{spec.version}"
  end

  spec.test_spec "#{spec.name}UnitTests" do |test|
    test.source_files = "Tests/#{spec.name}UnitTests/**/*.swift"

    test.dependency "ArgumentParserTestHelpers", "#{spec.version}"
  end
end
