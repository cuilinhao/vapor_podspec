Pod::Spec.new do |spec|
  spec.name = "SymbolKit"
  spec.version = "0.0.20220915"

  spec.summary = "A Swift package for encoding and decoding Swift Symbol Graph files."
  spec.homepage = "https://github.com/apple/swift-docc-symbolkit"
  spec.documentation_url = "https://apple.github.io/swift-docc-symbolkit/documentation/symbolkit/"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/apple/swift-docc-symbolkit.git", :tag => "swift-DEVELOPMENT-SNAPSHOT-2022-09-22-a" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
