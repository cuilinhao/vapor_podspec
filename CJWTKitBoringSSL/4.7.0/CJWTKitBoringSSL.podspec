Pod::Spec.new do |spec|
  spec.name = "CJWTKitBoringSSL"
  spec.version = "4.7.0"

  spec.summary = "JSON Web Token signing and verification (HMAC, RSA, ECDSA) using BoringSSL."
  spec.homepage = "https://github.com/vapor/jwt-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/jwt-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.{h,c,S}"
  spec.public_header_files = "Sources/#{spec.name}/include/*.h"
  spec.prepare_command = <<-BASH
    sed -i -e '129d' 'Sources/#{spec.name}/include/CJWTKitBoringSSL_bn.h'
    sed -i -e '58i\\\n#include <inttypes.h>\n' 'Sources/#{spec.name}/crypto/x509/t_x509.c'
    sed -i -e '62i\\\n#include <inttypes.h>\n' 'Sources/#{spec.name}/crypto/evp/print.c'
    BASH
end
