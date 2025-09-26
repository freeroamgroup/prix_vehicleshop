Config = {}

Config.PDMPed = {
    model = `s_m_m_highsec_01`,
    coords = vec4(-56.95, -1096.67, 26.42, 70.0),
}

Config.Preview = {
    spawn = vec4(-47.2, -1094.5, 26.42, 160.0),
    cameraOffset = vec3(0.0, 4.5, 1.2),
    autoRotate = true,
}

Config.TestDrive = {
    enabled = true,
    duration = 60,
    spawn = vec4(-33.8, -1102.2, 26.4, 160.0),
    returnRadius = 60.0,
}

Config.Payment = {
    allowCash = true,
    allowBank = true,
    requireContractItem = false,
    contractItem = 'car_contract',
}

Config.Garage = {
    usePrixGarage = true,
    exportResource = 'prix_garage',
}

Config.Data = {
    preferSQL = false,
}

Config.Categories = {
    { name = 'sedans', label = 'SEDANs' },
    { name = 'suvs', label = 'SUVs' },
    { name = 'offroads', label = 'OFFROADs' },
    { name = 'supers', label = 'SUPERs' },
    { name = 'sports', label = 'SPORTs' },
    { name = 'hypersports', label = 'HYPERSPORTs' },
    { name = 'vans', label = 'VANs' },
    { name = 'motos', label = 'MOTOs' },
    { name = 'cycles', label = 'CYCLEs' },
}

