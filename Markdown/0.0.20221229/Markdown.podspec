Pod::Spec.new do |spec|
  spec.name = "Markdown"
  spec.version = "0.0.20221229"

  spec.summary = "A Swift package for parsing, building, editing, and analyzing Markdown documents."
  spec.homepage = "https://github.com/apple/swift-markdown"
  spec.author = "Apple Inc."
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = { :git => "https://github.com/apple/swift-markdown.git", :tag => "swift-DEVELOPMENT-SNAPSHOT-2022-12-29-a" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.prepare_command = <<-BASH
    sed -i -e 's/Bundle\\.module/Bundle\\(for: MarkupRewriterTests\\.self\\)/' 'Tests/#{spec.name}Tests/Visitors/MarkupRewriterTests.swift'
    BASH

  spec.dependency "CMarkdownAtomic", "#{spec.version}"

  spec.dependency "CMarkGFM"
  spec.dependency "CMarkGFMExtensions"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
    test.resources = [
      "Tests/#{spec.name}Tests/Visitors/Everything.md",
    ]
  end
end
