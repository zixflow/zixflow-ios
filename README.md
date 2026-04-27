<p align=center>
  <a href="https://zixflow.com">
    <img src="https://avatars.githubusercontent.com/u/1152079?s=200&v=4" height="60">
  </a>
</p>

![min swift version is 5.3](https://img.shields.io/badge/min%20Swift%20version-5.3-orange)
![min ios version is 13](https://img.shields.io/badge/min%20iOS%20version-13-blue)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-4baaaa.svg)](code_of_conduct.md)

# Zixflow iOS SDK

This is the Zixflow iOS SDK, built on the Customer.io platform.

This SDK is a customized fork of the Customer.io iOS SDK, optimized for use with the Zixflow backend. For Customer.io's original SDK documentation, visit [https://customer.io/docs/sdk/ios](https://customer.io/docs/sdk/ios/). 

**The SDK has been tested on iOS devices**. It might work on other Apple devices—tvOS, and watchOS—but we have not officially tested, nor do we officially support, non-iOS devices.

### Migrating from an older SDK version? 

Please follow the relevant migration guide for your current SDK version in our [migration docs](https://customer.io/docs/sdk/ios/migrate-upgrade/).

## Summary

To get started, you need to install and initialize the relevant SDK packages in your project.

The SDK is separated into packages to minimize impact on your app's size. You should only install the packages that you need for your project.

| Package | Required? | Description |
| :-- | :---: | :--- |
| Tracking | Yes | Identify people/devices and send events to Zixflow (to trigger campaigns, track metrics, etc). |
| MessagingPushAPN | No | Push and rich push notifications using Apple's Push Notification service (APNs). |
| MessagingPushFCM | No | Push and rich push notifications using Firebase Cloud Messaging (FCM). |

## visionOS Support

This SDK supports visionOS. There is a handy [sample app](Apps/VisionOS/README.md) that demonstrates how to use the SDK. You can find the sample app in the `Apps/VisionOS` directory.

The SDK has only been tested with visionOS using Swift Package Manager. If you use CocoaPods, everything might work, but it's not officially guaranteed. 

### visionOS Limitations

While our SDK supports visionOS, there are some limitations:
* We don't support the `MessagingPushFCM` package for visionOS. You must send push notifications over APNS.
* We don't support in-app messaging (the `MessagingInApp` package) for visionOS.

# Getting started

See [ZIXFLOW_SETUP.md](ZIXFLOW_SETUP.md) for Zixflow-specific setup instructions.

For general SDK usage, refer to the original Customer.io SDK documentation at [https://customer.io/docs/sdk/ios/](https://customer.io/docs/sdk/ios/)

# Contributing

Thanks for taking an interest in this project! Contributions are welcome. Check out [the development instructions](docs/dev-notes/DEVELOPMENT.md) to get your environment set up and start contributing.

> **Note**: We value an open, welcoming, diverse, inclusive, and healthy community for this project. We expect all  contributors to follow our [code of conduct](CODE_OF_CONDUCT.md). 

# License

[MIT](LICENSE)
