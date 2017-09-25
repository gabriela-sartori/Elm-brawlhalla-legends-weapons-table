module Model exposing (..)


type Weapon
    = Hammer
    | Rocket
    | Sword
    | Blasters
    | Spear
    | Katars
    | Axe
    | Bow
    | Gauntlets
    | Scythe
    | Cannon


type alias Model =
    { legends : List LegendInfo }


type alias LegendInfo =
    { legend : Legend
    , str : Int
    , dex : Int
    , def : Int
    , spd : Int
    , weapon : Weapon
    , weapon2 : Weapon
    }


type Legend
    = Unknown
    | Bodvar
    | Cassidy
    | Orion
    | Vraxx
    | Gnash
    | Nai
    | Hattori
    | Roland
    | Scarlet
    | Thatch
    | Ada
    | Sentinel
    | Lucien
    | Teros
    | Brynn
    | Asuri
    | Barraza
    | Ember
    | Azoth
    | Koji
    | Ulgrim
    | Diana
    | Jhala
    | Kor
    | Shang
    | Val
    | Ragnir
    | Cross
    | Mirage
    | Nix
    | Mordex
    | Yumiko
    | Artemis
    | Caspian


legends : List LegendInfo
legends =
    [ LegendInfo Bodvar 6 6 5 5 Hammer Sword
    , LegendInfo Cassidy 6 8 4 4 Blasters Hammer
    , LegendInfo Orion 4 6 6 6 Rocket Spear
    , LegendInfo Vraxx 4 8 4 6 Rocket Blasters
    , LegendInfo Gnash 0 0 0 0 Hammer Spear
    , LegendInfo Nai 0 0 0 0 Spear Katars
    , LegendInfo Hattori 0 0 0 0 Sword Spear
    , LegendInfo Roland 0 0 0 0 Rocket Sword
    , LegendInfo Scarlet 0 0 0 0 Hammer Rocket
    , LegendInfo Thatch 0 0 0 0 Sword Blasters
    , LegendInfo Ada 0 0 0 0 Blasters Spear
    , LegendInfo Sentinel 0 0 0 0 Hammer Katars
    , LegendInfo Lucien 0 0 0 0 Katars Blasters
    , LegendInfo Teros 0 0 0 0 Axe Hammer
    , LegendInfo Brynn 0 0 0 0 Axe Spear
    , LegendInfo Asuri 0 0 0 0 Katars Sword
    , LegendInfo Barraza 0 0 0 0 Axe Blasters
    , LegendInfo Ember 0 0 0 0 Bow Katars
    , LegendInfo Azoth 0 0 0 0 Bow Axe
    , LegendInfo Koji 0 0 0 0 Bow Sword
    , LegendInfo Ulgrim 0 0 0 0 Axe Rocket
    , LegendInfo Diana 0 0 0 0 Bow Blasters
    , LegendInfo Jhala 0 0 0 0 Axe Sword
    , LegendInfo Kor 0 0 0 0 Gauntlets Hammer
    , LegendInfo Shang 0 0 0 0 Gauntlets Spear
    , LegendInfo Val 0 0 0 0 Gauntlets Sword
    , LegendInfo Ragnir 0 0 0 0 Katars Axe
    , LegendInfo Cross 0 0 0 0 Blasters Gauntlets
    , LegendInfo Mirage 0 0 0 0 Scythe Spear
    , LegendInfo Nix 0 0 0 0 Scythe Blasters
    , LegendInfo Mordex 0 0 0 0 Scythe Gauntlets
    , LegendInfo Yumiko 0 0 0 0 Bow Hammer
    , LegendInfo Artemis 0 0 0 0 Rocket Scythe
    , LegendInfo Caspian 0 0 0 0 Gauntlets Katars
    ]


{-| Returns a list with weapons and how many legends use it
-}
weapons : List ( Weapon, Int )
weapons =
    [ Hammer, Rocket, Sword, Blasters, Spear, Katars, Axe, Bow, Gauntlets, Scythe, Cannon ]
        |> List.map (\w -> ( w, getLegendsThatUse w ))


model : Model
model =
    { legends = legends }


weaponImg : Weapon -> String
weaponImg weapon =
    case weapon of
        Hammer ->
            "http://wiki.brawlhalla.com/images/d/de/HammerIcon.png"

        Rocket ->
            "http://wiki.brawlhalla.com/images/2/2a/LanceIcon.png"

        Sword ->
            "http://wiki.brawlhalla.com/images/9/95/SwordIcon.png"

        Blasters ->
            "http://wiki.brawlhalla.com/images/a/a0/BlastersIcon.png"

        Spear ->
            "http://wiki.brawlhalla.com/images/a/a5/SpearIcon.png"

        Katars ->
            "http://wiki.brawlhalla.com/images/3/3c/KatarsIcon.png"

        Axe ->
            "http://wiki.brawlhalla.com/images/5/5d/AxeIcon.png"

        Bow ->
            "http://wiki.brawlhalla.com/images/2/23/BowIcon.png"

        Gauntlets ->
            "http://wiki.brawlhalla.com/images/d/d8/GauntletsIcon.png"

        Scythe ->
            "http://wiki.brawlhalla.com/images/6/64/ScytheIcon.png"

        Cannon ->
            "https://i.ytimg.com/vi/s5_MOeHsMQM/maxresdefault.jpg"


