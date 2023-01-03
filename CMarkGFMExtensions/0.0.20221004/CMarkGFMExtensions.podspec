Pod::Spec.new do |spec|
  spec.name = "CMarkGFMExtensions"
  spec.version = "0.0.20221004"

  spec.summary = "CommonMark parsing and rendering library and program in C."
  spec.homepage = "https://github.com/apple/swift-cmark"
  spec.author = "Apple Inc."
  spec.license = { :type => "BSD 2-Clause", :file => "COPYING" }

  spec.module_name = "cmark_gfm_extensions"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_version = "5.3"

  spec.source = { :git => "https://github.com/apple/swift-cmark.git", :tag => "swift-DEVELOPMENT-SNAPSHOT-2022-10-04-a" }
  spec.source_files = "extensions/**/*.{h,c}"
  spec.public_header_files = "extensions/include/*.h"
  spec.prepare_command = <<-BASH
    sed -i -e 's/#include <parser.h>/#include "parser.h"/' extensions/*.c
    sed -i -e 's/#include <render.h>/#include "render.h"/' extensions/*.c
    sed -i -e 's/#include <html.h>/#include "html.h"/' extensions/*.c
    sed -i -e 's/#include <utf8.h>/#include "utf8.h"/' extensions/*.c
    sed -i -e 's/#include <cmark-gfm-extension_api.h>/#include "cmark-gfm-extension_api.h"/' extensions/*.c
    sed -i -e 's/#include <inlines.h>/#include "inlines.h"/' extensions/*.c
    sed -i -e 's/#include <references.h>/#include "references.h"/' extensions/*.c
    sed -i -e 's/#include "cmark-gfm-extension_api.h"/#include <cmark_gfm\\/cmark-gfm-extension_api.h>/' 'extensions/include/cmark-gfm-core-extensions.h'
    sed -i -e 's/#include "cmark-gfm_config.h"/#include <cmark_gfm\\/cmark-gfm_config.h>/' 'extensions/include/cmark-gfm-core-extensions.h'
    BASH

  spec.dependency "CMarkGFM", "#{spec.version}"
end
