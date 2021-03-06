Locales['nl'] = {
    -- Name
    ['name'] = 'Tasify Anticheat',

    -- General
    ['unknown'] = 'Onbekend',
    ['fatal_error'] = 'FATALE FOUT',

    -- Resource strings
    ['callback_not_found'] = '[%s] is niet gevonden',
    ['trigger_not_found'] = '[%s] is niet gevonden',

    -- Ban strings
    ['checking'] = 'โ๏ธ Tasify Anticheat | U wordt momenteel gecontroleerd...',
    ['user_ban_reason'] = 'โ๏ธ Tasify Anticheat | Je bent verbannen van deze server ( ๐๐ฒ๐ฏ๐ฟ๐๐ถ๐ธ๐ฒ๐ฟ๐๐ป๐ฎ๐ฎ๐บ: %s )',
    ['user_kick_reason'] = 'โ๏ธ Tasify Anticheat | Je bent gekicked ( ๐ฅ๐ฒ๐ฑ๐ฒ๐ป: %s )',
    ['banlist_ban_reason'] = 'De speler heeft geprobeerd om \'%s\' aan te roepen',
    ['banlist_not_loaded_kick_player'] = 'โ๏ธ Tasify Anticheat | Onze bans zijn niet geladen, je zult een paar seconden moeten wachten. Probeer het later nog eens.',
    ['ip_not_found'] = 'โ๏ธ Tasify Anticheat | We konden je IP niet vinden',
    ['ip_blocked'] = 'โ๏ธ Tasify Anticheat | U heeft een VPN actief, schakel deze uit om de server te joinen | Verkeerd? Neem contact op met de server owners',
    ['new_identifiers_found'] = '%s, nieuwe id\'s gevonden - oorspronkelijke ban %s',
    ['failed_to_load_banlist'] = '[Tasify Anticheat] Banlijst kon niet geladen worden!',
    ['failed_to_load_tokenlist'] = '[Tasify Anticheat] Tokenlijst kon niet geladen worden!',
    ['failed_to_load_ips'] = '[Tasify Anticheat] IPs kon niet geladen worden!',
    ['failed_to_load_check'] = '[Tasify Anticheat] Controleer deze fout snel, Bans *zal niet* werken!',
    ['ban_type_godmode'] = 'Godmode gedetecteerd op speler',
    ['lua_executor_found'] = 'Lua executor gedetecteerd op speler',
    ['ban_type_injection'] = 'Speler heeft commando\'s geรฏnjecteerd (Injection)',
    ['ban_type_blacklisted_weapon'] = 'Speler had een wapen van de zwarte lijst: %s',
    ['ban_type_blacklisted_key'] = 'Speler had op een key gedrukt die op de zwarte lijst staat: %s',
    ['ban_type_hash'] = 'Speler had een hash aangepast',
    ['ban_type_esx_shared'] = 'Speler heeft een esx:getSharedObject getriggerd',
    ['ban_type_superjump'] = 'De speler had zijn spronghoogte aangepast',
    ['ban_type_client_files_blocked'] = 'Speler reageerde niet na 5 keer vragen of hij nog leefde (Client Files Blocked)',
    ['kick_type_security_token'] = 'Omdat wij geen nieuwe geheime code konden aanmaken',
    ['kick_type_security_mismatch'] = 'Omdat uw geheime code niet overeen komt',

    -- Commands
    ['command'] = 'commando',
    ['available_commands'] = 'Beschikbare commando\'s',
    ['command_reload'] = 'Herladen van de lijst met bans',
    ['ips_command_reload'] = 'Herladen van de lijst met toegestaande IPs',
    ['ips_command_add'] = 'Voeg IP toe aan de lijst van toegestaande IPs',
    ['command_help'] = 'Geeft alle anticheat commando\'s',
    ['command_total'] = 'Geeft het aantal bans in de lijst',
    ['total_bans'] = 'We hebben momenteel %s ban(s) in onze lijst staan',
    ['command_not_found'] = 'bestaat niet',
    ['banlist_reloaded'] = 'Alle bans in anticheat zijn herladen van banlist.json.',
    ['ips_reloaded'] = 'Alle IP\'s zijn herladen van ignore-ips.json.',
    ['ip_added'] = 'IP: %s, was toegevoegd aan de toegestaande lijst.',
    ['ip_invalid'] = 'IP: %s, is geen geldig IP, het moet er zo uitzien, bijvoorbeeld: 0.0.0.0',
    ['not_allowed'] = 'Je hebt geen toestemming om %s uit te voeren.',

    -- Discord
    ['discord_title'] = '[Tasify Anticheat] Heeft een speler verbannen',
    ['discord_description'] = '**Naam:** %s\n **Reden:** %s\n **Identifiers:**\n %s'
}
