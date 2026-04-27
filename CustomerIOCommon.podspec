Pod::Spec.new do |spec|
  spec.name         = "CustomerIOCommon"
  spec.version      = "4.4.1-zixflow.1" # Don't modify this line - it's automatically updated
  spec.summary      = "Zixflow iOS SDK - Common Module"
  spec.homepage     = "https://github.com/zixflow/zixflow-ios"
  spec.documentation_url = 'https://zixflow.com/docs/sdk/ios/'
  spec.changelog    = "https://github.com/zixflow/zixflow-ios/blob/#{spec.version.to_s}/CHANGELOG.md"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Zixflow Team" => "support@zixflow.com" }
  spec.source       = { :git => 'https://github.com/zixflow/zixflow-ios.git', :tag => spec.version.to_s }

  spec.swift_version = '5.3'
  spec.cocoapods_version = '>= 1.11.0'

  spec.platform = :ios # platforms SDK supports. Leave blank and it's assumed SDK supports all platforms. 
  spec.ios.deployment_target = "13.0"
  # spec.osx.deployment_target = "10.15"
  # spec.tvos.deployment_target = '13.0'

  spec.source_files  = "Sources/Common/**/*"
  spec.exclude_files = "Sources/**/*{.md}"

  spec.module_name = "CioInternalCommon" # the `import X` name when using SDK in Swift files
end
