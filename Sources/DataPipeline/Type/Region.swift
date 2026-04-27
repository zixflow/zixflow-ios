import CioInternalCommon

// These URLs are for requesting CDP settings from the Zixflow API. Zixflow uses a single global endpoint.
extension Region {
    var apiHost: String {
        switch self {
        case .US: return "dev-events.zixflow.in/v1"
        case .EU: return "dev-events.zixflow.in/v1"
        }
    }

    var cdnHost: String {
        switch self {
        case .US: return "dev-events.zixflow.in/v1"
        case .EU: return "dev-events.zixflow.in/v1"
        }
    }
}
