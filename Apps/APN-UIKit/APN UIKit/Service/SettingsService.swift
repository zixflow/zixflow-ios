// sourcery: InjectRegisterShared = "SettingsService"
class SettingsService {
    private let storage: Storage

    init(storage: Storage) {
        self.storage = storage
        setDefaultSettings()
    }

    func setDefaultSettings(force: Bool = false) {
        guard force || storage.didSetDefaults == false else { return }

        storage.didSetDefaults = true
        storage.settings = Settings(
            dataPipelines: DataPipelinesSettings(
                cdpApiKey: BuildEnvironment.Zixflow.cdpApiKey,
                siteId: BuildEnvironment.Zixflow.siteId,
                region: .US,
                autoTrackDeviceAttributes: true,
                autoTrackUIKitScreenViews: true,
                trackApplicationLifecycleEvents: true,
                screenViewUse: .All,
                logLevel: .Debug
            ),
            messaging: MessagingPushAPNSettings(
                autoFetchDeviceToken: true,
                autoTrackPushEvents: true,
                showPushAppInForeground: true
            ),
            inApp: MessagingInAppSettings(
                siteId: BuildEnvironment.Zixflow.siteId,
                region: .US
            ),
            internalSettings: InternalSettings(
                cdnHost: "dev-events.zixflow.in/v1",
                apiHost: "dev-events.zixflow.in/v1",
                inAppEnvironment: .Production,
                testMode: true
            )
        )
    }
}