legendImg : Maybe Legend -> String
legendImg legend =
    case Maybe.withDefault Unknown legend of
        Unknown ->
            ""

        Bodvar ->
            "http://wiki.brawlhalla.com/images/thumb/5/58/Bodvar_Avatar.png/200px-Bodvar_Avatar.png"

        Cassidy ->
            "http://wiki.brawlhalla.com/images/thumb/f/f5/Cassidy_Avatar.png/200px-Cassidy_Avatar.png"

        Orion ->
            "http://wiki.brawlhalla.com/images/thumb/8/82/Orion_Avatar.png/200px-Orion_Avatar.png"

        Vraxx ->
            "http://wiki.brawlhalla.com/images/thumb/9/93/LordVraxx_Avatar.png/200px-LordVraxx_Avatar.png"

        Gnash ->
            "http://wiki.brawlhalla.com/images/thumb/7/79/Gnash_Avatar.png/200px-Gnash_Avatar.png"

        Nai ->
            "http://wiki.brawlhalla.com/images/thumb/9/9a/QueenNai_Avatar.png/200px-QueenNai_Avatar.png"

        Hattori ->
            "http://wiki.brawlhalla.com/images/thumb/4/43/Hattori_Avatar.png/200px-Hattori_Avatar.png"

        Roland ->
            "http://wiki.brawlhalla.com/images/thumb/2/2f/SirRoland_Avatar.png/200px-SirRoland_Avatar.png"

        Scarlet ->
            "http://wiki.brawlhalla.com/images/thumb/4/41/Scarlet_Avatar.png/200px-Scarlet_Avatar.png"

        Thatch ->
            "http://wiki.brawlhalla.com/images/thumb/3/33/Thatch_Avatar.png/200px-Thatch_Avatar.png"

        Ada ->
            "http://wiki.brawlhalla.com/images/thumb/0/04/Ada_Avatar.png/200px-Ada_Avatar.png"

        Sentinel ->
            "http://wiki.brawlhalla.com/images/thumb/d/dc/Sentinel_Avatar.png/200px-Sentinel_Avatar.png"

        Lucien ->
            "http://wiki.brawlhalla.com/images/thumb/7/7d/Lucien_Avatar.png/200px-Lucien_Avatar.png"

        Teros ->
            "http://wiki.brawlhalla.com/images/thumb/d/d7/Teros_Avatar.png/200px-Teros_Avatar.png"

        Brynn ->
            "http://wiki.brawlhalla.com/images/thumb/8/81/Brynn_Avatar.png/200px-Brynn_Avatar.png"

        Asuri ->
            "http://wiki.brawlhalla.com/images/thumb/4/4a/Asuri_Avatar.png/200px-Asuri_Avatar.png"

        Barraza ->
            "http://wiki.brawlhalla.com/images/thumb/1/17/Barraza_Avatar2.png/200px-Barraza_Avatar2.png"

        Ember ->
            "http://wiki.brawlhalla.com/images/thumb/f/fd/Ember_Avatar.png/200px-Ember_Avatar.png"

        Azoth ->
            "http://wiki.brawlhalla.com/images/thumb/0/06/Azoth_Avatar.png/200px-Azoth_Avatar.png"

        Koji ->
            "http://wiki.brawlhalla.com/images/thumb/0/06/Koji_Portrait.png/200px-Koji_Portrait.png"

        Ulgrim ->
            "http://wiki.brawlhalla.com/images/thumb/4/48/Ulgrim_Avatar.png/200px-Ulgrim_Avatar.png"

        Diana ->
            "http://wiki.brawlhalla.com/images/thumb/b/b6/Diana_Avatar.png/200px-Diana_Avatar.png"

        Jhala ->
            "http://wiki.brawlhalla.com/images/thumb/6/67/Jhala_Avatar.png/200px-Jhala_Avatar.png"

        Kor ->
            "http://wiki.brawlhalla.com/images/thumb/c/ce/KorAvatarHigh.png/200px-KorAvatarHigh.png"

        Shang ->
            "http://wiki.brawlhalla.com/images/thumb/c/ca/WuShangAvatar.png/200px-WuShangAvatar.png"

        Val ->
            "http://wiki.brawlhalla.com/images/thumb/1/1e/ValAvatar3.png/200px-ValAvatar3.png"

        Ragnir ->
            "http://wiki.brawlhalla.com/images/f/f5/RagnirAvatar2.png"

        Cross ->
            "http://wiki.brawlhalla.com/images/thumb/2/22/CrossAvatar2.png/200px-CrossAvatar2.png"

        Mirage ->
            "http://wiki.brawlhalla.com/images/thumb/a/a0/MirageAvatar.png/200px-MirageAvatar.png"

        Nix ->
            "http://wiki.brawlhalla.com/images/b/b9/NixAvatar5.png"

        Mordex ->
            "http://wiki.brawlhalla.com/images/thumb/a/a5/MordexAvatar1.png/200px-MordexAvatar1.png"

        Yumiko ->
            "http://wiki.brawlhalla.com/images/thumb/1/15/YumikoAvatar.png/200px-YumikoAvatar.png"

        Artemis ->
            "http://wiki.brawlhalla.com/images/thumb/7/72/ArtemisAvatar2.png/200px-ArtemisAvatar2.png"

        Caspian ->
            "http://wiki.brawlhalla.com/images/thumb/9/98/CaspianAvatar.png/200px-CaspianAvatar.png"


getLegendsThatUse : Weapon -> Int
getLegendsThatUse weapon =
    legends
        |> List.filter (\legend -> legend.weapon == weapon || legend.weapon2 == weapon)
        |> List.length


getLegendWithWeapons : Weapon -> Weapon -> Maybe LegendInfo
getLegendWithWeapons w1 w2 =
    legends
        |> List.filter
            (\l ->
                (l.weapon == w1 && l.weapon2 == w2)
                    || (l.weapon == w2 && l.weapon2 == w1)
            )
        |> List.head