Config.Vehicles = {
    -- SEDANs
    { category = 'sedans', model = 'asea', label = 'Declasse Asea', price = 25000 },
    { category = 'sedans', model = 'intruder', label = 'Karin Intruder', price = 40000 },
    { category = 'sedans', model = 'premier', label = 'Declasse Premier', price = 55000 },
    { category = 'sedans', model = 'primo', label = 'Albany Primo', price = 60000 },
    { category = 'sedans', model = 'tailgater', label = 'Obey Tailgater', price = 125000 },
    { category = 'sedans', model = 'fugitive', label = 'Cheval Fugitive', price = 150000 },
    { category = 'sedans', model = 'schafter2', label = 'Benefactor Schafter', price = 190000 },
    { category = 'sedans', model = 'superd', label = 'Enus Super Diamond', price = 480000 },
    { category = 'sedans', model = 'cognoscenti', label = 'Enus Cognoscenti', price = 520000 },
    { category = 'sedans', model = 'stanier', label = 'Vapid Stanier', price = 30000 },
    { category = 'sedans', model = 'emperor', label = 'Albany Emperor', price = 35000 },
    { category = 'sedans', model = 'stratum', label = 'Zirconium Stratum', price = 45000 },
    { category = 'sedans', model = 'washington', label = 'Albany Washington', price = 60000 },
    { category = 'sedans', model = 'regina', label = 'Dundreary Regina', price = 70000 },
    { category = 'sedans', model = 'surge', label = 'Cheval Surge', price = 125000 },
    { category = 'sedans', model = 'stretch', label = 'Dundreary Stretch', price = 280000 },
    { category = 'sedans', model = 'cognoscenti2', label = 'Enus Cognoscenti Armored (civil)', price = 550000 },

    -- SUVs
    { category = 'suvs', model = 'fq2', label = 'Fathom FQ 2', price = 150000 },
    { category = 'suvs', model = 'rocoto', label = 'Obey Rocoto', price = 200000 },
    { category = 'suvs', model = 'seminole', label = 'Canis Seminole', price = 70000 },
    { category = 'suvs', model = 'baller2', label = 'Gallivanter Baller', price = 220000 },
    { category = 'suvs', model = 'baller3', label = 'Gallivanter Baller LE', price = 320000 },
    { category = 'suvs', model = 'contender', label = 'Vapid Contender', price = 400000 },
    { category = 'suvs', model = 'granger', label = 'Declasse Granger', price = 250000 },
    { category = 'suvs', model = 'landstalker2', label = 'Dundreary Landstalker XL', price = 300000 },
    { category = 'suvs', model = 'gresley', label = 'Bravado Gresley', price = 120000 },
    { category = 'suvs', model = 'cavalcade', label = 'Albany Cavalcade', price = 140000 },
    { category = 'suvs', model = 'cavalcade2', label = 'Albany Cavalcade (2015)', price = 210000 },
    { category = 'suvs', model = 'patriot', label = 'Mammoth Patriot', price = 250000 },
    { category = 'suvs', model = 'patriot2', label = 'Mammoth Patriot Stretch', price = 400000 },
    { category = 'suvs', model = 'toros', label = 'Pegassi Toros', price = 320000 },
    { category = 'suvs', model = 'rebla', label = 'Ubermacht Rebla GTS', price = 450000 },

    -- OFFROADs
    { category = 'offroads', model = 'bodhi2', label = 'Canis Bodhi', price = 25000 },
    { category = 'offroads', model = 'bfinjection', label = 'BF Injection', price = 30000 },
    { category = 'offroads', model = 'rebel2', label = 'Karin Rebel', price = 100000 },
    { category = 'offroads', model = 'sandking', label = 'Vapid Sandking XL', price = 140000 },
    { category = 'offroads', model = 'brawler', label = 'Coil Brawler', price = 190000 },
    { category = 'offroads', model = 'dubsta3', label = 'Benefactor Dubsta 6x6', price = 350000 },
    { category = 'offroads', model = 'mesa', label = 'Canis Mesa', price = 100000 },
    { category = 'offroads', model = 'mesa3', label = 'Canis Mesa Trail', price = 200000 },
    { category = 'offroads', model = 'rancherxl', label = 'Declasse Rancher XL', price = 180000 },
    { category = 'offroads', model = 'kamacho', label = 'Canis Kamacho', price = 300000 },
    { category = 'offroads', model = 'freecrawler', label = 'Canis Freecrawler', price = 330000 },
    { category = 'offroads', model = 'everon', label = 'Karin Everon', price = 340000 },
    { category = 'offroads', model = 'hellion', label = 'Annis Hellion', price = 280000 },


    -- SUPERs
    { category = 'supers', model = 'adder', label = 'Truffade Adder', price = 650000 },
    { category = 'supers', model = 'bullet', label = 'Vapid Bullet', price = 200000 },
    { category = 'supers', model = 'cheetah', label = 'Grotti Cheetah', price = 300000 },
    { category = 'supers', model = 'entityxf', label = 'Overflod Entity XF', price = 450000 },
    { category = 'supers', model = 'infernus', label = 'Pegassi Infernus', price = 320000 },
    { category = 'supers', model = 'turismor', label = 'Grotti Turismo R', price = 500000 },
    { category = 'supers', model = 't20', label = 'Progen T20', price = 600000 },
    { category = 'supers', model = 'pfister811', label = 'Pfister 811', price = 550000 },
    { category = 'supers', model = 'tempesta', label = 'Pegassi Tempesta', price = 480000 },
    { category = 'supers', model = 'autarch', label = 'Överflöd Autarch', price = 620000 },
    { category = 'supers', model = 'nero', label = 'Truffade Nero', price = 580000 },
    { category = 'supers', model = 'tyrus', label = 'Progen Tyrus', price = 500000 },


    -- SPORTS
    { category = 'sports', model = 'sultan', label = 'Karin Sultan', price = 140000 },
    { category = 'sports', model = 'fusilade', label = 'Schyster Fusilade', price = 180000 },
    { category = 'sports', model = 'buffalo', label = 'Bravado Buffalo', price = 200000 },
    { category = 'sports', model = 'buffalo2', label = 'Bravado Buffalo S', price = 250000 },
    { category = 'sports', model = 'jester', label = 'Dinka Jester', price = 280000 },
    { category = 'sports', model = 'massacro', label = 'Dewbauchee Massacro', price = 290000 },
    { category = 'sports', model = 'penumbra2', label = 'Maibatsu Penumbra FF', price = 200000 },
    { category = 'sports', model = 'comet2', label = 'Pfister Comet', price = 200000 },
    { category = 'sports', model = 'comet3', label = 'Pfister Comet Retro Custom', price = 270000 },
    { category = 'sports', model = 'feltzer2', label = 'Benefactor Feltzer', price = 240000 },
    { category = 'sports', model = 'coquette', label = 'Invetero Coquette', price = 260000 },
    { category = 'sports', model = 'ninef', label = 'Obey 9F', price = 280000 },
    { category = 'sports', model = 'ninef2', label = 'Obey 9F Cabrio', price = 290000 },
    { category = 'sports', model = 'lynx', label = 'Ocelot Lynx', price = 300000 },
    { category = 'sports', model = 'drafter', label = 'Obey 8F Drafter', price = 310000 },


    -- HYPERSPORTs
    { category = 'hypersports', model = 'zentorno', label = 'Pegassi Zentorno', price = 900000 },
    { category = 'hypersports', model = 'prototipo', label = 'Grotti X80 Proto', price = 1200000 },
    { category = 'hypersports', model = 'italigtb', label = 'Progen Itali GTB', price = 700000 },
    { category = 'hypersports', model = 'osiris', label = 'Pegassi Osiris', price = 800000 },
    { category = 'hypersports', model = 'fmj', label = 'Vapid FMJ', price = 950000 },
    { category = 'hypersports', model = 'krieger', label = 'Benefactor Krieger', price = 1250000 },
    { category = 'hypersports', model = 'emerus', label = 'Progen Emerus', price = 1350000 },
    { category = 'hypersports', model = 'tezeract', label = 'Pegassi Tezeract', price = 1450000 },
    { category = 'hypersports', model = 'thrax', label = 'Truffade Thrax', price = 1100000 },
    { category = 'hypersports', model = 'deveste', label = 'Principe Deveste Eight', price = 1300000 },


    -- VANs
    { category = 'vans', model = 'minivan', label = 'Vapid Minivan', price = 60000 },
    { category = 'vans', model = 'bobcatxl', label = 'Vapid Bobcat XL', price = 90000 },
    { category = 'vans', model = 'rumpo', label = 'Bravado Rumpo', price = 120000 },
    { category = 'vans', model = 'surfer', label = 'BF Surfer', price = 70000 },
    { category = 'vans', model = 'youga', label = 'Bravado Youga', price = 80000 },
    { category = 'vans', model = 'paradise', label = 'Bravado Paradise', price = 100000 },
    { category = 'vans', model = 'pony', label = 'Brute Pony', price = 60000 },
    { category = 'vans', model = 'pony2', label = 'Brute Pony 2', price = 70000 },
    { category = 'vans', model = 'speedo', label = 'Vapid Speedo', price = 80000 },
    { category = 'vans', model = 'speedo4', label = 'Vapid Speedo Custom', price = 120000 },
    { category = 'vans', model = 'gburrito2', label = 'Declasse Burrito Custom', price = 100000 },
    { category = 'vans', model = 'journey', label = 'Zirconium Journey', price = 75000 },


    -- MOTOs
    { category = 'motos', model = 'pcj', label = 'Shitzu PCJ 600', price = 60000 },
    { category = 'motos', model = 'faggio2', label = 'Pegassi Faggio', price = 40000 },
    { category = 'motos', model = 'sanchez', label = 'Maibatsu Sanchez', price = 110000 },
    { category = 'motos', model = 'double', label = 'Dinka Double-T', price = 150000 },
    { category = 'motos', model = 'bati', label = 'Pegassi Bati 801', price = 180000 },
    { category = 'motos', model = 'hakuchou', label = 'Shitzu Hakuchou', price = 220000 },
    { category = 'motos', model = 'carbonrs', label = 'Nagasaki Carbon RS', price = 250000 },
    { category = 'motos', model = 'manchez', label = 'Maibatsu Manchez', price = 120000 },
    { category = 'motos', model = 'enduro', label = 'Dinka Enduro', price = 100000 },
    { category = 'motos', model = 'lectro', label = 'Principe Lectro', price = 180000 },
    { category = 'motos', model = 'thrust', label = 'Dinka Thrust', price = 160000 },
    { category = 'motos', model = 'cliffhanger', label = 'Western Cliffhanger', price = 200000 },
    { category = 'motos', model = 'vindicator', label = 'Dinka Vindicator', price = 220000 },
    { category = 'motos', model = 'shotaro', label = 'Nagasaki Shotaro', price = 280000 },


    -- CYCLEs
    { category = 'cycles', model = 'bmx', label = 'BMX', price = 2000 },
    { category = 'cycles', model = 'cruiser', label = 'Cruiser', price = 3000 },
    { category = 'cycles', model = 'fixter', label = 'Fixter', price = 3500 },
    { category = 'cycles', model = 'scorcher', label = 'Scorcher', price = 8000 },
    { category = 'cycles', model = 'tribike', label = 'Tri-Cycles Race Bike', price = 12000 },
    { category = 'cycles', model = 'tribike2', label = 'Whippet Race Bike', price = 14000 },
    { category = 'cycles', model = 'tribike3', label = 'Endurex Race Bike', price = 15000 },
}

Config.Locale = 'en'
