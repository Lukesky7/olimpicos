
####Cargamos archivo previamente descargado de kagle

athlete_events <- read_csv("athlete_events.csv")


####filtramos para trabajar solo datos de natación
nat <- athlete_events %>% filter(
  Sport %in% c("Swimming"))

nat <- as.data.frame(nat)

####
Variables a crear--> Continente,Ciudad,temperatura del dia, pileta cerrada o al aire libre.

####https://worldpopulationreview.com/country-rankings/list-of-countries-by-continent
####Utilizamos esta página como referencia para agrupar y crear variable 'continente'

Europa <- c("Finland","Netherlands","Hungary","Sweden",
            "Soviet Union","Great Britain","France",
            "Portugal","Czechoslovakia","Greece",
            "Austria","Monaco","Ukraine","Belgium",
            "Romania","Malta","Iceland","West Germany",
            "Russia","Spain","Italy","Poland","Bulgaria",
            "Estonia","Denmark","Lithuania","Germany",
            "East Germany","Yugoslavia","Luxembourg",
            "Cyprus","Andorra","Switzerland","Turkey",
            "Moldova","Norway","Slovenia","Croatia",
            "Ireland","Belarus","Czech Republic",
            "Serbia and Montenegro","Macedonia",
            "Albania","San Marino","Serbia","Bosnia and Herzegovina",
            "Latvia","Slovakia","Liechtenstein",
            "Montenegro","Kosovo")

Latinoamerica <- c("Argentina","Paraguay","Venezuela","Suriname",
                   "Brazil","Peru","Colombia","Uruguay",
                   "Ecuador","Chile","Bolivia","Guyana")

Asia <- c("Azerbaijan","Iraq","Palestine","Bahrain","Kuwait",
          "Philippines","United Arab Emirates","Malaysia",
          "Sri Lanka","Jordan","Qatar","Uzbekistan",
          "Pakistan","China","Bangladesh","Yemen",
          "Oman","Lebanon","Saudi Arabia","Kyrgyzstan",
          "Israel","Japan","South Korea","Mongolia",
          "Singapore","Turkmenistan","Hong Kong",
          "Armenia","India","Kazakhstan","Syria",
          "Indonesia","Georgia","Iran","Laos",
          "Thailand","Cambodia","Tajikistan",
          "Vietnam","Nepal","Maldives","Malaya",
          "Tonga","South Vietnam","Brunei",
          "Myanmar")

Africa <- c("Egypt","Sudan","South Africa","Djibouti",
            "Mauritius","Seychelles","Niger","Algeria",
            "Rwanda","Angola","Gabon","Mozambique",
            "Madagascar","Cote d'Ivoire","Zimbabwe",
            "Comoros","Libya","Uganda","Kenya",
            "Congo","Nigeria","Guinea","Equatorial Guinea",
            "Morocco","Tunisia","Benin","Burundi",
            "Cameroon","Malawi","Senegal","Sierra Leone",
            "Mali","Namibia","Swaziland","Zambia",
            "Ghana","Ethiopia","Tanzania","Gambia",
            "Botswana","Congo (Kinshasa)","Togo",
            "Central African Republic","Burkina Faso",
            "Lesotho")

'America del Norte' <- c("Canada","Mexico","El Salvador","United States",
                         "New York Athletic Club #2-4","Dominica",
                         "Costa Rica","Bermuda",
                         "Saint Vincent and the Grenadines",
                         "United States Virgin Islands",
                         "Barbados","Puerto Rico","Nicaragua",
                         "Grenada","Guatemala","Jamaica","Saint Lucia",
                         "Dominican Republic","Honduras","Cuba",
                         "Aruba","Panama","Trinidad and Tobago",
                         "Bahamas","Cayman Islands",
                         "New York Athletic Club #1-1",
                         "Haiti","Antigua and Barbuda",
                         "British Virgin Islands")

Oceania <- c("Australia","Samoa","New Zealand",
             "Federated States of Micronesia",
             "Australasia","Fiji","Guam","Cook Islands",
             "Papua New Guinea","Palau","American Samoa",
             "Marshall Islands")




natR <- nat %>%
  mutate(Continente = case_when(Team %in% Europa ~ 'Europa',
                                Team %in% Latinoamerica ~ 'Latinoamerica',
                                Team %in% Asia ~ 'Asia',
                                Team %in% Africa ~ 'Africa',
                                Team %in% `America del Norte` ~ 'America del Norte',
                                Team %in% Oceania ~ 'Oceania'))



