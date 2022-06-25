import Foundation

/// Persistent store interface
protocol PersistentStore {
    
    /// Save a value based on a key
    func save<ValueType>(key: String, value: ValueType)
    
    /// Read a value based on a key
    func read<ValueType>(key: String) -> ValueType?
    
    /// Delete a value based on a key
    func delete(key: String)
    
}
