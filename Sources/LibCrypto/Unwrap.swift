import Foundation
import Crypto

public extension Data {
    /// Initializes a new `Data` object with content extracted from SymmetricKey object
    ///
    /// - Parameter symmetricKey: `SymmetricKey` object
    /// - Returns: `Data` object
    init(symmetricKey: SymmetricKey) {
        self.init()
        self = symmetricKey.withUnsafeBytes {
            return Data(Array($0))
        }
    }
    
    /// Initializes a new `Data` object with content extracted from SharedSecret object
    ///
    /// - Parameter sharedSecret: `SharedSecret` object
    /// - Returns: `Data` object
    init(sharedSecret: SharedSecret) {
        self.init()
        self = sharedSecret.withUnsafeBytes {
            return Data(Array($0))
        }
    }
}
