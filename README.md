# RCPreferences
Swift typesafe wrapper over UserDefaults to help you build user preferences in your app

#Usage
Define one or multiple sets of settings you wish to have in the app and implement RCPreferencesProtocol (defaultValue method)

	enum UserPreferences: String, RCPreferencesProtocol {
	    case option1 = "option1"
	    case option2 = "option2"
	    case option3 = "option3"
	    func defaultValue() -> Any {
	        switch self {
	        case .option1: return false
	        case .option2: return 0
	        case .option3: return "abc"
	        }
	    }
	}
	
#Writing a setting

	let settings = RCPreferences<UserPreferences>()
	settings.set(true, forKey: .option1)
	
#Reading a setting

	let settings = RCPreferences<UserPreferences>()
	let option1 = settings.bool(.option1)
	// or
	let option1 = settings.get(.option1) as! Bool
