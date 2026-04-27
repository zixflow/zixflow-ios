# Cocoapods projects that provide multiple SDKs have a common naming pattern for installing pods:
# CustomerIO/DataPipelines
# This podspec allows that. It publishes aliases for the cocoapods we have already published. 
# Example: CustomerIO/DataPipelines is an alias for the published pod CustomerIODataPipelines

Pod::Spec.new do |spec|
  spec.name         = "CustomerIO"
  spec.version      = "4.4.1-zixflow.1" # Don't modify this line - it's automatically updated
  spec.summary      = "Zixflow iOS SDK (built on Customer.io platform)"
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

  spec.default_subspec = "DataPipelines"

  # Using `= X.X.X` is required for pre-release versions of an SDK (alpha, beta)
  # In the future, we can use: `~> X.X.X` which matches by semantic version rules.

  spec.subspec "MessagingPush" do |ss|
    ss.dependency "CustomerIOMessagingPush", "= #{spec.version.to_s}"
  end
  
  spec.subspec "DataPipelines" do |ss|
    ss.dependency "CustomerIODataPipelines", "= #{spec.version.to_s}"
  end
  
  spec.subspec "Migration" do |ss|
    ss.dependency "CustomerIOTrackingMigration", "= #{spec.version.to_s}"
  end

  spec.subspec "MessagingPushAPN" do |ss|
    ss.dependency "CustomerIOMessagingPushAPN", "= #{spec.version.to_s}"
  end

  spec.subspec "MessagingPushFCM" do |ss|
    ss.dependency "CustomerIOMessagingPushFCM", "= #{spec.version.to_s}"
  end

  spec.subspec "MessagingInApp" do |ss|
    ss.dependency "CustomerIOMessagingInApp", "= #{spec.version.to_s}"
  end

  spec.subspec "Location" do |ss|
    ss.dependency "CustomerIOLocation", "= #{spec.version.to_s}"
  end
end
