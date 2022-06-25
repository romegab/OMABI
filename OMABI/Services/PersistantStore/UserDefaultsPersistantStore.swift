import Foundation

final class UserDefaultsPersistantStore: PersistentStore {

    func save<ValueType>(key: String, value: ValueType) {
        UserDefaults.standard.set(value, forKey: key)
#if targetEnvironment(simulator)
        UserDefaults.standard.synchronize() // only needed on a simulator
#endif
    }
    
    func read<ValueType>(key: String) -> ValueType? {
        UserDefaults.standard.value(forKey: key) as? ValueType
    }
    
    func delete(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
    
}
