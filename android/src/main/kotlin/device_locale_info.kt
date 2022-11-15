import java.util.*

fun getDeviceLocaleInfo(): Map<String, String> {
    val language = Locale.getDefault().getDisplayLanguage()
    val country = Locale.getDefault().getDisplayCountry()

    return mapOf("language" to language, "country" to country)
}
