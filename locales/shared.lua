Locales = Locales or {} 

function LoadLocale(locale)
    if Locales[locale] then
        return Locales[locale]
    else
        print('Locale not found: ' .. locale)
        return Locales['en']  
    end
end
