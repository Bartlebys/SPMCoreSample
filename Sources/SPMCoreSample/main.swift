
import Foundation
#if os(iOS)
    import BartlebysCoreiOS
#elseif os(macOS)
    import BartlebysCore
#elseif os(Linux)
    import BartlebysCore
#endif

// @todo implement a full DataPoint sample
open class  MyDataPoint: DataPoint {

    public required init(credentials: Credentials) {
        super.init(credentials: credentials)
        self._loadCollections()
    }
    override open func integrateResponse<T>(_ response: Response<T>) where T : Decodable, T : Encodable {
    }
    private func _loadCollections() {
    }
 }


// Create a data Data Point with specific Credentials.
let credentials = Credentials(username: "NoBody", password: "NoBody")
let dataPoint = MyDataPoint(credentials: credentials)
dataPoint.authenticationMethod = .basicHTTPAuth
dataPoint.scheme = Schemes.https
dataPoint.host = "demo.bartlebys.org"
dataPoint.apiBasePath = "www/api/v1/"

// Create a new session
let session = Session(sessionDelegate: dataPoint)


