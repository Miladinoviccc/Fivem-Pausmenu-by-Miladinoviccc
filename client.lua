function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

local config = {
    ["TITLE"] = "~b~Ime RP servera - ~w~ discord:",
    ["SUBTITLE"] = "~db~|| ~w~ovde napisite sta zelite da vam pise u subtitles (by MILADINOVICCC) ~db~|| ~w~ovde napisite sta zelite da vam pise u subtitles (by MILADINOVICCC) ~g~ovde napisite sta zelite da vam pise u subtitles (by MILADINOVICCC)  ~b~ovde napisite sta zelite da vam pise u subtitles (by MILADINOVICCC) , ~o~ovde napisite sta zelite da vam pise u subtitles (by MILADINOVICCC) ~db~|| ~w~ovde napisite sta zelite da vam pise u subtitles (by MILADINOVICCC)~db~||",
    ["MAP"] = "Los Santos",
    ["STATUS"] = "Stats",
    ["GAME"] = "Igra",
    ["INFO"] = "Informacije",
    ["SETTINGS"] = "Postavke",
    ["R*EDITOR"] = "Rockstar Editor"
}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunction()
        N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
        PushScaleformMovieFunctionParameterString(config["TITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PushScaleformMovieFunctionParameterString(config["SUBTITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunctionVoid()
    end
end)

Citizen.CreateThread(function()
    AddTextEntry('PM_SCR_MAP', config["MAP"])
    AddTextEntry('PM_SCR_STA', config["STATUS"])
    AddTextEntry('PM_SCR_GAM', config["GAME"])
    AddTextEntry('PM_SCR_INF', config["INFO"])
    AddTextEntry('PM_SCR_SET', config["SETTINGS"])
    AddTextEntry('PM_SCR_RPL', config["R*EDITOR"])
end)
