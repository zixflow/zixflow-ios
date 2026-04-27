Pod::Spec.new do |spec|
  spec.name         = "CustomerIOLocation"
  spec.version      = "4.4.1-zixflow.1" # Don't modify this line - it's automatically updated
  spec.summary      = "Zixflow iOS SDK - Location Module"
  spec.homepage     = "https://github.com/zixflow/zixflow-ios"
  spec.documentation_url = 'https://zixflow.com/docs/sdk/ios/'
  spec.changelog    = "https://github.com/zixflow/zixflow-ios/blob/#{spec.version.to_s}/CHANGELOG.md"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Zixflow Team" => "support@zixflow.com" }
  spec.source       = { :git => 'https://github.com/zixflow/zixflow-ios.git', :tag => spec.version.to_s }

  spec.swift_version = '5.3'
  spec.cocoapods_version = '>= 1.11.0'

  spec.platform = :ios
  spec.ios.deployment_target = "13.0"

  path_to_source_for_module = "Sources/Location"
  spec.source_files = "#{path_to_source_for_module}/**/*{.swift}"
  spec.resource_bundle = {
    "#{spec.module_name}_Privacy" => "#{path_to_source_for_module}/Resources/PrivacyInfo.xcprivacy"
  }

  spec.module_name = "CioLocation"

  spec.dependency "CustomerIOCommon", "= #{spec.version.to_s}"
 end
