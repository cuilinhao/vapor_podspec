Pod::Spec.new do |spec|
  spec.name = "SQLKitBenchmark"
  spec.version = "3.24.0"

  spec.summary = "Build SQL queries in Swift. Extensible, protocol-based design that supports DQL, DML, and DDL."
  spec.homepage = "https://github.com/vapor/sql-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.5"

  spec.source = { :git => "https://github.com/vapor/sql-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
  spec.pod_target_xcconfig = {
    "ENABLE_TESTING_SEARCH_PATHS" => "YES",
  }

  spec.dependency "SQLKit", "#{spec.version}"

  spec.frameworks = "XCTest"
end
