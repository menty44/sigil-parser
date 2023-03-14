defmodule ParserWeb.PageView do
  use ParserWeb, :view

  require Logger

  def hello do
    :world
  end

  def filter(term) when is_binary(term) do
      get_in(get_counties(), [Access.filter(&(&1["COUNTY"] == term |> String.upcase))])
  end

  def get_counties do
    ~s(
        [
            {
                "COUNTY_CODE": "01",
                "COUNTY": "MOMBASA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "011",
                        "SUBCOUNTY": "MOMBASA",
                        "REG_OFFICE_CODE": "0111",
                        "REG_OFFICE": "ISLAND"
                    },
                    {
                        "SUBCOUNTY_CODE": "011",
                        "SUBCOUNTY": "MOMBASA",
                        "REG_OFFICE_CODE": "0112",
                        "REG_OFFICE": "BIMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "011",
                        "SUBCOUNTY": "MOMBASA",
                        "REG_OFFICE_CODE": "0113",
                        "REG_OFFICE": "HDM MOMBASA"
                    },
                    {
                        "SUBCOUNTY_CODE": "012",
                        "SUBCOUNTY": "KISAUNI",
                        "REG_OFFICE_CODE": "0121",
                        "REG_OFFICE": "KISAUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "012",
                        "SUBCOUNTY": "KISAUNI",
                        "REG_OFFICE_CODE": "0122",
                        "REG_OFFICE": "BAMBURI"
                    },
                    {
                        "SUBCOUNTY_CODE": "012",
                        "SUBCOUNTY": "KISAUNI",
                        "REG_OFFICE_CODE": "0123",
                        "REG_OFFICE": "MWAKIRUNGE"
                    },
                    {
                        "SUBCOUNTY_CODE": "013",
                        "SUBCOUNTY": "CHANGAMWE",
                        "REG_OFFICE_CODE": "0131",
                        "REG_OFFICE": "CHANGAMWE"
                    },
                    {
                        "SUBCOUNTY_CODE": "014",
                        "SUBCOUNTY": "LIKONI",
                        "REG_OFFICE_CODE": "0141",
                        "REG_OFFICE": "LIKONI "
                    },
                    {
                        "SUBCOUNTY_CODE": "014",
                        "SUBCOUNTY": "LIKONI",
                        "REG_OFFICE_CODE": "0142",
                        "REG_OFFICE": "LONGO "
                    },
                    {
                        "SUBCOUNTY_CODE": "014",
                        "SUBCOUNTY": "LIKONI",
                        "REG_OFFICE_CODE": "0143",
                        "REG_OFFICE": "SHIKA ADABU"
                    },
                    {
                        "SUBCOUNTY_CODE": "015",
                        "SUBCOUNTY": "NYALI",
                        "REG_OFFICE_CODE": "0151",
                        "REG_OFFICE": "NYALI"
                    },
                    {
                        "SUBCOUNTY_CODE": "016",
                        "SUBCOUNTY": "JOMVU",
                        "REG_OFFICE_CODE": "0161",
                        "REG_OFFICE": "JOMVU"
                    }
                ]
            },
            {
                "COUNTY_CODE": "02",
                "COUNTY": "KWALE",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "021",
                        "SUBCOUNTY": "KWALE / MATUGA",
                        "REG_OFFICE_CODE": "0211",
                        "REG_OFFICE": "KUBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "021",
                        "SUBCOUNTY": "KWALE / MATUGA",
                        "REG_OFFICE_CODE": "0212",
                        "REG_OFFICE": "MATUGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "021",
                        "SUBCOUNTY": "KWALE / MATUGA",
                        "REG_OFFICE_CODE": "0213",
                        "REG_OFFICE": "HDM KWALE"
                    },
                    {
                        "SUBCOUNTY_CODE": "022",
                        "SUBCOUNTY": "MSAMBWENI",
                        "REG_OFFICE_CODE": "0221",
                        "REG_OFFICE": "MSAMBWENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "022",
                        "SUBCOUNTY": "MSAMBWENI",
                        "REG_OFFICE_CODE": "0222",
                        "REG_OFFICE": "LUNGA LUNGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "022",
                        "SUBCOUNTY": "MSAMBWENI",
                        "REG_OFFICE_CODE": "0223",
                        "REG_OFFICE": "DIANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "023",
                        "SUBCOUNTY": "KINANGO",
                        "REG_OFFICE_CODE": "0231",
                        "REG_OFFICE": "KINANGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "023",
                        "SUBCOUNTY": "KINANGO",
                        "REG_OFFICE_CODE": "0232",
                        "REG_OFFICE": "SAMBURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "023",
                        "SUBCOUNTY": "KINANGO",
                        "REG_OFFICE_CODE": "0233",
                        "REG_OFFICE": "KASEMENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "023",
                        "SUBCOUNTY": "KINANGO",
                        "REG_OFFICE_CODE": "0234",
                        "REG_OFFICE": "NDAVAYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "024",
                        "SUBCOUNTY": "LUNGA LUNGA",
                        "REG_OFFICE_CODE": "0241",
                        "REG_OFFICE": "LUNGA LUNGA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "03",
                "COUNTY": "KILIFI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "031",
                        "SUBCOUNTY": "KILIFI",
                        "REG_OFFICE_CODE": "0311",
                        "REG_OFFICE": "BAHARI"
                    },
                    {
                        "SUBCOUNTY_CODE": "031",
                        "SUBCOUNTY": "KILIFI",
                        "REG_OFFICE_CODE": "0312",
                        "REG_OFFICE": "CHONYI"
                    },
                    {
                        "SUBCOUNTY_CODE": "031",
                        "SUBCOUNTY": "KILIFI",
                        "REG_OFFICE_CODE": "0313",
                        "REG_OFFICE": "KIKAMBALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "031",
                        "SUBCOUNTY": "KILIFI",
                        "REG_OFFICE_CODE": "0314",
                        "REG_OFFICE": "HDM KILIFI"
                    },
                    {
                        "SUBCOUNTY_CODE": "032",
                        "SUBCOUNTY": "MALINDI",
                        "REG_OFFICE_CODE": "0321",
                        "REG_OFFICE": "MALINDI"
                    },
                    {
                        "SUBCOUNTY_CODE": "032",
                        "SUBCOUNTY": "MALINDI",
                        "REG_OFFICE_CODE": "0322",
                        "REG_OFFICE": "LANGO BAYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "033",
                        "SUBCOUNTY": "MAGARINI",
                        "REG_OFFICE_CODE": "0331",
                        "REG_OFFICE": "MAGARINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "033",
                        "SUBCOUNTY": "MAGARINI",
                        "REG_OFFICE_CODE": "0332",
                        "REG_OFFICE": "MARAFA"
                    },
                    {
                        "SUBCOUNTY_CODE": "034",
                        "SUBCOUNTY": "KALOLENI",
                        "REG_OFFICE_CODE": "0341",
                        "REG_OFFICE": "KALOLENI "
                    },
                    {
                        "SUBCOUNTY_CODE": "034",
                        "SUBCOUNTY": "KALOLENI",
                        "REG_OFFICE_CODE": "0342",
                        "REG_OFFICE": "MWANAMWI-NGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "034",
                        "SUBCOUNTY": "KALOLENI",
                        "REG_OFFICE_CODE": "0343",
                        "REG_OFFICE": "MARIAKANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "035",
                        "SUBCOUNTY": "RABAI",
                        "REG_OFFICE_CODE": "0351",
                        "REG_OFFICE": "RABAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "035",
                        "SUBCOUNTY": "RABAI",
                        "REG_OFFICE_CODE": "0352",
                        "REG_OFFICE": "MWAWESA"
                    },
                    {
                        "SUBCOUNTY_CODE": "036",
                        "SUBCOUNTY": "GANZE",
                        "REG_OFFICE_CODE": "0361",
                        "REG_OFFICE": "GANZE"
                    },
                    {
                        "SUBCOUNTY_CODE": "036",
                        "SUBCOUNTY": "GANZE",
                        "REG_OFFICE_CODE": "0362",
                        "REG_OFFICE": "BAMBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "036",
                        "SUBCOUNTY": "GANZE",
                        "REG_OFFICE_CODE": "0363",
                        "REG_OFFICE": "VITENGENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "036",
                        "SUBCOUNTY": "GANZE",
                        "REG_OFFICE_CODE": "0364",
                        "REG_OFFICE": "JARIBUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "037",
                        "SUBCOUNTY": "KILIFI SOUTH",
                        "REG_OFFICE_CODE": "0371",
                        "REG_OFFICE": "KIKAMBALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "037",
                        "SUBCOUNTY": "KILIFI SOUTH",
                        "REG_OFFICE_CODE": "0372",
                        "REG_OFFICE": "CHONYI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "04",
                "COUNTY": "TANA RIVER",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "041",
                        "SUBCOUNTY": "TANA RIVER",
                        "REG_OFFICE": "GALOLE",
                        "REG_OFFICE_CODE": "0411"
                    },
                    {
                        "SUBCOUNTY_CODE": "041",
                        "SUBCOUNTY": "TANA RIVER",
                        "REG_OFFICE_CODE": "0412",
                        "REG_OFFICE": "WENJE"
                    },
                    {
                        "SUBCOUNTY_CODE": "041",
                        "SUBCOUNTY": "TANA RIVER",
                        "REG_OFFICE_CODE": "0413",
                        "REG_OFFICE": "HDM HOLA"
                    },
                    {
                        "SUBCOUNTY_CODE": "042",
                        "SUBCOUNTY": "TANA NORTH",
                        "REG_OFFICE_CODE": "0421",
                        "REG_OFFICE": "BURA TANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "042",
                        "SUBCOUNTY": "TANA NORTH",
                        "REG_OFFICE_CODE": "0422",
                        "REG_OFFICE": "MADOGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "042",
                        "SUBCOUNTY": "TANA NORTH",
                        "REG_OFFICE_CODE": "0423",
                        "REG_OFFICE": "BANGALE"
                    },
                    {
                        "SUBCOUNTY_CODE": "042",
                        "SUBCOUNTY": "TANA NORTH",
                        "REG_OFFICE_CODE": "0424",
                        "REG_OFFICE": "MBALA MBALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "043",
                        "SUBCOUNTY": "TANA DELTA",
                        "REG_OFFICE_CODE": "0431",
                        "REG_OFFICE": "GARSEN"
                    },
                    {
                        "SUBCOUNTY_CODE": "043",
                        "SUBCOUNTY": "TANA DELTA",
                        "REG_OFFICE_CODE": "0432",
                        "REG_OFFICE": "KIPINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "043",
                        "SUBCOUNTY": "TANA DELTA",
                        "REG_OFFICE_CODE": "0433",
                        "REG_OFFICE": "TARASAA"
                    },
                    {}
                ]
            },
            {
                "COUNTY_CODE": "05",
                "COUNTY": "LAMU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "051",
                        "SUBCOUNTY": "LAMU WEST",
                        "REG_OFFICE_CODE": "0511",
                        "REG_OFFICE": "AMU"
                    },
                    {
                        "SUBCOUNTY_CODE": "051",
                        "SUBCOUNTY": "LAMU WEST",
                        "REG_OFFICE_CODE": "0512",
                        "REG_OFFICE": "HINDI "
                    },
                    {
                        "SUBCOUNTY_CODE": "051",
                        "SUBCOUNTY": "LAMU WEST",
                        "REG_OFFICE_CODE": "0513",
                        "REG_OFFICE": "MPEKETONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "051",
                        "SUBCOUNTY": "LAMU WEST",
                        "REG_OFFICE_CODE": "0514",
                        "REG_OFFICE": "WITU"
                    },
                    {
                        "SUBCOUNTY_CODE": "051",
                        "SUBCOUNTY": "LAMU WEST",
                        "REG_OFFICE_CODE": "0515",
                        "REG_OFFICE": "HDM LAMU"
                    },
                    {
                        "SUBCOUNTY_CODE": "052",
                        "SUBCOUNTY": "LAMU EAST",
                        "REG_OFFICE_CODE": "0521",
                        "REG_OFFICE": "KIUNGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "052",
                        "SUBCOUNTY": "LAMU EAST",
                        "REG_OFFICE_CODE": "0522",
                        "REG_OFFICE": "FAZA"
                    },
                    {
                        "SUBCOUNTY_CODE": "052",
                        "SUBCOUNTY": "LAMU EAST",
                        "REG_OFFICE_CODE": "0523",
                        "REG_OFFICE": "KIZINGITINI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "06",
                "COUNTY": "TAITA/TAVETA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "061",
                        "SUBCOUNTY": "TAITA",
                        "REG_OFFICE_CODE": "0611",
                        "REG_OFFICE": "WUNDANYI"
                    },
                    {
                        "SUBCOUNTY_CODE": "061",
                        "SUBCOUNTY": "TAITA",
                        "REG_OFFICE_CODE": "0612",
                        "REG_OFFICE": "HDM TAITA TAVETA"
                    },
                    {
                        "SUBCOUNTY_CODE": "062",
                        "SUBCOUNTY": "VOI",
                        "REG_OFFICE_CODE": "0621",
                        "REG_OFFICE": "VOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "062",
                        "SUBCOUNTY": "VOI",
                        "REG_OFFICE_CODE": "0622",
                        "REG_OFFICE": "TAUSA"
                    },
                    {
                        "SUBCOUNTY_CODE": "062",
                        "SUBCOUNTY": "VOI",
                        "REG_OFFICE_CODE": "0623",
                        "REG_OFFICE": "MAUNGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "063",
                        "SUBCOUNTY": "TAVETA",
                        "REG_OFFICE_CODE": "0631",
                        "REG_OFFICE": "BOMENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "063",
                        "SUBCOUNTY": "TAVETA",
                        "REG_OFFICE_CODE": "0632",
                        "REG_OFFICE": "CHALLA"
                    },
                    {
                        "SUBCOUNTY_CODE": "063",
                        "SUBCOUNTY": "TAVETA",
                        "REG_OFFICE_CODE": "0633",
                        "REG_OFFICE": "JIPE"
                    },
                    {
                        "SUBCOUNTY_CODE": "064",
                        "SUBCOUNTY": "MWATATE",
                        "REG_OFFICE_CODE": "0641",
                        "REG_OFFICE": "MWATATE"
                    },
                    {
                        "SUBCOUNTY_CODE": "064",
                        "SUBCOUNTY": "MWATATE",
                        "REG_OFFICE_CODE": "0642",
                        "REG_OFFICE": "MWAMBIRWA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "07",
                "COUNTY": "GARISSA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "071",
                        "SUBCOUNTY": "GARISSA",
                        "REG_OFFICE_CODE": "0711",
                        "REG_OFFICE": "CENTRAL "
                    },
                    {
                        "SUBCOUNTY_CODE": "071",
                        "SUBCOUNTY": "GARISSA",
                        "REG_OFFICE_CODE": "0712",
                        "REG_OFFICE": "SANKURI "
                    },
                    {
                        "SUBCOUNTY_CODE": "071",
                        "SUBCOUNTY": "GARISSA",
                        "REG_OFFICE_CODE": "0713",
                        "REG_OFFICE": "KORAKORA"
                    },
                    {
                        "SUBCOUNTY_CODE": "071",
                        "SUBCOUNTY": "GARISSA",
                        "REG_OFFICE_CODE": "0714",
                        "REG_OFFICE": "HDM GARISSA"
                    },
                    {
                        "SUBCOUNTY_CODE": "072",
                        "SUBCOUNTY": "IJARA",
                        "REG_OFFICE_CODE": "0721",
                        "REG_OFFICE": "IJARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "072",
                        "SUBCOUNTY": "IJARA",
                        "REG_OFFICE_CODE": "0722",
                        "REG_OFFICE": "MASALANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "072",
                        "SUBCOUNTY": "IJARA",
                        "REG_OFFICE_CODE": "0723",
                        "REG_OFFICE": "RUQA "
                    },
                    {
                        "SUBCOUNTY_CODE": "072",
                        "SUBCOUNTY": "IJARA",
                        "REG_OFFICE_CODE": "0724",
                        "REG_OFFICE": "KOTILE "
                    },
                    {
                        "SUBCOUNTY_CODE": "073",
                        "SUBCOUNTY": "BALAMBALA",
                        "REG_OFFICE_CODE": "0731",
                        "REG_OFFICE": "BALAMBALA "
                    },
                    {
                        "SUBCOUNTY_CODE": "073",
                        "SUBCOUNTY": "BALAMBALA",
                        "REG_OFFICE_CODE": "0732",
                        "REG_OFFICE": "DANYERE "
                    },
                    {
                        "SUBCOUNTY_CODE": "074",
                        "SUBCOUNTY": "FAFI",
                        "REG_OFFICE_CODE": "0741",
                        "REG_OFFICE": "JARAJILLA "
                    },
                    {
                        "SUBCOUNTY_CODE": "074",
                        "SUBCOUNTY": "FAFI",
                        "REG_OFFICE_CODE": "0742",
                        "REG_OFFICE": "BURA "
                    },
                    {
                        "SUBCOUNTY_CODE": "074",
                        "SUBCOUNTY": "FAFI",
                        "REG_OFFICE_CODE": "0743",
                        "REG_OFFICE": "GALMAGALLA "
                    },
                    {
                        "SUBCOUNTY_CODE": "075",
                        "SUBCOUNTY": "HULUGHO",
                        "REG_OFFICE_CODE": "0751",
                        "REG_OFFICE": "HULUGHO "
                    },
                    {
                        "SUBCOUNTY_CODE": "075",
                        "SUBCOUNTY": "HULUGHO",
                        "REG_OFFICE_CODE": "0752",
                        "REG_OFFICE": "SANGAILU "
                    },
                    {
                        "SUBCOUNTY_CODE": "075",
                        "SUBCOUNTY": "HULUGHO",
                        "REG_OFFICE_CODE": "0753",
                        "REG_OFFICE": "BODHAI "
                    },
                    {
                        "SUBCOUNTY_CODE": "076",
                        "SUBCOUNTY": "LAGDERA",
                        "REG_OFFICE_CODE": "0761",
                        "REG_OFFICE": "MODOGASHE "
                    },
                    {
                        "SUBCOUNTY_CODE": "076",
                        "SUBCOUNTY": "LAGDERA",
                        "REG_OFFICE_CODE": "0762",
                        "REG_OFFICE": "SHANT ABAK "
                    },
                    {
                        "SUBCOUNTY_CODE": "076",
                        "SUBCOUNTY": "LAGDERA",
                        "REG_OFFICE_CODE": "0763",
                        "REG_OFFICE": "BENANE"
                    },
                    {
                        "SUBCOUNTY_CODE": "077",
                        "SUBCOUNTY": "DADAAB",
                        "REG_OFFICE_CODE": "0771",
                        "REG_OFFICE": "DADAAB "
                    },
                    {
                        "SUBCOUNTY_CODE": "077",
                        "SUBCOUNTY": "DADAAB",
                        "REG_OFFICE_CODE": "0772",
                        "REG_OFFICE": "LIBOI "
                    },
                    {
                        "SUBCOUNTY_CODE": "077",
                        "SUBCOUNTY": "DADAAB",
                        "REG_OFFICE_CODE": "0773",
                        "REG_OFFICE": "DERTU "
                    }
                ]
            },
            {
                "COUNTY_CODE": "08",
                "COUNTY": "WAJIR",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "081",
                        "SUBCOUNTY": "WAJIR EAST",
                        "REG_OFFICE_CODE": "0811",
                        "REG_OFFICE": "CENTRAL "
                    },
                    {
                        "SUBCOUNTY_CODE": "081",
                        "SUBCOUNTY": "WAJIR EAST",
                        "REG_OFFICE_CODE": "0812",
                        "REG_OFFICE": "WAJIR BOR "
                    },
                    {
                        "SUBCOUNTY_CODE": "081",
                        "SUBCOUNTY": "WAJIR EAST",
                        "REG_OFFICE_CODE": "0813",
                        "REG_OFFICE": "KHOROFHARAR"
                    },
                    {
                        "SUBCOUNTY_CODE": "081",
                        "SUBCOUNTY": "WAJIR EAST",
                        "REG_OFFICE_CODE": "0814",
                        "REG_OFFICE": "HDM WAJIR"
                    },
                    {
                        "SUBCOUNTY_CODE": "081",
                        "SUBCOUNTY": "WAJIR EAST",
                        "REG_OFFICE_CODE": "0814",
                        "REG_OFFICE": "HDM WAJIR"
                    },
                    {
                        "SUBCOUNTY_CODE": "082",
                        "SUBCOUNTY": "WAJIR NORTH",
                        "REG_OFFICE_CODE": "0821",
                        "REG_OFFICE": "BUTE "
                    },
                    {
                        "SUBCOUNTY_CODE": "082",
                        "SUBCOUNTY": "WAJIR NORTH",
                        "REG_OFFICE_CODE": "0821",
                        "REG_OFFICE": "BUTE "
                    },
                    {
                        "SUBCOUNTY_CODE": "082",
                        "SUBCOUNTY": "WAJIR NORTH",
                        "REG_OFFICE_CODE": "0822",
                        "REG_OFFICE": "GURAR "
                    },
                    {
                        "SUBCOUNTY_CODE": "083",
                        "SUBCOUNTY": "TARBAJ",
                        "REG_OFFICE_CODE": "0831",
                        "REG_OFFICE": "TARBAJ "
                    },
                    {
                        "SUBCOUNTY_CODE": "083",
                        "SUBCOUNTY": "TARBAJ",
                        "REG_OFFICE_CODE": "0832",
                        "REG_OFFICE": "KUTULO "
                    },
                    {
                        "SUBCOUNTY_CODE": "083",
                        "SUBCOUNTY": "TARBAJ",
                        "REG_OFFICE_CODE": "0833",
                        "REG_OFFICE": "MANSA "
                    },
                    {
                        "SUBCOUNTY_CODE": "083",
                        "SUBCOUNTY": "TARBAJ",
                        "REG_OFFICE_CODE": "0834",
                        "REG_OFFICE": "SARMAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "084",
                        "SUBCOUNTY": "BUNA",
                        "REG_OFFICE_CODE": "0841",
                        "REG_OFFICE": "BUNA "
                    },
                    {
                        "SUBCOUNTY_CODE": "084",
                        "SUBCOUNTY": "BUNA",
                        "REG_OFFICE_CODE": "0842",
                        "REG_OFFICE": "KORONDILE "
                    },
                    {
                        "SUBCOUNTY_CODE": "085",
                        "SUBCOUNTY": "WAJIR WEST",
                        "REG_OFFICE_CODE": "0851",
                        "REG_OFFICE": "GRIFTU "
                    },
                    {
                        "SUBCOUNTY_CODE": "085",
                        "SUBCOUNTY": "WAJIR WEST",
                        "REG_OFFICE_CODE": "0852",
                        "REG_OFFICE": "HADADO"
                    },
                    {
                        "SUBCOUNTY_CODE": "085",
                        "SUBCOUNTY": "WAJIR WEST",
                        "REG_OFFICE_CODE": "0853",
                        "REG_OFFICE": "LAGBOGOL"
                    },
                    {
                        "SUBCOUNTY_CODE": "085",
                        "SUBCOUNTY": "WAJIR WEST",
                        "REG_OFFICE_CODE": "0854",
                        "REG_OFFICE": "ADEMASAJIDA"
                    },
                    {
                        "SUBCOUNTY_CODE": "086",
                        "SUBCOUNTY": "ELDAS",
                        "REG_OFFICE_CODE": "0861",
                        "REG_OFFICE": "ELDAS "
                    },
                    {
                        "SUBCOUNTY_CODE": "086",
                        "SUBCOUNTY": "ELDAS",
                        "REG_OFFICE_CODE": "0862",
                        "REG_OFFICE": "ELNUR "
                    },
                    {
                        "SUBCOUNTY_CODE": "086",
                        "SUBCOUNTY": "ELDAS",
                        "REG_OFFICE_CODE": "0864",
                        "REG_OFFICE": "DELA"
                    },
                    {
                        "SUBCOUNTY_CODE": "087",
                        "SUBCOUNTY": "WAJIR SOUTH",
                        "REG_OFFICE_CODE": "0871",
                        "REG_OFFICE": "DIIF"
                    },
                    {
                        "SUBCOUNTY_CODE": "087",
                        "SUBCOUNTY": "WAJIR SOUTH",
                        "REG_OFFICE_CODE": "0872",
                        "REG_OFFICE": "KULAALEY"
                    },
                    {
                        "SUBCOUNTY_CODE": "087",
                        "SUBCOUNTY": "WAJIR SOUTH",
                        "REG_OFFICE_CODE": "0873",
                        "REG_OFFICE": "BURDER"
                    },
                    {
                        "SUBCOUNTY_CODE": "087",
                        "SUBCOUNTY": "WAJIR SOUTH",
                        "REG_OFFICE_CODE": "0874",
                        "REG_OFFICE": "WAJIR BOR SOUTH"
                    },
                    {
                        "SUBCOUNTY_CODE": "088",
                        "SUBCOUNTY": "HABASWEIN",
                        "REG_OFFICE_CODE": "0881",
                        "REG_OFFICE": "HABASWEIN"
                    },
                    {
                        "SUBCOUNTY_CODE": "088",
                        "SUBCOUNTY": "HABASWEIN",
                        "REG_OFFICE_CODE": "0882",
                        "REG_OFFICE": "SABULI"
                    },
                    {
                        "SUBCOUNTY_CODE": "088",
                        "SUBCOUNTY": "HABASWEIN",
                        "REG_OFFICE_CODE": "0883",
                        "REG_OFFICE": "DADAJABULA"
                    },
                    {
                        "SUBCOUNTY_CODE": "088",
                        "SUBCOUNTY": "HABASWEIN",
                        "REG_OFFICE_CODE": "0884",
                        "REG_OFFICE": "BANANE"
                    }
                ]
            },
            {
                "COUNTY_CODE": "09",
                "COUNTY": "MANDERA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "091",
                        "SUBCOUNTY": "MANDERA EAST",
                        "REG_OFFICE_CODE": "0911",
                        "REG_OFFICE": "CENTRAL "
                    },
                    {
                        "SUBCOUNTY_CODE": "091",
                        "SUBCOUNTY": "MANDERA EAST",
                        "REG_OFFICE_CODE": "0912",
                        "REG_OFFICE": "KHALALIYO"
                    },
                    {
                        "SUBCOUNTY_CODE": "091",
                        "SUBCOUNTY": "MANDERA EAST",
                        "REG_OFFICE_CODE": "0913",
                        "REG_OFFICE": "LIBEHIA "
                    },
                    {
                        "SUBCOUNTY_CODE": "091",
                        "SUBCOUNTY": "MANDERA EAST",
                        "REG_OFFICE_CODE": "0914",
                        "REG_OFFICE": "ARABIA "
                    },
                    {
                        "SUBCOUNTY_CODE": "091",
                        "SUBCOUNTY": "MANDERA EAST",
                        "REG_OFFICE_CODE": "0915",
                        "REG_OFFICE": "HARERI "
                    },
                    {
                        "SUBCOUNTY_CODE": "091",
                        "SUBCOUNTY": "MANDERA EAST",
                        "REG_OFFICE_CODE": "0916",
                        "REG_OFFICE": "HDM MANDERA"
                    },
                    {
                        "SUBCOUNTY_CODE": "092",
                        "SUBCOUNTY": "MANDERA CENTRAL",
                        "REG_OFFICE_CODE": "0921",
                        "REG_OFFICE": "ELWAK"
                    },
                    {
                        "SUBCOUNTY_CODE": "092",
                        "SUBCOUNTY": "MANDERA CENTRAL",
                        "REG_OFFICE_CODE": "0922",
                        "REG_OFFICE": "KOTULO "
                    },
                    {
                        "SUBCOUNTY_CODE": "092",
                        "SUBCOUNTY": "MANDERA CENTRAL",
                        "REG_OFFICE_CODE": "0923",
                        "REG_OFFICE": "SHIMBIR FATUMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "092",
                        "SUBCOUNTY": "MANDERA CENTRAL",
                        "REG_OFFICE_CODE": "0924",
                        "REG_OFFICE": "WARGADUD "
                    },
                    {
                        "SUBCOUNTY_CODE": "092",
                        "SUBCOUNTY": "MANDERA CENTRAL",
                        "REG_OFFICE_CODE": "0925",
                        "REG_OFFICE": "QALANGALESA "
                    },
                    {
                        "COUNTY_CODE": "09",
                        "SUBCOUNTY_CODE": "093",
                        "SUBCOUNTY": "MANDERA NORTH",
                        "REG_OFFICE_CODE": "0931",
                        "REG_OFFICE": "RHAMU "
                    },
                    {
                        "SUBCOUNTY_CODE": "093",
                        "SUBCOUNTY": "MANDERA NORTH",
                        "REG_OFFICE_CODE": "0932",
                        "REG_OFFICE": "ASHABITO "
                    },
                    {
                        "SUBCOUNTY_CODE": "093",
                        "SUBCOUNTY": "MANDERA NORTH",
                        "REG_OFFICE_CODE": "0933",
                        "REG_OFFICE": "RHAMUDIMTU "
                    },
                    {
                        "SUBCOUNTY_CODE": "094",
                        "SUBCOUNTY": "MANDERA WEST",
                        "REG_OFFICE_CODE": "0941",
                        "REG_OFFICE": "TAKABA "
                    },
                    {
                        "SUBCOUNTY_CODE": "094",
                        "SUBCOUNTY": "MANDERA WEST",
                        "REG_OFFICE_CODE": "0942",
                        "REG_OFFICE": "DANDU "
                    },
                    {
                        "SUBCOUNTY_CODE": "095",
                        "SUBCOUNTY": "LAFEY",
                        "REG_OFFICE_CODE": "0951",
                        "REG_OFFICE": "LAFEY "
                    },
                    {
                        "SUBCOUNTY_CODE": "095",
                        "SUBCOUNTY": "LAFEY",
                        "REG_OFFICE_CODE": "0952",
                        "REG_OFFICE": "WARANKARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "095",
                        "SUBCOUNTY": "LAFEY",
                        "REG_OFFICE_CODE": "0953",
                        "REG_OFFICE": "FINO"
                    },
                    {
                        "SUBCOUNTY_CODE": "095",
                        "SUBCOUNTY": "LAFEY",
                        "REG_OFFICE_CODE": "0954",
                        "REG_OFFICE": "SALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "096",
                        "SUBCOUNTY": "BANISA",
                        "REG_OFFICE_CODE": "0961",
                        "REG_OFFICE": "BANISA"
                    },
                    {
                        "SUBCOUNTY_CODE": "096",
                        "SUBCOUNTY": "BANISA",
                        "REG_OFFICE_CODE": "0962",
                        "REG_OFFICE": "KILIWEHIRI "
                    },
                    {
                        "SUBCOUNTY_CODE": "096",
                        "SUBCOUNTY": "BANISA",
                        "REG_OFFICE_CODE": "0963",
                        "REG_OFFICE": "MALKAMARI "
                    },
                    {
                        "SUBCOUNTY_CODE": "097",
                        "SUBCOUNTY": "ARABIA",
                        "REG_OFFICE_CODE": "0972",
                        "REG_OFFICE": "LIBEHIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "097",
                        "SUBCOUNTY": "ARABIA",
                        "REG_OFFICE_CODE": "0973",
                        "REG_OFFICE": "HARERI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "10",
                "COUNTY": "MARSABIT",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "101",
                        "SUBCOUNTY": "MARSABIT 'CEN'",
                        "REG_OFFICE_CODE": "1011",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "101",
                        "SUBCOUNTY": "MARSABIT 'CEN'",
                        "REG_OFFICE_CODE": "1012",
                        "REG_OFFICE": "GADAMOJI"
                    },
                    {
                        "SUBCOUNTY_CODE": "101",
                        "SUBCOUNTY": "MARSABIT 'CEN'",
                        "REG_OFFICE_CODE": "1013",
                        "REG_OFFICE": "DIRRI"
                    },
                    {
                        "SUBCOUNTY_CODE": "101",
                        "SUBCOUNTY": "MARSABIT 'CEN'",
                        "REG_OFFICE_CODE": "1014",
                        "REG_OFFICE": "HDM MARSABIT"
                    },
                    {
                        "SUBCOUNTY_CODE": "102",
                        "SUBCOUNTY": "NORTH HORR",
                        "REG_OFFICE_CODE": "1021",
                        "REG_OFFICE": "NORTH HORR"
                    },
                    {
                        "SUBCOUNTY_CODE": "102",
                        "SUBCOUNTY": "NORTH HORR",
                        "REG_OFFICE_CODE": "1022",
                        "REG_OFFICE": "DUKANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "102",
                        "SUBCOUNTY": "NORTH HORR",
                        "REG_OFFICE_CODE": "1023",
                        "REG_OFFICE": "BALESA"
                    },
                    {
                        "SUBCOUNTY_CODE": "103",
                        "SUBCOUNTY": "MARSABIT NORTH",
                        "REG_OFFICE_CODE": "1031",
                        "REG_OFFICE": "MAIKONA"
                    },
                    {
                        "SUBCOUNTY_CODE": "103",
                        "SUBCOUNTY": "MARSABIT NORTH",
                        "REG_OFFICE_CODE": "1032",
                        "REG_OFFICE": "TURBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "103",
                        "SUBCOUNTY": "MARSABIT NORTH",
                        "REG_OFFICE_CODE": "1033",
                        "REG_OFFICE": "KALACHA"
                    },
                    {
                        "SUBCOUNTY_CODE": "104",
                        "SUBCOUNTY": "MARSABIT SOUTH",
                        "REG_OFFICE_CODE": "1041",
                        "REG_OFFICE": "LAISAMIS"
                    },
                    {
                        "SUBCOUNTY_CODE": "104",
                        "SUBCOUNTY": "MARSABIT SOUTH",
                        "REG_OFFICE_CODE": "1042",
                        "REG_OFFICE": "NGURUNIT"
                    },
                    {
                        "SUBCOUNTY_CODE": "104",
                        "SUBCOUNTY": "MARSABIT SOUTH",
                        "REG_OFFICE_CODE": "1043",
                        "REG_OFFICE": "KORR"
                    },
                    {
                        "SUBCOUNTY_CODE": "105",
                        "SUBCOUNTY": "LOIYANGALANI",
                        "REG_OFFICE_CODE": "1051",
                        "REG_OFFICE": "GADAMOJI"
                    },
                    {
                        "SUBCOUNTY_CODE": "105",
                        "SUBCOUNTY": "LOIYANGALANI",
                        "REG_OFFICE_CODE": "1052",
                        "REG_OFFICE": "KARGI"
                    },
                    {
                        "SUBCOUNTY_CODE": "105",
                        "SUBCOUNTY": "LOIYANGALANI",
                        "REG_OFFICE_CODE": "1053",
                        "REG_OFFICE": "LOIYANGALANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "106",
                        "SUBCOUNTY": "MOYALE",
                        "REG_OFFICE_CODE": "1061",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "106",
                        "SUBCOUNTY": "MOYALE",
                        "REG_OFFICE_CODE": "1062",
                        "REG_OFFICE": "GOLBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "107",
                        "SUBCOUNTY": "SOLOLO",
                        "REG_OFFICE_CODE": "1071",
                        "REG_OFFICE": "OBBU"
                    },
                    {
                        "SUBCOUNTY_CODE": "107",
                        "SUBCOUNTY": "SOLOLO",
                        "REG_OFFICE_CODE": "1072",
                        "REG_OFFICE": "URAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "108",
                        "SUBCOUNTY": "DUKANA",
                        "REG_OFFICE_CODE": "1081",
                        "REG_OFFICE": "DUKANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "108",
                        "SUBCOUNTY": "DUKANA",
                        "REG_OFFICE_CODE": "1082",
                        "REG_OFFICE": "BALESA"
                    },
                    {
                        "SUBCOUNTY_CODE": "109",
                        "SUBCOUNTY": "TURBI BUBISA",
                        "REG_OFFICE_CODE": "1091",
                        "REG_OFFICE": "TURBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "109",
                        "SUBCOUNTY": "TURBI BUBISA",
                        "REG_OFFICE_CODE": "1092",
                        "REG_OFFICE": "BUBISA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "11",
                "COUNTY": "ISIOLO",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "111",
                        "SUBCOUNTY": "ISIOLO",
                        "REG_OFFICE_CODE": "1111",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "111",
                        "SUBCOUNTY": "ISIOLO",
                        "REG_OFFICE_CODE": "1112",
                        "REG_OFFICE": "EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "111",
                        "SUBCOUNTY": "ISIOLO",
                        "REG_OFFICE_CODE": "1113",
                        "REG_OFFICE": "HDM ISIOLO"
                    },
                    {
                        "SUBCOUNTY_CODE": "111",
                        "SUBCOUNTY": "ISIOLO",
                        "REG_OFFICE_CODE": "1114",
                        "REG_OFFICE": "OLDONYIRO"
                    },
                    {
                        "SUBCOUNTY_CODE": "112",
                        "SUBCOUNTY": "GARBATULLA",
                        "REG_OFFICE_CODE": "1121",
                        "REG_OFFICE": "GARBATULLA"
                    },
                    {
                        "SUBCOUNTY_CODE": "112",
                        "SUBCOUNTY": "GARBATULLA",
                        "REG_OFFICE_CODE": "1122",
                        "REG_OFFICE": "KINNA"
                    },
                    {
                        "SUBCOUNTY_CODE": "112",
                        "SUBCOUNTY": "GARBATULLA",
                        "REG_OFFICE_CODE": "1123",
                        "REG_OFFICE": "SERICHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "113",
                        "SUBCOUNTY": "MERTI",
                        "REG_OFFICE_CODE": "1131",
                        "REG_OFFICE": "MERTI"
                    },
                    {
                        "SUBCOUNTY_CODE": "113",
                        "SUBCOUNTY": "MERTI",
                        "REG_OFFICE_CODE": "1132",
                        "REG_OFFICE": "CHERAB"
                    },
                    {
                        "SUBCOUNTY_CODE": "113",
                        "SUBCOUNTY": "MERTI",
                        "REG_OFFICE_CODE": "1133",
                        "REG_OFFICE": "KOM"
                    }
                ]
            },
            {
                "COUNTY_CODE": "12",
                "COUNTY": "MERU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "121",
                        "SUBCOUNTY": "BUURI",
                        "REG_OFFICE_CODE": "1211",
                        "REG_OFFICE": "KIIRUA "
                    },
                    {
                        "SUBCOUNTY_CODE": "121",
                        "SUBCOUNTY": "BUURI",
                        "REG_OFFICE_CODE": "1212",
                        "REG_OFFICE": "BUURI "
                    },
                    {
                        "SUBCOUNTY_CODE": "121",
                        "SUBCOUNTY": "BUURI",
                        "REG_OFFICE_CODE": "1213",
                        "REG_OFFICE": "TIMAU  "
                    },
                    {
                        "SUBCOUNTY_CODE": "121",
                        "SUBCOUNTY": "BUURI",
                        "REG_OFFICE_CODE": "1214",
                        "REG_OFFICE": "KISIMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "122",
                        "SUBCOUNTY": "MERU CENTRAL",
                        "REG_OFFICE_CODE": "1221",
                        "REG_OFFICE": "ABOTHUGUCHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "122",
                        "SUBCOUNTY": "MERU CENTRAL",
                        "REG_OFFICE_CODE": "1223",
                        "REG_OFFICE": "ABOTHUGUCHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "122",
                        "SUBCOUNTY": "MERU CENTRAL",
                        "REG_OFFICE_CODE": "1224",
                        "REG_OFFICE": "ABOTHUGUCHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1231",
                        "REG_OFFICE": "MUNICIPALITY"
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1232",
                        "REG_OFFICE": "NTHIMBIRI"
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1233",
                        "REG_OFFICE": "MIRIGA MIERU W."
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1234",
                        "REG_OFFICE": "KIAMWITARI"
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1235",
                        "REG_OFFICE": "KIATHANDI"
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1236",
                        "REG_OFFICE": "GIAKI"
                    },
                    {
                        "SUBCOUNTY_CODE": "123",
                        "SUBCOUNTY": "IMENTI NORTH",
                        "REG_OFFICE_CODE": "1237",
                        "REG_OFFICE": "HDM MERU"
                    },
                    {
                        "SUBCOUNTY_CODE": "124",
                        "SUBCOUNTY": "IMENTI SOUTH",
                        "REG_OFFICE_CODE": "1241",
                        "REG_OFFICE": "NKUENE"
                    },
                    {
                        "SUBCOUNTY_CODE": "124",
                        "SUBCOUNTY": "IMENTI SOUTH",
                        "REG_OFFICE_CODE": "1242",
                        "REG_OFFICE": "MITUNGUU"
                    },
                    {
                        "SUBCOUNTY_CODE": "124",
                        "SUBCOUNTY": "IMENTI SOUTH",
                        "REG_OFFICE_CODE": "1243",
                        "REG_OFFICE": "ABOGETA WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "124",
                        "SUBCOUNTY": "IMENTI SOUTH",
                        "REG_OFFICE_CODE": "1244",
                        "REG_OFFICE": "ABOGETA EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "124",
                        "SUBCOUNTY": "IMENTI SOUTH",
                        "REG_OFFICE_CODE": "1245",
                        "REG_OFFICE": "IGOJI EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "124",
                        "SUBCOUNTY": "IMENTI SOUTH",
                        "REG_OFFICE_CODE": "1246",
                        "REG_OFFICE": "IGOJI WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "125",
                        "SUBCOUNTY": "TIGANIA WEST",
                        "REG_OFFICE_CODE": "1251",
                        "REG_OFFICE": "TIGANIA WEST "
                    },
                    {
                        "SUBCOUNTY_CODE": "125",
                        "SUBCOUNTY": "TIGANIA WEST",
                        "REG_OFFICE_CODE": "1252",
                        "REG_OFFICE": "URINGU "
                    },
                    {
                        "SUBCOUNTY_CODE": "125",
                        "SUBCOUNTY": "TIGANIA WEST",
                        "REG_OFFICE_CODE": "1253",
                        "REG_OFFICE": "AKITHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "126",
                        "SUBCOUNTY": "IGEMBE NORTH",
                        "REG_OFFICE_CODE": "1261",
                        "REG_OFFICE": "NDOLELI"
                    },
                    {
                        "SUBCOUNTY_CODE": "126",
                        "SUBCOUNTY": "IGEMBE NORTH",
                        "REG_OFFICE_CODE": "1262",
                        "REG_OFFICE": "LAARE"
                    },
                    {
                        "SUBCOUNTY_CODE": "126",
                        "SUBCOUNTY": "IGEMBE NORTH",
                        "REG_OFFICE_CODE": "1263",
                        "REG_OFFICE": "MUTUATI"
                    },
                    {
                        "SUBCOUNTY_CODE": "127",
                        "SUBCOUNTY": "TIGANIA EAST",
                        "REG_OFFICE_CODE": "1272",
                        "REG_OFFICE": "MUTHARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "127",
                        "SUBCOUNTY": "TIGANIA EAST",
                        "REG_OFFICE_CODE": "1273",
                        "REG_OFFICE": "AMUTHUMBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "127",
                        "SUBCOUNTY": "TIGANIA EAST",
                        "REG_OFFICE_CODE": "1274",
                        "REG_OFFICE": "KARAMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "128",
                        "SUBCOUNTY": "IGEMBE SOUTH",
                        "REG_OFFICE_CODE": "1282",
                        "REG_OFFICE": "MAUA"
                    },
                    {
                        "SUBCOUNTY_CODE": "128",
                        "SUBCOUNTY": "IGEMBE SOUTH",
                        "REG_OFFICE_CODE": "1283",
                        "REG_OFFICE": "KANUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "128",
                        "SUBCOUNTY": "IGEMBE SOUTH",
                        "REG_OFFICE_CODE": "1284",
                        "REG_OFFICE": "ATHIRU GAITI"
                    },
                    {
                        "SUBCOUNTY_CODE": "128",
                        "SUBCOUNTY": "IGEMBE SOUTH",
                        "REG_OFFICE_CODE": "1285",
                        "REG_OFFICE": "AKACHIU"
                    },
                    {
                        "SUBCOUNTY_CODE": "129",
                        "SUBCOUNTY": "TIGANIA CENTRAL",
                        "REG_OFFICE_CODE": "1291",
                        "REG_OFFICE": "TIGANIA CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "129",
                        "SUBCOUNTY": "TIGANIA CENTRAL",
                        "REG_OFFICE_CODE": "1292",
                        "REG_OFFICE": "TIGANIA EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "12A",
                        "SUBCOUNTY": "IGEMBE CENTRAL",
                        "REG_OFFICE_CODE": "12A1",
                        "REG_OFFICE": "KANGETA"
                    },
                    {
                        "SUBCOUNTY_CODE": "12A",
                        "SUBCOUNTY": "IGEMBE CENTRAL",
                        "REG_OFFICE_CODE": "12A2",
                        "REG_OFFICE": "KIENGU"
                    }
                ]
            },
            {
                "COUNTY_CODE": "13",
                "COUNTY": "THARAKA NITHI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "131",
                        "SUBCOUNTY": "THARAKA NORTH",
                        "REG_OFFICE_CODE": "1311",
                        "REG_OFFICE": "GATUE "
                    },
                    {
                        "SUBCOUNTY_CODE": "131",
                        "SUBCOUNTY": "THARAKA NORTH",
                        "REG_OFFICE_CODE": "1312",
                        "REG_OFFICE": "MUKOTHIMA     "
                    },
                    {
                        "SUBCOUNTY_CODE": "132",
                        "SUBCOUNTY": "THARAKA SOUTH",
                        "REG_OFFICE_CODE": "1321",
                        "REG_OFFICE": "THARAKA SOUTH"
                    },
                    {
                        "SUBCOUNTY_CODE": "132",
                        "SUBCOUNTY": "THARAKA SOUTH",
                        "REG_OFFICE_CODE": "1322",
                        "REG_OFFICE": "NKONDI"
                    },
                    {
                        "SUBCOUNTY_CODE": "132",
                        "SUBCOUNTY": "THARAKA SOUTH",
                        "REG_OFFICE_CODE": "1323",
                        "REG_OFFICE": "TURIMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "132",
                        "SUBCOUNTY": "THARAKA SOUTH",
                        "REG_OFFICE_CODE": "1324",
                        "REG_OFFICE": "THARAKA CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "132",
                        "SUBCOUNTY": "THARAKA SOUTH",
                        "REG_OFFICE_CODE": "1325",
                        "REG_OFFICE": "TUNYAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "133",
                        "SUBCOUNTY": "MERU SOUTH",
                        "REG_OFFICE_CODE": "1331",
                        "REG_OFFICE": "CHUKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "133",
                        "SUBCOUNTY": "MERU SOUTH",
                        "REG_OFFICE_CODE": "1332",
                        "REG_OFFICE": "MARIANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "133",
                        "SUBCOUNTY": "MERU SOUTH",
                        "REG_OFFICE_CODE": "1333",
                        "REG_OFFICE": "MAGUMONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "133",
                        "SUBCOUNTY": "MERU SOUTH",
                        "REG_OFFICE_CODE": "1334",
                        "REG_OFFICE": "IGAMBANG'OMBE/S"
                    },
                    {
                        "SUBCOUNTY_CODE": "133",
                        "SUBCOUNTY": "MERU SOUTH",
                        "REG_OFFICE_CODE": "1335",
                        "REG_OFFICE": "HDM THARAKA NITHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "134",
                        "SUBCOUNTY": "MAARA",
                        "REG_OFFICE_CODE": "1341",
                        "REG_OFFICE": "MWIMBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "134",
                        "SUBCOUNTY": "MAARA",
                        "REG_OFFICE_CODE": "1342",
                        "REG_OFFICE": "GANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "134",
                        "SUBCOUNTY": "MAARA",
                        "REG_OFFICE_CODE": "1343",
                        "REG_OFFICE": "CHOGORIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "134",
                        "SUBCOUNTY": "MAARA",
                        "REG_OFFICE_CODE": "1344",
                        "REG_OFFICE": "MUTHAMBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "134",
                        "SUBCOUNTY": "MAARA",
                        "REG_OFFICE_CODE": "1345",
                        "REG_OFFICE": "MITHERU"
                    }
                ]
            },
            {
                "COUNTY_CODE": "14",
                "COUNTY": "EMBU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "141",
                        "SUBCOUNTY": "EMBU WEST",
                        "REG_OFFICE_CODE": "1411",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "141",
                        "SUBCOUNTY": "EMBU WEST",
                        "REG_OFFICE_CODE": "1412",
                        "REG_OFFICE": "NEMBURE"
                    },
                    {
                        "SUBCOUNTY_CODE": "141",
                        "SUBCOUNTY": "EMBU WEST",
                        "REG_OFFICE_CODE": "1413",
                        "REG_OFFICE": "HDM EMBU"
                    },
                    {
                        "SUBCOUNTY_CODE": "142",
                        "SUBCOUNTY": "EMBU EAST",
                        "REG_OFFICE_CODE": "1421",
                        "REG_OFFICE": "RUNYENJES"
                    },
                    {
                        "SUBCOUNTY_CODE": "142",
                        "SUBCOUNTY": "EMBU EAST",
                        "REG_OFFICE_CODE": "1422",
                        "REG_OFFICE": "KYENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "143",
                        "SUBCOUNTY": "EMBU NORTH",
                        "REG_OFFICE_CODE": "1431",
                        "REG_OFFICE": "MANYATTA"
                    },
                    {
                        "SUBCOUNTY_CODE": "143",
                        "SUBCOUNTY": "EMBU NORTH",
                        "REG_OFFICE_CODE": "1432",
                        "REG_OFFICE": "NGINDA"
                    },
                    {
                        "SUBCOUNTY_CODE": "144",
                        "SUBCOUNTY": "MBEERE NORTH",
                        "REG_OFFICE_CODE": "1441",
                        "REG_OFFICE": "SIAKAGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "144",
                        "SUBCOUNTY": "MBEERE NORTH",
                        "REG_OFFICE_CODE": "1442",
                        "REG_OFFICE": "EVURORE"
                    },
                    {
                        "SUBCOUNTY_CODE": "144",
                        "SUBCOUNTY": "MBEERE NORTH",
                        "REG_OFFICE_CODE": "1444",
                        "REG_OFFICE": "KANYUAMBORA"
                    },
                    {
                        "SUBCOUNTY_CODE": "145",
                        "SUBCOUNTY": "MBEERE SOUTH",
                        "REG_OFFICE_CODE": "1451",
                        "REG_OFFICE": "GACHOKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "145",
                        "SUBCOUNTY": "MBEERE SOUTH",
                        "REG_OFFICE_CODE": "1452",
                        "REG_OFFICE": "MWEA"
                    },
                    {
                        "SUBCOUNTY_CODE": "145",
                        "SUBCOUNTY": "MBEERE SOUTH",
                        "REG_OFFICE_CODE": "1453",
                        "REG_OFFICE": "KIRITIRI"
                    },
                    {
                        "SUBCOUNTY_CODE": "145",
                        "SUBCOUNTY": "MBEERE SOUTH",
                        "REG_OFFICE_CODE": "1454",
                        "REG_OFFICE": "MAKIMA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "15",
                "COUNTY": "KITUI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "151",
                        "SUBCOUNTY": "KITUI CENTRAL",
                        "REG_OFFICE_CODE": "1511",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "151",
                        "SUBCOUNTY": "KITUI CENTRAL",
                        "REG_OFFICE_CODE": "1512",
                        "REG_OFFICE": "MIAMBANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "151",
                        "SUBCOUNTY": "KITUI CENTRAL",
                        "REG_OFFICE_CODE": "1513",
                        "REG_OFFICE": "HDM KITUI"
                    },
                    {
                        "SUBCOUNTY_CODE": "152",
                        "SUBCOUNTY": "MWINGI CENTRAL",
                        "REG_OFFICE_CODE": "1521",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "152",
                        "SUBCOUNTY": "MWINGI CENTRAL",
                        "REG_OFFICE_CODE": "1522",
                        "REG_OFFICE": "KIOMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "152",
                        "SUBCOUNTY": "MWINGI CENTRAL",
                        "REG_OFFICE_CODE": "1523",
                        "REG_OFFICE": "MUMBUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "152",
                        "SUBCOUNTY": "MWINGI CENTRAL",
                        "REG_OFFICE_CODE": "1524",
                        "REG_OFFICE": "WAITA"
                    },
                    {
                        "SUBCOUNTY_CODE": "153",
                        "SUBCOUNTY": "KATULANI",
                        "REG_OFFICE_CODE": "1531",
                        "REG_OFFICE": "KATULANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "154",
                        "SUBCOUNTY": "KITUI WEST",
                        "REG_OFFICE_CODE": "1541",
                        "REG_OFFICE": "KAUWI"
                    },
                    {
                        "SUBCOUNTY_CODE": "154",
                        "SUBCOUNTY": "KITUI WEST",
                        "REG_OFFICE_CODE": "1542",
                        "REG_OFFICE": "MUTONGUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "154",
                        "SUBCOUNTY": "KITUI WEST",
                        "REG_OFFICE_CODE": "1543",
                        "REG_OFFICE": "USIANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "155",
                        "SUBCOUNTY": "MUTITO",
                        "REG_OFFICE_CODE": "1551",
                        "REG_OFFICE": "MUTITO"
                    },
                    {
                        "SUBCOUNTY_CODE": "155",
                        "SUBCOUNTY": "MUTITO",
                        "REG_OFFICE_CODE": "1552",
                        "REG_OFFICE": "MWITIKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "156",
                        "SUBCOUNTY": "KISASI",
                        "REG_OFFICE_CODE": "1561",
                        "REG_OFFICE": "KISASI"
                    },
                    {
                        "SUBCOUNTY_CODE": "157",
                        "SUBCOUNTY": "MATINYANI",
                        "REG_OFFICE_CODE": "1571",
                        "REG_OFFICE": "MATINYANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "157",
                        "SUBCOUNTY": "MATINYANI",
                        "REG_OFFICE_CODE": "1572",
                        "REG_OFFICE": "KATHIVO"
                    },
                    {
                        "SUBCOUNTY_CODE": "157",
                        "SUBCOUNTY": "MATINYANI",
                        "REG_OFFICE_CODE": "1573",
                        "REG_OFFICE": "KWA MUTONGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "158",
                        "SUBCOUNTY": "LOWER YATTA",
                        "REG_OFFICE_CODE": "1581",
                        "REG_OFFICE": "YATTA"
                    },
                    {
                        "SUBCOUNTY_CODE": "158",
                        "SUBCOUNTY": "LOWER YATTA",
                        "REG_OFFICE_CODE": "1582",
                        "REG_OFFICE": "KANYANGI "
                    },
                    {
                        "SUBCOUNTY_CODE": "159",
                        "SUBCOUNTY": "MUTOMO",
                        "REG_OFFICE_CODE": "1591",
                        "REG_OFFICE": "MUTOMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "159",
                        "SUBCOUNTY": "MUTOMO",
                        "REG_OFFICE_CODE": "1592",
                        "REG_OFFICE": "IKANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "159",
                        "SUBCOUNTY": "MUTOMO",
                        "REG_OFFICE_CODE": "1593",
                        "REG_OFFICE": "MUTHA"
                    },
                    {
                        "SUBCOUNTY_CODE": "15A",
                        "SUBCOUNTY": "IKUTHA",
                        "REG_OFFICE_CODE": "15A1",
                        "REG_OFFICE": "IKUTHA "
                    },
                    {
                        "SUBCOUNTY_CODE": "15A",
                        "SUBCOUNTY": "IKUTHA",
                        "REG_OFFICE_CODE": "15A2",
                        "REG_OFFICE": "KANZIKO"
                    },
                    {
                        "SUBCOUNTY_CODE": "15A",
                        "SUBCOUNTY": "IKUTHA",
                        "REG_OFFICE_CODE": "15A3",
                        "REG_OFFICE": "ATHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15B",
                        "SUBCOUNTY": "NZAMBANI",
                        "REG_OFFICE_CODE": "15B1",
                        "REG_OFFICE": "CHULUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15B",
                        "SUBCOUNTY": "NZAMBANI",
                        "REG_OFFICE_CODE": "15B2",
                        "REG_OFFICE": "THUA "
                    },
                    {
                        "SUBCOUNTY_CODE": "15B",
                        "SUBCOUNTY": "NZAMBANI",
                        "REG_OFFICE_CODE": "15B3",
                        "REG_OFFICE": "NZANGATHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15C",
                        "SUBCOUNTY": "MIGWANI",
                        "REG_OFFICE_CODE": "15C1",
                        "REG_OFFICE": "MIGWANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15C",
                        "SUBCOUNTY": "MIGWANI",
                        "REG_OFFICE_CODE": "15C2",
                        "REG_OFFICE": "NGUUTANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15C",
                        "SUBCOUNTY": "MIGWANI",
                        "REG_OFFICE_CODE": "15C3",
                        "REG_OFFICE": "NZELUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15D",
                        "SUBCOUNTY": "TSEIKURU",
                        "REG_OFFICE_CODE": "15D1",
                        "REG_OFFICE": "TSEIKURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "15D",
                        "SUBCOUNTY": "TSEIKURU",
                        "REG_OFFICE_CODE": "15D2",
                        "REG_OFFICE": "MASYUNGWA "
                    },
                    {
                        "SUBCOUNTY_CODE": "15D",
                        "SUBCOUNTY": "TSEIKURU",
                        "REG_OFFICE_CODE": "15D3",
                        "REG_OFFICE": "MUSAVANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15E",
                        "SUBCOUNTY": "KYUSO",
                        "REG_OFFICE_CODE": "15E1",
                        "REG_OFFICE": "KYUSO"
                    },
                    {
                        "SUBCOUNTY_CODE": "15E",
                        "SUBCOUNTY": "KYUSO",
                        "REG_OFFICE_CODE": "15E2",
                        "REG_OFFICE": "KAMUWONGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "15E",
                        "SUBCOUNTY": "KYUSO",
                        "REG_OFFICE_CODE": "15E3",
                        "REG_OFFICE": "MIVUKONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15E",
                        "SUBCOUNTY": "KYUSO",
                        "REG_OFFICE_CODE": "15E4",
                        "REG_OFFICE": "NGOMENI "
                    },
                    {
                        "SUBCOUNTY_CODE": "15F",
                        "SUBCOUNTY": "MUMONI",
                        "REG_OFFICE_CODE": "15F1",
                        "REG_OFFICE": "MUMONI CENTRAL "
                    },
                    {
                        "SUBCOUNTY_CODE": "15F",
                        "SUBCOUNTY": "MUMONI",
                        "REG_OFFICE_CODE": "15F2",
                        "REG_OFFICE": "MUMONI SOUTH "
                    },
                    {
                        "SUBCOUNTY_CODE": "15F",
                        "SUBCOUNTY": "MUMONI",
                        "REG_OFFICE_CODE": "15F3",
                        "REG_OFFICE": "MUMONI NORTH"
                    },
                    {
                        "SUBCOUNTY_CODE": "15G",
                        "SUBCOUNTY": "MWINGI EAST",
                        "REG_OFFICE_CODE": "15G1",
                        "REG_OFFICE": "NUU"
                    },
                    {
                        "SUBCOUNTY_CODE": "15G",
                        "SUBCOUNTY": "MWINGI EAST",
                        "REG_OFFICE_CODE": "15G2",
                        "REG_OFFICE": "MUI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15G",
                        "SUBCOUNTY": "MWINGI EAST",
                        "REG_OFFICE_CODE": "15G3",
                        "REG_OFFICE": "NGUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "15H",
                        "SUBCOUNTY": "MUTITU NORTH",
                        "REG_OFFICE_CODE": "15H1",
                        "REG_OFFICE": "MUTITU CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "15J",
                        "SUBCOUNTY": "THAGICU",
                        "REG_OFFICE_CODE": "15J1",
                        "REG_OFFICE": "KANTHUNGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "15J",
                        "SUBCOUNTY": "THAGICU",
                        "REG_OFFICE_CODE": "15J2",
                        "REG_OFFICE": "THARAKA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "16",
                "COUNTY": "MACHAKOS",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "161",
                        "SUBCOUNTY": "MACHAKOS",
                        "REG_OFFICE_CODE": "1611",
                        "REG_OFFICE": "CENTRAL "
                    },
                    {
                        "SUBCOUNTY_CODE": "161",
                        "SUBCOUNTY": "MACHAKOS",
                        "REG_OFFICE_CODE": "1612",
                        "REG_OFFICE": "KALAMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "161",
                        "SUBCOUNTY": "MACHAKOS",
                        "REG_OFFICE_CODE": "1613",
                        "REG_OFFICE": "HDM MACHAKOS"
                    },
                    {
                        "SUBCOUNTY_CODE": "162",
                        "SUBCOUNTY": "KANGUNDO",
                        "REG_OFFICE_CODE": "1621",
                        "REG_OFFICE": "KANGUNDO"
                    },
                    {
                        "SUBCOUNTY_CODE": "162",
                        "SUBCOUNTY": "KANGUNDO",
                        "REG_OFFICE_CODE": "1622",
                        "REG_OFFICE": "KIVAANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "162",
                        "SUBCOUNTY": "KANGUNDO",
                        "REG_OFFICE_CODE": "1623",
                        "REG_OFFICE": "KAKUYUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "163",
                        "SUBCOUNTY": "MWALA",
                        "REG_OFFICE_CODE": "1631",
                        "REG_OFFICE": "MWALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "163",
                        "SUBCOUNTY": "MWALA",
                        "REG_OFFICE_CODE": "1632",
                        "REG_OFFICE": "YATHUI"
                    },
                    {
                        "SUBCOUNTY_CODE": "163",
                        "SUBCOUNTY": "MWALA",
                        "REG_OFFICE_CODE": "1633",
                        "REG_OFFICE": "KIBAUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "163",
                        "SUBCOUNTY": "MWALA",
                        "REG_OFFICE_CODE": "1634",
                        "REG_OFFICE": "MASII"
                    },
                    {
                        "SUBCOUNTY_CODE": "164",
                        "SUBCOUNTY": "YATTA",
                        "REG_OFFICE_CODE": "1641",
                        "REG_OFFICE": "YATTA"
                    },
                    {
                        "SUBCOUNTY_CODE": "164",
                        "SUBCOUNTY": "YATTA",
                        "REG_OFFICE_CODE": "1642",
                        "REG_OFFICE": "KATANGI"
                    },
                    {
                        "SUBCOUNTY_CODE": "164",
                        "SUBCOUNTY": "YATTA",
                        "REG_OFFICE_CODE": "1643",
                        "REG_OFFICE": "IKOMBE"
                    },
                    {
                        "SUBCOUNTY_CODE": "165",
                        "SUBCOUNTY": "MATUNGULU",
                        "REG_OFFICE_CODE": "1651",
                        "REG_OFFICE": "MATUNGULU"
                    },
                    {
                        "SUBCOUNTY_CODE": "165",
                        "SUBCOUNTY": "MATUNGULU",
                        "REG_OFFICE_CODE": "1652",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "165",
                        "SUBCOUNTY": "MATUNGULU",
                        "REG_OFFICE_CODE": "1653",
                        "REG_OFFICE": "KYANZAVI"
                    },
                    {
                        "SUBCOUNTY_CODE": "166",
                        "SUBCOUNTY": "MASINGA",
                        "REG_OFFICE_CODE": "1661",
                        "REG_OFFICE": "MASINGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "166",
                        "SUBCOUNTY": "MASINGA",
                        "REG_OFFICE_CODE": "1662",
                        "REG_OFFICE": "NDITHINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "167",
                        "SUBCOUNTY": "KATHIANI",
                        "REG_OFFICE_CODE": "1671",
                        "REG_OFFICE": "KATHIANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "168",
                        "SUBCOUNTY": "ATHI RIVER",
                        "REG_OFFICE_CODE": "1681",
                        "REG_OFFICE": "MAVOKO"
                    },
                    {
                        "SUBCOUNTY_CODE": "168",
                        "SUBCOUNTY": "ATHI RIVER",
                        "REG_OFFICE_CODE": "1682",
                        "REG_OFFICE": "KINANIE"
                    }
                ]
            },
            {
                "COUNTY_CODE": "17",
                "COUNTY": "MAKUENI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "171",
                        "SUBCOUNTY": "MAKUENI",
                        "REG_OFFICE_CODE": "1711",
                        "REG_OFFICE": "WOTE"
                    },
                    {
                        "SUBCOUNTY_CODE": "171",
                        "SUBCOUNTY": "MAKUENI",
                        "REG_OFFICE_CODE": "1712",
                        "REG_OFFICE": "KAITI"
                    },
                    {
                        "SUBCOUNTY_CODE": "171",
                        "SUBCOUNTY": "MAKUENI",
                        "REG_OFFICE_CODE": "1713",
                        "REG_OFFICE": "KEE"
                    },
                    {
                        "SUBCOUNTY_CODE": "171",
                        "SUBCOUNTY": "MAKUENI",
                        "REG_OFFICE_CODE": "1714",
                        "REG_OFFICE": "HDM MAKUENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "172",
                        "SUBCOUNTY": "KIBWEZI",
                        "REG_OFFICE_CODE": "1721",
                        "REG_OFFICE": "KIBWEZI"
                    },
                    {
                        "SUBCOUNTY_CODE": "172",
                        "SUBCOUNTY": "KIBWEZI",
                        "REG_OFFICE_CODE": "1722",
                        "REG_OFFICE": "MTITO ANDEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "173",
                        "SUBCOUNTY": "MAKINDU",
                        "REG_OFFICE_CODE": "1731",
                        "REG_OFFICE": "MAKINDU"
                    },
                    {
                        "SUBCOUNTY_CODE": "174",
                        "SUBCOUNTY": "KILUNGU",
                        "REG_OFFICE_CODE": "1741",
                        "REG_OFFICE": "KILUNGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "174",
                        "SUBCOUNTY": "KILUNGU",
                        "REG_OFFICE_CODE": "1742",
                        "REG_OFFICE": "ILIMA "
                    },
                    {
                        "SUBCOUNTY_CODE": "175",
                        "SUBCOUNTY": "KATHONZWENI",
                        "REG_OFFICE_CODE": "1751",
                        "REG_OFFICE": "KATHONZWENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "175",
                        "SUBCOUNTY": "KATHONZWENI",
                        "REG_OFFICE_CODE": "1752",
                        "REG_OFFICE": "KITISE"
                    },
                    {
                        "SUBCOUNTY_CODE": "175",
                        "SUBCOUNTY": "KATHONZWENI",
                        "REG_OFFICE_CODE": "1753",
                        "REG_OFFICE": "KANTHUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "175",
                        "SUBCOUNTY": "KATHONZWENI",
                        "REG_OFFICE_CODE": "1754",
                        "REG_OFFICE": "MAVINDINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "175",
                        "SUBCOUNTY": "KATHONZWENI",
                        "REG_OFFICE_CODE": "1755",
                        "REG_OFFICE": "KITHUKI"
                    },
                    {
                        "SUBCOUNTY_CODE": "176",
                        "SUBCOUNTY": "NZAUI",
                        "REG_OFFICE_CODE": "1761",
                        "REG_OFFICE": "MATILIKU"
                    },
                    {
                        "SUBCOUNTY_CODE": "176",
                        "SUBCOUNTY": "NZAUI",
                        "REG_OFFICE_CODE": "1762",
                        "REG_OFFICE": "KALAMBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "176",
                        "SUBCOUNTY": "NZAUI",
                        "REG_OFFICE_CODE": "1763",
                        "REG_OFFICE": "MBITINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "176",
                        "SUBCOUNTY": "NZAUI",
                        "REG_OFFICE_CODE": "1764",
                        "REG_OFFICE": "MULALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "176",
                        "SUBCOUNTY": "NZAUI",
                        "REG_OFFICE_CODE": "1765",
                        "REG_OFFICE": "NGUU"
                    },
                    {
                        "SUBCOUNTY_CODE": "177",
                        "SUBCOUNTY": "MUKAA",
                        "REG_OFFICE_CODE": "1771",
                        "REG_OFFICE": "KILOME"
                    },
                    {
                        "SUBCOUNTY_CODE": "177",
                        "SUBCOUNTY": "MUKAA",
                        "REG_OFFICE_CODE": "1772",
                        "REG_OFFICE": "MALILI"
                    },
                    {
                        "SUBCOUNTY_CODE": "177",
                        "SUBCOUNTY": "MUKAA",
                        "REG_OFFICE_CODE": "1773",
                        "REG_OFFICE": "KASIKEU"
                    },
                    {
                        "SUBCOUNTY_CODE": "177",
                        "SUBCOUNTY": "MUKAA",
                        "REG_OFFICE_CODE": "1774",
                        "REG_OFFICE": "KIOU"
                    },
                    {
                        "SUBCOUNTY_CODE": "178",
                        "SUBCOUNTY": "MBOONI WEST",
                        "REG_OFFICE_CODE": "1781",
                        "REG_OFFICE": "MBOONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "178",
                        "SUBCOUNTY": "MBOONI WEST",
                        "REG_OFFICE_CODE": "1782",
                        "REG_OFFICE": "KITUNDU"
                    },
                    {
                        "SUBCOUNTY_CODE": "178",
                        "SUBCOUNTY": "MBOONI WEST",
                        "REG_OFFICE_CODE": "1783",
                        "REG_OFFICE": "TULIMANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "178",
                        "SUBCOUNTY": "MBOONI WEST",
                        "REG_OFFICE_CODE": "1784",
                        "REG_OFFICE": "KALAWANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "179",
                        "SUBCOUNTY": "MBOONI EAST",
                        "REG_OFFICE_CODE": "1791",
                        "REG_OFFICE": "KITETA"
                    },
                    {
                        "SUBCOUNTY_CODE": "179",
                        "SUBCOUNTY": "MBOONI EAST",
                        "REG_OFFICE_CODE": "1792",
                        "REG_OFFICE": "KISAU"
                    },
                    {
                        "SUBCOUNTY_CODE": "179",
                        "SUBCOUNTY": "MBOONI EAST",
                        "REG_OFFICE_CODE": "1793",
                        "REG_OFFICE": "WAIA "
                    },
                    {
                        "SUBCOUNTY_CODE": "179",
                        "SUBCOUNTY": "MBOONI EAST",
                        "REG_OFFICE_CODE": "1794",
                        "REG_OFFICE": "KAKO"
                    },
                    {
                        "SUBCOUNTY_CODE": "179",
                        "SUBCOUNTY": "MBOONI EAST",
                        "REG_OFFICE_CODE": "1795",
                        "REG_OFFICE": "KALAWA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "18",
                "COUNTY": "NYANDARUA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "181",
                        "SUBCOUNTY": "NYANDARUA NORTH",
                        "REG_OFFICE_CODE": "1811",
                        "REG_OFFICE": "NDARAGWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "181",
                        "SUBCOUNTY": "NYANDARUA NORTH",
                        "REG_OFFICE_CODE": "1812",
                        "REG_OFFICE": "KANYAGIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "181",
                        "SUBCOUNTY": "NYANDARUA NORTH",
                        "REG_OFFICE_CODE": "1813",
                        "REG_OFFICE": "SHAMATA"
                    },
                    {
                        "SUBCOUNTY_CODE": "181",
                        "SUBCOUNTY": "NYANDARUA NORTH",
                        "REG_OFFICE_CODE": "1814",
                        "REG_OFFICE": "MUTANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "182",
                        "SUBCOUNTY": "NYANDARUA 'CEN'",
                        "REG_OFFICE_CODE": "1821",
                        "REG_OFFICE": "OLKALOU"
                    },
                    {
                        "SUBCOUNTY_CODE": "182",
                        "SUBCOUNTY": "NYANDARUA 'CEN'",
                        "REG_OFFICE_CODE": "1822",
                        "REG_OFFICE": "RURII"
                    },
                    {
                        "SUBCOUNTY_CODE": "182",
                        "SUBCOUNTY": "NYANDARUA 'CEN'",
                        "REG_OFFICE_CODE": "1823",
                        "REG_OFFICE": "KAIMBAGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "182",
                        "SUBCOUNTY": "NYANDARUA 'CEN'",
                        "REG_OFFICE_CODE": "1824",
                        "REG_OFFICE": "MAWINGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "182",
                        "SUBCOUNTY": "NYANDARUA 'CEN'",
                        "REG_OFFICE_CODE": "1825",
                        "REG_OFFICE": "HDM NYANDARUA"
                    },
                    {
                        "SUBCOUNTY_CODE": "183",
                        "SUBCOUNTY": "KIPIPIRI",
                        "REG_OFFICE_CODE": "1831",
                        "REG_OFFICE": "KIPIPIRI"
                    },
                    {
                        "SUBCOUNTY_CODE": "183",
                        "SUBCOUNTY": "KIPIPIRI",
                        "REG_OFFICE_CODE": "1832",
                        "REG_OFFICE": "GETA"
                    },
                    {
                        "SUBCOUNTY_CODE": "183",
                        "SUBCOUNTY": "KIPIPIRI",
                        "REG_OFFICE_CODE": "1833",
                        "REG_OFFICE": "WANJOHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "184",
                        "SUBCOUNTY": "KINANGOP",
                        "REG_OFFICE_CODE": "1841",
                        "REG_OFFICE": "SOUTH KINANGOP"
                    },
                    {
                        "SUBCOUNTY_CODE": "184",
                        "SUBCOUNTY": "KINANGOP",
                        "REG_OFFICE_CODE": "1842",
                        "REG_OFFICE": "NYAKIO"
                    },
                    {
                        "SUBCOUNTY_CODE": "184",
                        "SUBCOUNTY": "KINANGOP",
                        "REG_OFFICE_CODE": "1843",
                        "REG_OFFICE": "GITHABAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "185",
                        "SUBCOUNTY": "NYANDARUA SOUTH",
                        "REG_OFFICE_CODE": "1851",
                        "REG_OFFICE": "NORTH KINANGOP"
                    },
                    {
                        "SUBCOUNTY_CODE": "185",
                        "SUBCOUNTY": "NYANDARUA SOUTH",
                        "REG_OFFICE_CODE": "1852",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "186",
                        "SUBCOUNTY": "NYANDARUA WEST",
                        "REG_OFFICE_CODE": "1861",
                        "REG_OFFICE": "GATIMU"
                    },
                    {
                        "SUBCOUNTY_CODE": "186",
                        "SUBCOUNTY": "NYANDARUA WEST",
                        "REG_OFFICE_CODE": "1863",
                        "REG_OFFICE": "SILIBWET"
                    },
                    {
                        "SUBCOUNTY_CODE": "186",
                        "SUBCOUNTY": "NYANDARUA WEST",
                        "REG_OFFICE_CODE": "1864",
                        "REG_OFFICE": "WERU"
                    },
                    {
                        "SUBCOUNTY_CODE": "186",
                        "SUBCOUNTY": "NYANDARUA WEST",
                        "REG_OFFICE_CODE": "1865",
                        "REG_OFFICE": "OL JORO OROK"
                    },
                    {
                        "SUBCOUNTY_CODE": "187",
                        "SUBCOUNTY": "MIRANGINE",
                        "REG_OFFICE_CODE": "1871",
                        "REG_OFFICE": "NGORIKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "187",
                        "SUBCOUNTY": "MIRANGINE",
                        "REG_OFFICE_CODE": "1872",
                        "REG_OFFICE": "TUMAINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "187",
                        "SUBCOUNTY": "MIRANGINE",
                        "REG_OFFICE_CODE": "1873",
                        "REG_OFFICE": "GITUAMBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "187",
                        "SUBCOUNTY": "MIRANGINE",
                        "REG_OFFICE_CODE": "1874",
                        "REG_OFFICE": "MIRANGINE"
                    }
                ]
            },
            {
                "COUNTY_CODE": "19",
                "COUNTY": "NYERI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "191",
                        "SUBCOUNTY": "NYERI CENTRAL",
                        "REG_OFFICE_CODE": "1911",
                        "REG_OFFICE": "MUNICIPALITY "
                    },
                    {
                        "SUBCOUNTY_CODE": "191",
                        "SUBCOUNTY": "NYERI CENTRAL",
                        "REG_OFFICE_CODE": "1912",
                        "REG_OFFICE": "HDM NYERI"
                    },
                    {
                        "SUBCOUNTY_CODE": "192",
                        "SUBCOUNTY": "KIENI EAST",
                        "REG_OFFICE_CODE": "1921",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "192",
                        "SUBCOUNTY": "KIENI EAST",
                        "REG_OFFICE_CODE": "1923",
                        "REG_OFFICE": "KIENI EAST "
                    },
                    {
                        "SUBCOUNTY_CODE": "193",
                        "SUBCOUNTY": "KIENI WEST",
                        "REG_OFFICE_CODE": "1932",
                        "REG_OFFICE": "KIENI WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "193",
                        "SUBCOUNTY": "KIENI WEST",
                        "REG_OFFICE_CODE": "1933",
                        "REG_OFFICE": "GATARAKWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "194",
                        "SUBCOUNTY": "TETU",
                        "REG_OFFICE_CODE": "1941",
                        "REG_OFFICE": "TETU WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "194",
                        "SUBCOUNTY": "TETU",
                        "REG_OFFICE_CODE": "1942",
                        "REG_OFFICE": "TETU EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "195",
                        "SUBCOUNTY": "NYERI SOUTH",
                        "REG_OFFICE_CODE": "1951",
                        "REG_OFFICE": "OTHAYA CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "195",
                        "SUBCOUNTY": "NYERI SOUTH",
                        "REG_OFFICE_CODE": "1952",
                        "REG_OFFICE": "OTHAYA SOUTH "
                    },
                    {
                        "SUBCOUNTY_CODE": "196",
                        "SUBCOUNTY": "MATHIRA EAST",
                        "REG_OFFICE_CODE": "1961",
                        "REG_OFFICE": "MATHIRA"
                    },
                    {
                        "SUBCOUNTY_CODE": "196",
                        "SUBCOUNTY": "MATHIRA EAST",
                        "REG_OFFICE_CODE": "1962",
                        "REG_OFFICE": "KIRIMARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "196",
                        "SUBCOUNTY": "MATHIRA EAST",
                        "REG_OFFICE_CODE": "1964",
                        "REG_OFFICE": "MAGUTU "
                    },
                    {
                        "SUBCOUNTY_CODE": "197",
                        "SUBCOUNTY": "MATHIRA WEST",
                        "REG_OFFICE_CODE": "1971",
                        "REG_OFFICE": "KIRIMUKUYU"
                    },
                    {
                        "SUBCOUNTY_CODE": "197",
                        "SUBCOUNTY": "MATHIRA WEST",
                        "REG_OFFICE_CODE": "1972",
                        "REG_OFFICE": "RUGURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "197",
                        "SUBCOUNTY": "MATHIRA WEST",
                        "REG_OFFICE_CODE": "1973",
                        "REG_OFFICE": "NGORANO"
                    },
                    {
                        "SUBCOUNTY_CODE": "198",
                        "SUBCOUNTY": "MUKURWEINI",
                        "REG_OFFICE_CODE": "1981",
                        "REG_OFFICE": "MUKURWEINI CEN."
                    },
                    {
                        "SUBCOUNTY_CODE": "198",
                        "SUBCOUNTY": "MUKURWEINI",
                        "REG_OFFICE_CODE": "1984",
                        "REG_OFFICE": "MUKURWEINI 'W' "
                    }
                ]
            },
            {
                "COUNTY_CODE": "20",
                "COUNTY": "KIRINYAGA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "201",
                        "SUBCOUNTY": "KIRINYAGA 'CEN'",
                        "REG_OFFICE_CODE": "2011",
                        "REG_OFFICE": "KERUGOYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "201",
                        "SUBCOUNTY": "KIRINYAGA 'CEN'",
                        "REG_OFFICE_CODE": "2012",
                        "REG_OFFICE": "INOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "201",
                        "SUBCOUNTY": "KIRINYAGA 'CEN'",
                        "REG_OFFICE_CODE": "2013",
                        "REG_OFFICE": "MUTITU"
                    },
                    {
                        "SUBCOUNTY_CODE": "201",
                        "SUBCOUNTY": "KIRINYAGA 'CEN'",
                        "REG_OFFICE_CODE": "2014",
                        "REG_OFFICE": "HDM KIRINYAGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "201",
                        "SUBCOUNTY": "KIRINYAGA 'CEN'",
                        "REG_OFFICE_CODE": "2015",
                        "REG_OFFICE": "KAGUMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "202",
                        "SUBCOUNTY": "KIRINYAGA EAST",
                        "REG_OFFICE_CODE": "2021",
                        "REG_OFFICE": "GICHUGU CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "202",
                        "SUBCOUNTY": "KIRINYAGA EAST",
                        "REG_OFFICE_CODE": "2022",
                        "REG_OFFICE": "GICHUGU EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "202",
                        "SUBCOUNTY": "KIRINYAGA EAST",
                        "REG_OFFICE_CODE": "2023",
                        "REG_OFFICE": "GICHUGU WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "203",
                        "SUBCOUNTY": "KIRINYAGA WEST",
                        "REG_OFFICE_CODE": "2031",
                        "REG_OFFICE": "SAGANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "203",
                        "SUBCOUNTY": "KIRINYAGA WEST",
                        "REG_OFFICE_CODE": "2032",
                        "REG_OFFICE": "NDIA EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "203",
                        "SUBCOUNTY": "KIRINYAGA WEST",
                        "REG_OFFICE_CODE": "2033",
                        "REG_OFFICE": "NDIA WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "203",
                        "SUBCOUNTY": "KIRINYAGA WEST",
                        "REG_OFFICE_CODE": "2034",
                        "REG_OFFICE": "KIBURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "204",
                        "SUBCOUNTY": "MWEA EAST",
                        "REG_OFFICE_CODE": "2041",
                        "REG_OFFICE": "MWEA CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "204",
                        "SUBCOUNTY": "MWEA EAST",
                        "REG_OFFICE_CODE": "2042",
                        "REG_OFFICE": "NYANGATI"
                    },
                    {
                        "SUBCOUNTY_CODE": "204",
                        "SUBCOUNTY": "MWEA EAST",
                        "REG_OFFICE_CODE": "2043",
                        "REG_OFFICE": "MURINDUKO"
                    },
                    {
                        "SUBCOUNTY_CODE": "204",
                        "SUBCOUNTY": "MWEA EAST",
                        "REG_OFFICE_CODE": "2044",
                        "REG_OFFICE": "THIBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "205",
                        "SUBCOUNTY": "MWEA WEST",
                        "REG_OFFICE_CODE": "2051",
                        "REG_OFFICE": "MUTITHI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "21",
                "COUNTY": "MURANGA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "211",
                        "SUBCOUNTY": "MURANGA EAST",
                        "REG_OFFICE_CODE": "2111",
                        "REG_OFFICE": "KIHARU "
                    },
                    {
                        "SUBCOUNTY_CODE": "211",
                        "SUBCOUNTY": "MURANGA EAST",
                        "REG_OFFICE_CODE": "2112",
                        "REG_OFFICE": "GAKINDU"
                    },
                    {
                        "SUBCOUNTY_CODE": "211",
                        "SUBCOUNTY": "MURANGA EAST",
                        "REG_OFFICE_CODE": "2113",
                        "REG_OFFICE": "GATURI"
                    },
                    {
                        "SUBCOUNTY_CODE": "211",
                        "SUBCOUNTY": "MURANGA EAST",
                        "REG_OFFICE_CODE": "2115",
                        "REG_OFFICE": "HDM MURANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "212",
                        "SUBCOUNTY": "MATHIOYA",
                        "REG_OFFICE_CODE": "2121",
                        "REG_OFFICE": "MATHIOYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "212",
                        "SUBCOUNTY": "MATHIOYA",
                        "REG_OFFICE_CODE": "2122",
                        "REG_OFFICE": "KIRU"
                    },
                    {
                        "SUBCOUNTY_CODE": "212",
                        "SUBCOUNTY": "MATHIOYA",
                        "REG_OFFICE_CODE": "2123",
                        "REG_OFFICE": "NJUMBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "212",
                        "SUBCOUNTY": "MATHIOYA",
                        "REG_OFFICE_CODE": "2124",
                        "REG_OFFICE": "GITUGI"
                    },
                    {
                        "SUBCOUNTY_CODE": "213",
                        "SUBCOUNTY": "KANDARA",
                        "REG_OFFICE_CODE": "2131",
                        "REG_OFFICE": "KANDARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "213",
                        "SUBCOUNTY": "KANDARA",
                        "REG_OFFICE_CODE": "2132",
                        "REG_OFFICE": "GITHUMU"
                    },
                    {
                        "SUBCOUNTY_CODE": "213",
                        "SUBCOUNTY": "KANDARA",
                        "REG_OFFICE_CODE": "2133",
                        "REG_OFFICE": "KAGUNDU-INI"
                    },
                    {
                        "SUBCOUNTY_CODE": "214",
                        "SUBCOUNTY": "KIGUMO",
                        "REG_OFFICE_CODE": "2141",
                        "REG_OFFICE": "KIGUMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "214",
                        "SUBCOUNTY": "KIGUMO",
                        "REG_OFFICE_CODE": "2142",
                        "REG_OFFICE": "KINYONA"
                    },
                    {
                        "SUBCOUNTY_CODE": "214",
                        "SUBCOUNTY": "KIGUMO",
                        "REG_OFFICE_CODE": "2143",
                        "REG_OFFICE": "MUTHITHI"
                    },
                    {
                        "SUBCOUNTY_CODE": "215",
                        "SUBCOUNTY": "MURANGA SOUTH",
                        "REG_OFFICE_CODE": "2151",
                        "REG_OFFICE": "MAKUYU"
                    },
                    {
                        "SUBCOUNTY_CODE": "215",
                        "SUBCOUNTY": "MURANGA SOUTH",
                        "REG_OFFICE_CODE": "2152",
                        "REG_OFFICE": "MARAGUA"
                    },
                    {
                        "SUBCOUNTY_CODE": "215",
                        "SUBCOUNTY": "MURANGA SOUTH",
                        "REG_OFFICE_CODE": "2153",
                        "REG_OFFICE": "KIMORORI"
                    },
                    {
                        "SUBCOUNTY_CODE": "216",
                        "SUBCOUNTY": "KANGEMA",
                        "REG_OFFICE_CODE": "2161",
                        "REG_OFFICE": "KANYENYA-INI"
                    },
                    {
                        "SUBCOUNTY_CODE": "216",
                        "SUBCOUNTY": "KANGEMA",
                        "REG_OFFICE_CODE": "2162",
                        "REG_OFFICE": "MUGURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "217",
                        "SUBCOUNTY": "KAHURO",
                        "REG_OFFICE_CODE": "2171",
                        "REG_OFFICE": "MUGOIRI"
                    },
                    {
                        "SUBCOUNTY_CODE": "217",
                        "SUBCOUNTY": "KAHURO",
                        "REG_OFFICE_CODE": "2172",
                        "REG_OFFICE": "MURARANDIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "217",
                        "SUBCOUNTY": "KAHURO",
                        "REG_OFFICE_CODE": "2173",
                        "REG_OFFICE": "WANGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2181",
                        "REG_OFFICE": "GATANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2182",
                        "REG_OFFICE": "SAMURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2183",
                        "REG_OFFICE": "KIHUMBU-INI"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2184",
                        "REG_OFFICE": "KIGORO"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2185",
                        "REG_OFFICE": "KARIARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2186",
                        "REG_OFFICE": "KAKUZI"
                    },
                    {
                        "SUBCOUNTY_CODE": "218",
                        "SUBCOUNTY": "GATANGA",
                        "REG_OFFICE_CODE": "2187",
                        "REG_OFFICE": "MITUBIRI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "22",
                "COUNTY": "KIAMBU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "221",
                        "SUBCOUNTY": "KIAMBU",
                        "REG_OFFICE_CODE": "2211",
                        "REG_OFFICE": "MUNICIPALITY"
                    },
                    {
                        "SUBCOUNTY_CODE": "221",
                        "SUBCOUNTY": "KIAMBU",
                        "REG_OFFICE_CODE": "2212",
                        "REG_OFFICE": "TING'ANG'A"
                    },
                    {
                        "SUBCOUNTY_CODE": "222",
                        "SUBCOUNTY": "LIMURU",
                        "REG_OFFICE_CODE": "2221",
                        "REG_OFFICE": "LIMURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "222",
                        "SUBCOUNTY": "LIMURU",
                        "REG_OFFICE_CODE": "2222",
                        "REG_OFFICE": "NDEIYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "223",
                        "SUBCOUNTY": "LARI",
                        "REG_OFFICE_CODE": "2231",
                        "REG_OFFICE": "LARI"
                    },
                    {
                        "SUBCOUNTY_CODE": "223",
                        "SUBCOUNTY": "LARI",
                        "REG_OFFICE_CODE": "2232",
                        "REG_OFFICE": "KIJABE"
                    },
                    {
                        "SUBCOUNTY_CODE": "223",
                        "SUBCOUNTY": "LARI",
                        "REG_OFFICE_CODE": "2233",
                        "REG_OFFICE": "GATAMAIYU"
                    },
                    {
                        "SUBCOUNTY_CODE": "223",
                        "SUBCOUNTY": "LARI",
                        "REG_OFFICE_CODE": "2234",
                        "REG_OFFICE": "KINALE"
                    },
                    {
                        "SUBCOUNTY_CODE": "224",
                        "SUBCOUNTY": "GITHUNGURI",
                        "REG_OFFICE_CODE": "2241",
                        "REG_OFFICE": "GITHUNGURI"
                    },
                    {
                        "SUBCOUNTY_CODE": "224",
                        "SUBCOUNTY": "GITHUNGURI",
                        "REG_OFFICE_CODE": "2242",
                        "REG_OFFICE": "KOMOTHAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "224",
                        "SUBCOUNTY": "GITHUNGURI",
                        "REG_OFFICE_CODE": "2243",
                        "REG_OFFICE": "IKINU"
                    },
                    {
                        "SUBCOUNTY_CODE": "225",
                        "SUBCOUNTY": "GATUNDU NORTH",
                        "REG_OFFICE_CODE": "2251",
                        "REG_OFFICE": "MANGU "
                    },
                    {
                        "SUBCOUNTY_CODE": "225",
                        "SUBCOUNTY": "GATUNDU NORTH",
                        "REG_OFFICE_CODE": "2252",
                        "REG_OFFICE": "CHANIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "227",
                        "SUBCOUNTY": "THIKA WEST",
                        "REG_OFFICE_CODE": "2271",
                        "REG_OFFICE": "BIASHARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "227",
                        "SUBCOUNTY": "THIKA WEST",
                        "REG_OFFICE_CODE": "2272",
                        "REG_OFFICE": "MAKONGENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "227",
                        "SUBCOUNTY": "THIKA WEST",
                        "REG_OFFICE_CODE": "2274",
                        "REG_OFFICE": "KOMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "227",
                        "SUBCOUNTY": "THIKA WEST",
                        "REG_OFFICE_CODE": "2275",
                        "REG_OFFICE": "KALIMONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "227",
                        "SUBCOUNTY": "THIKA WEST",
                        "REG_OFFICE_CODE": "2277",
                        "REG_OFFICE": "HDM THIKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "228",
                        "SUBCOUNTY": "THIKA EAST",
                        "REG_OFFICE_CODE": "2281",
                        "REG_OFFICE": "NGOLIBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "228",
                        "SUBCOUNTY": "THIKA EAST",
                        "REG_OFFICE_CODE": "2282",
                        "REG_OFFICE": "KAKUZI"
                    },
                    {
                        "SUBCOUNTY_CODE": "228",
                        "SUBCOUNTY": "THIKA EAST",
                        "REG_OFFICE_CODE": "2284",
                        "REG_OFFICE": "THIKA EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "229",
                        "SUBCOUNTY": "RUIRU",
                        "REG_OFFICE_CODE": "2291",
                        "REG_OFFICE": "RUIRU"
                    },
                    {
                        "SUBCOUNTY_CODE": "229",
                        "SUBCOUNTY": "RUIRU",
                        "REG_OFFICE_CODE": "2292",
                        "REG_OFFICE": "GITHURAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "22A",
                        "SUBCOUNTY": "KIKUYU",
                        "REG_OFFICE_CODE": "22A1",
                        "REG_OFFICE": "KIKUYU"
                    },
                    {
                        "SUBCOUNTY_CODE": "22A",
                        "SUBCOUNTY": "KIKUYU",
                        "REG_OFFICE_CODE": "22A3",
                        "REG_OFFICE": "KARAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "22A",
                        "SUBCOUNTY": "KIKUYU",
                        "REG_OFFICE_CODE": "22A4",
                        "REG_OFFICE": "KINOO"
                    },
                    {
                        "SUBCOUNTY_CODE": "22B",
                        "SUBCOUNTY": "GATUNDU SOUTH",
                        "REG_OFFICE_CODE": "22B1",
                        "REG_OFFICE": "NGENDA "
                    },
                    {
                        "SUBCOUNTY_CODE": "22B",
                        "SUBCOUNTY": "GATUNDU SOUTH",
                        "REG_OFFICE_CODE": "22B2",
                        "REG_OFFICE": "NDARUGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "22B",
                        "SUBCOUNTY": "GATUNDU SOUTH",
                        "REG_OFFICE_CODE": "22B3",
                        "REG_OFFICE": "KIGANJO"
                    },
                    {
                        "SUBCOUNTY_CODE": "22C",
                        "SUBCOUNTY": "KIAMBAA",
                        "REG_OFFICE_CODE": "22C1",
                        "REG_OFFICE": "KIAMBAA"
                    },
                    {
                        "SUBCOUNTY_CODE": "22C",
                        "SUBCOUNTY": "KIAMBAA",
                        "REG_OFFICE_CODE": "22C2",
                        "REG_OFFICE": "KIHARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "22D",
                        "SUBCOUNTY": "KABETE",
                        "REG_OFFICE_CODE": "22D1",
                        "REG_OFFICE": "KABETE"
                    },
                    {
                        "SUBCOUNTY_CODE": "22E",
                        "SUBCOUNTY": "JUJA",
                        "REG_OFFICE_CODE": "22E1",
                        "REG_OFFICE": "JUJA"
                    },
                    {
                        "SUBCOUNTY_CODE": "22F",
                        "SUBCOUNTY": "GITHURAI",
                        "REG_OFFICE_CODE": "22F1",
                        "REG_OFFICE": "GITHURAI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "23",
                "COUNTY": "TURKANA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "231",
                        "SUBCOUNTY": "TURKANA 'CEN'",
                        "REG_OFFICE_CODE": "2311",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "231",
                        "SUBCOUNTY": "TURKANA 'CEN'",
                        "REG_OFFICE_CODE": "2312",
                        "REG_OFFICE": "KALOKOL"
                    },
                    {
                        "SUBCOUNTY_CODE": "231",
                        "SUBCOUNTY": "TURKANA 'CEN'",
                        "REG_OFFICE_CODE": "2313",
                        "REG_OFFICE": "KERIO"
                    },
                    {
                        "SUBCOUNTY_CODE": "231",
                        "SUBCOUNTY": "TURKANA 'CEN'",
                        "REG_OFFICE_CODE": "2314",
                        "REG_OFFICE": "HDM LODWAR"
                    },
                    {
                        "SUBCOUNTY_CODE": "232",
                        "SUBCOUNTY": "TURKANA NORTH",
                        "REG_OFFICE_CODE": "2321",
                        "REG_OFFICE": "LOKITAUNG"
                    },
                    {
                        "SUBCOUNTY_CODE": "232",
                        "SUBCOUNTY": "TURKANA NORTH",
                        "REG_OFFICE_CODE": "2322",
                        "REG_OFFICE": "LAPUR"
                    },
                    {
                        "SUBCOUNTY_CODE": "232",
                        "SUBCOUNTY": "TURKANA NORTH",
                        "REG_OFFICE_CODE": "2323",
                        "REG_OFFICE": "KAALENG"
                    },
                    {
                        "SUBCOUNTY_CODE": "232",
                        "SUBCOUNTY": "TURKANA NORTH",
                        "REG_OFFICE_CODE": "2324",
                        "REG_OFFICE": "KIBISH"
                    },
                    {
                        "SUBCOUNTY_CODE": "232",
                        "SUBCOUNTY": "TURKANA NORTH",
                        "REG_OFFICE_CODE": "2325",
                        "REG_OFFICE": "KATABOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "233",
                        "SUBCOUNTY": "LOIMA",
                        "REG_OFFICE_CODE": "2331",
                        "REG_OFFICE": "LOIMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "233",
                        "SUBCOUNTY": "LOIMA",
                        "REG_OFFICE_CODE": "2332",
                        "REG_OFFICE": "TURKWEL"
                    },
                    {
                        "SUBCOUNTY_CODE": "234",
                        "SUBCOUNTY": "TURKANA SOUTH",
                        "REG_OFFICE_CODE": "2341",
                        "REG_OFFICE": "KATILU"
                    },
                    {
                        "SUBCOUNTY_CODE": "234",
                        "SUBCOUNTY": "TURKANA SOUTH",
                        "REG_OFFICE_CODE": "2342",
                        "REG_OFFICE": "KAINUK"
                    },
                    {
                        "SUBCOUNTY_CODE": "234",
                        "SUBCOUNTY": "TURKANA SOUTH",
                        "REG_OFFICE_CODE": "2343",
                        "REG_OFFICE": "LOKICHAR"
                    },
                    {
                        "SUBCOUNTY_CODE": "235",
                        "SUBCOUNTY": "TURKANA EAST",
                        "REG_OFFICE_CODE": "2351",
                        "REG_OFFICE": "LOKORI"
                    },
                    {
                        "SUBCOUNTY_CODE": "235",
                        "SUBCOUNTY": "TURKANA EAST",
                        "REG_OFFICE_CODE": "2352",
                        "REG_OFFICE": "LOMELO"
                    },
                    {
                        "SUBCOUNTY_CODE": "236",
                        "SUBCOUNTY": "TURKANA WEST",
                        "REG_OFFICE_CODE": "2361",
                        "REG_OFFICE": "KAKUMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "236",
                        "SUBCOUNTY": "TURKANA WEST",
                        "REG_OFFICE_CODE": "2362",
                        "REG_OFFICE": "LOKICHOGGIO"
                    },
                    {
                        "SUBCOUNTY_CODE": "236",
                        "SUBCOUNTY": "TURKANA WEST",
                        "REG_OFFICE_CODE": "2363",
                        "REG_OFFICE": "NANAM"
                    },
                    {
                        "SUBCOUNTY_CODE": "236",
                        "SUBCOUNTY": "TURKANA WEST",
                        "REG_OFFICE_CODE": "2364",
                        "REG_OFFICE": "OROPOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "237",
                        "SUBCOUNTY": "KIBISH",
                        "REG_OFFICE_CODE": "2371",
                        "REG_OFFICE": "KIBISH"
                    },
                    {
                        "SUBCOUNTY_CODE": "237",
                        "SUBCOUNTY": "KIBISH",
                        "REG_OFFICE_CODE": "2372",
                        "REG_OFFICE": "LAPUR"
                    },
                    {
                        "SUBCOUNTY_CODE": "237",
                        "SUBCOUNTY": "KIBISH",
                        "REG_OFFICE_CODE": "2373",
                        "REG_OFFICE": "KAIKOR"
                    }
                ]
            },
            {
                "COUNTY_CODE": "24",
                "COUNTY": "WEST POKOT",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "241",
                        "SUBCOUNTY": "WEST POKOT",
                        "REG_OFFICE_CODE": "2411",
                        "REG_OFFICE": "KAPENGURIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "241",
                        "SUBCOUNTY": "WEST POKOT",
                        "REG_OFFICE_CODE": "2412",
                        "REG_OFFICE": "HDM WEST POKOT"
                    },
                    {
                        "SUBCOUNTY_CODE": "241",
                        "SUBCOUNTY": "WEST POKOT",
                        "REG_OFFICE_CODE": "2413",
                        "REG_OFFICE": "KONGELAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "241",
                        "SUBCOUNTY": "WEST POKOT",
                        "REG_OFFICE_CODE": "2414",
                        "REG_OFFICE": "SOOK"
                    },
                    {
                        "SUBCOUNTY_CODE": "241",
                        "SUBCOUNTY": "WEST POKOT",
                        "REG_OFFICE_CODE": "2415",
                        "REG_OFFICE": "MNAGEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "241",
                        "SUBCOUNTY": "WEST POKOT",
                        "REG_OFFICE_CODE": "2416",
                        "REG_OFFICE": "KANYARKWAT"
                    },
                    {
                        "SUBCOUNTY_CODE": "242",
                        "SUBCOUNTY": "POKOT CENTRAL ",
                        "REG_OFFICE_CODE": "2421",
                        "REG_OFFICE": "SIGOR"
                    },
                    {
                        "SUBCOUNTY_CODE": "242",
                        "SUBCOUNTY": "POKOT CENTRAL ",
                        "REG_OFFICE_CODE": "2422",
                        "REG_OFFICE": "CHESEGON"
                    },
                    {
                        "SUBCOUNTY_CODE": "242",
                        "SUBCOUNTY": "POKOT CENTRAL ",
                        "REG_OFFICE_CODE": "2423",
                        "REG_OFFICE": "BATEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "242",
                        "SUBCOUNTY": "POKOT CENTRAL ",
                        "REG_OFFICE_CODE": "2425",
                        "REG_OFFICE": "SEKERR"
                    },
                    {
                        "SUBCOUNTY_CODE": "243",
                        "SUBCOUNTY": "POKOT SOUTH",
                        "REG_OFFICE_CODE": "2431",
                        "REG_OFFICE": "LELAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "243",
                        "SUBCOUNTY": "POKOT SOUTH",
                        "REG_OFFICE_CODE": "2432",
                        "REG_OFFICE": "TAPACH"
                    },
                    {
                        "SUBCOUNTY_CODE": "243",
                        "SUBCOUNTY": "POKOT SOUTH",
                        "REG_OFFICE_CODE": "2433",
                        "REG_OFFICE": "KAPTABUK"
                    },
                    {
                        "SUBCOUNTY_CODE": "244",
                        "SUBCOUNTY": "POKOT  NORTH",
                        "REG_OFFICE_CODE": "2441",
                        "REG_OFFICE": "ALALE"
                    },
                    {
                        "SUBCOUNTY_CODE": "244",
                        "SUBCOUNTY": "POKOT  NORTH",
                        "REG_OFFICE_CODE": "2442",
                        "REG_OFFICE": "KASEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "244",
                        "SUBCOUNTY": "POKOT  NORTH",
                        "REG_OFFICE_CODE": "2443",
                        "REG_OFFICE": "KACHELIBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "244",
                        "SUBCOUNTY": "POKOT  NORTH",
                        "REG_OFFICE_CODE": "2444",
                        "REG_OFFICE": "KIWAWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "244",
                        "SUBCOUNTY": "POKOT  NORTH",
                        "REG_OFFICE_CODE": "2445",
                        "REG_OFFICE": "KONYAO"
                    },
                    {
                        "SUBCOUNTY_CODE": "245",
                        "SUBCOUNTY": "KIPKOMO",
                        "REG_OFFICE_CODE": "2451",
                        "REG_OFFICE": "CHEPARERIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "245",
                        "SUBCOUNTY": "KIPKOMO",
                        "REG_OFFICE_CODE": "2452",
                        "REG_OFFICE": "CHEPKOBEGH"
                    },
                    {
                        "SUBCOUNTY_CODE": "245",
                        "SUBCOUNTY": "KIPKOMO",
                        "REG_OFFICE_CODE": "2453",
                        "REG_OFFICE": "BATEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "246",
                        "SUBCOUNTY": "KACHELIBA",
                        "REG_OFFICE_CODE": "2461",
                        "REG_OFFICE": "KACHELIBA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "25",
                "COUNTY": "SAMBURU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "251",
                        "SUBCOUNTY": "SAMBURU EAST",
                        "REG_OFFICE_CODE": "2511",
                        "REG_OFFICE": "WAMBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "251",
                        "SUBCOUNTY": "SAMBURU EAST",
                        "REG_OFFICE_CODE": "2512",
                        "REG_OFFICE": "WASO"
                    },
                    {
                        "SUBCOUNTY_CODE": "252",
                        "SUBCOUNTY": "SAMBURU NORTH",
                        "REG_OFFICE_CODE": "2521",
                        "REG_OFFICE": "BARAGOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "252",
                        "SUBCOUNTY": "SAMBURU NORTH",
                        "REG_OFFICE_CODE": "2522",
                        "REG_OFFICE": "NYIRO"
                    },
                    {
                        "SUBCOUNTY_CODE": "253",
                        "SUBCOUNTY": "SAMBURU CENTRAL",
                        "REG_OFFICE_CODE": "2531",
                        "REG_OFFICE": "KIRISIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "253",
                        "SUBCOUNTY": "SAMBURU CENTRAL",
                        "REG_OFFICE_CODE": "2532",
                        "REG_OFFICE": "LORROKI"
                    },
                    {
                        "SUBCOUNTY_CODE": "253",
                        "SUBCOUNTY": "SAMBURU CENTRAL",
                        "REG_OFFICE_CODE": "2533",
                        "REG_OFFICE": "HDM SAMBURU"
                    }
                ]
            },
            {
                "COUNTY_CODE": "26",
                "COUNTY": "TRANS NZOIA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "261",
                        "SUBCOUNTY": "TRANS NZOIA 'W'",
                        "REG_OFFICE_CODE": "2611",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "261",
                        "SUBCOUNTY": "TRANS NZOIA 'W'",
                        "REG_OFFICE_CODE": "2613",
                        "REG_OFFICE": "SABOTI"
                    },
                    {
                        "SUBCOUNTY_CODE": "261",
                        "SUBCOUNTY": "TRANS NZOIA 'W'",
                        "REG_OFFICE_CODE": "2615",
                        "REG_OFFICE": "HDM KITALE"
                    },
                    {
                        "SUBCOUNTY_CODE": "262",
                        "SUBCOUNTY": "TRANS NZOIA 'E'",
                        "REG_OFFICE_CODE": "2621",
                        "REG_OFFICE": "CHERENGANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "262",
                        "SUBCOUNTY": "TRANS NZOIA 'E'",
                        "REG_OFFICE_CODE": "2622",
                        "REG_OFFICE": "KAPLAMAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "263",
                        "SUBCOUNTY": "KWANZA",
                        "REG_OFFICE_CODE": "2631",
                        "REG_OFFICE": "KWANZA"
                    },
                    {
                        "SUBCOUNTY_CODE": "263",
                        "SUBCOUNTY": "KWANZA",
                        "REG_OFFICE_CODE": "2632",
                        "REG_OFFICE": "KAPOMBOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "263",
                        "SUBCOUNTY": "KWANZA",
                        "REG_OFFICE_CODE": "2633",
                        "REG_OFFICE": "KEIYO"
                    },
                    {
                        "SUBCOUNTY_CODE": "263",
                        "SUBCOUNTY": "KWANZA",
                        "REG_OFFICE_CODE": "2634",
                        "REG_OFFICE": "BIDII"
                    },
                    {
                        "SUBCOUNTY_CODE": "264",
                        "SUBCOUNTY": "KIMININI",
                        "REG_OFFICE_CODE": "2641",
                        "REG_OFFICE": "KIMININI"
                    },
                    {
                        "SUBCOUNTY_CODE": "264",
                        "SUBCOUNTY": "KIMININI",
                        "REG_OFFICE_CODE": "2642",
                        "REG_OFFICE": "WAITALUK"
                    },
                    {
                        "SUBCOUNTY_CODE": "265",
                        "SUBCOUNTY": "ENDEBESS",
                        "REG_OFFICE_CODE": "2651",
                        "REG_OFFICE": "ENDEBESS"
                    },
                    {
                        "SUBCOUNTY_CODE": "265",
                        "SUBCOUNTY": "ENDEBESS",
                        "REG_OFFICE_CODE": "2652",
                        "REG_OFFICE": "KAIBEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "265",
                        "SUBCOUNTY": "ENDEBESS",
                        "REG_OFFICE_CODE": "2653",
                        "REG_OFFICE": "CHEPCHOINA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "27",
                "COUNTY": "UASIN GISHU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "271",
                        "SUBCOUNTY": "SOY",
                        "REG_OFFICE_CODE": "2711",
                        "REG_OFFICE": "SOY"
                    },
                    {
                        "SUBCOUNTY_CODE": "271",
                        "SUBCOUNTY": "SOY",
                        "REG_OFFICE_CODE": "2713",
                        "REG_OFFICE": "HDM ELDORET"
                    },
                    {
                        "SUBCOUNTY_CODE": "271",
                        "SUBCOUNTY": "SOY",
                        "REG_OFFICE_CODE": "2714",
                        "REG_OFFICE": "ELD MUNICIPALITY"
                    },
                    {
                        "SUBCOUNTY_CODE": "272",
                        "SUBCOUNTY": "KAPSERET",
                        "REG_OFFICE_CODE": "2721",
                        "REG_OFFICE": "OUTSPAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "272",
                        "SUBCOUNTY": "KAPSERET",
                        "REG_OFFICE_CODE": "2722",
                        "REG_OFFICE": "KAPSERET"
                    },
                    {
                        "SUBCOUNTY_CODE": "272",
                        "SUBCOUNTY": "KAPSERET",
                        "REG_OFFICE_CODE": "2723",
                        "REG_OFFICE": "PIONEER"
                    },
                    {
                        "SUBCOUNTY_CODE": "272",
                        "SUBCOUNTY": "KAPSERET",
                        "REG_OFFICE_CODE": "2724",
                        "REG_OFFICE": "SIMAT"
                    },
                    {
                        "SUBCOUNTY_CODE": "273",
                        "SUBCOUNTY": "MOIBEN",
                        "REG_OFFICE_CODE": "2731",
                        "REG_OFFICE": "MOIBEN"
                    },
                    {
                        "SUBCOUNTY_CODE": "273",
                        "SUBCOUNTY": "MOIBEN",
                        "REG_OFFICE_CODE": "2732",
                        "REG_OFFICE": "AINABTICH"
                    },
                    {
                        "SUBCOUNTY_CODE": "274",
                        "SUBCOUNTY": "TURBO",
                        "REG_OFFICE_CODE": "2741",
                        "REG_OFFICE": "TURBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "274",
                        "SUBCOUNTY": "TURBO",
                        "REG_OFFICE_CODE": "2742",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "275",
                        "SUBCOUNTY": "AINABKOI",
                        "REG_OFFICE_CODE": "2751",
                        "REG_OFFICE": "KAPSOYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "275",
                        "SUBCOUNTY": "AINABKOI",
                        "REG_OFFICE_CODE": "2752",
                        "REG_OFFICE": "AINABKOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "276",
                        "SUBCOUNTY": "KESSES",
                        "REG_OFFICE_CODE": "2761",
                        "REG_OFFICE": "KESSES"
                    }
                ]
            },
            {
                "COUNTY_CODE": "28",
                "COUNTY": "ELGEYO MARAKWET",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "281",
                        "SUBCOUNTY": "KEIYO",
                        "REG_OFFICE_CODE": "2811",
                        "REG_OFFICE": "KAMARINY"
                    },
                    {
                        "SUBCOUNTY_CODE": "281",
                        "SUBCOUNTY": "KEIYO",
                        "REG_OFFICE_CODE": "2812",
                        "REG_OFFICE": "TAMBACH"
                    },
                    {
                        "SUBCOUNTY_CODE": "281",
                        "SUBCOUNTY": "KEIYO",
                        "REG_OFFICE_CODE": "2813",
                        "REG_OFFICE": "KAPCHEMUTWO"
                    },
                    {
                        "SUBCOUNTY_CODE": "281",
                        "SUBCOUNTY": "KEIYO",
                        "REG_OFFICE_CODE": "2814",
                        "REG_OFFICE": "HDM ITEN"
                    },
                    {
                        "SUBCOUNTY_CODE": "282",
                        "SUBCOUNTY": "MARAKWET WEST",
                        "REG_OFFICE_CODE": "2821",
                        "REG_OFFICE": "KAPSOWAR"
                    },
                    {
                        "SUBCOUNTY_CODE": "282",
                        "SUBCOUNTY": "MARAKWET WEST",
                        "REG_OFFICE_CODE": "2822",
                        "REG_OFFICE": "TUNYO"
                    },
                    {
                        "SUBCOUNTY_CODE": "282",
                        "SUBCOUNTY": "MARAKWET WEST",
                        "REG_OFFICE_CODE": "2823",
                        "REG_OFFICE": "CHEBIEMIT"
                    },
                    {
                        "SUBCOUNTY_CODE": "282",
                        "SUBCOUNTY": "MARAKWET WEST",
                        "REG_OFFICE_CODE": "2824",
                        "REG_OFFICE": "KAPCHEROP"
                    },
                    {
                        "COUNTY_CODE": "28",
                        "SUBCOUNTY_CODE": "282",
                        "SUBCOUNTY": "MARAKWET WEST",
                        "REG_OFFICE_CODE": "2825",
                        "REG_OFFICE": "CHEBORORWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "283",
                        "SUBCOUNTY": "MARAKWET EAST",
                        "REG_OFFICE_CODE": "2831",
                        "REG_OFFICE": "TOT"
                    },
                    {
                        "SUBCOUNTY_CODE": "283",
                        "SUBCOUNTY": "MARAKWET EAST",
                        "REG_OFFICE_CODE": "2832",
                        "REG_OFFICE": "CHESONGOCH"
                    },
                    {
                        "SUBCOUNTY_CODE": "283",
                        "SUBCOUNTY": "MARAKWET EAST",
                        "REG_OFFICE_CODE": "2833",
                        "REG_OFFICE": "TIRAP"
                    },
                    {
                        "SUBCOUNTY_CODE": "283",
                        "SUBCOUNTY": "MARAKWET EAST",
                        "REG_OFFICE_CODE": "2834",
                        "REG_OFFICE": "KAPYEGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "284",
                        "SUBCOUNTY": "KEIYO SOUTH",
                        "REG_OFFICE_CODE": "2841",
                        "REG_OFFICE": "CHEPKORIO"
                    },
                    {
                        "SUBCOUNTY_CODE": "284",
                        "SUBCOUNTY": "KEIYO SOUTH",
                        "REG_OFFICE_CODE": "2842",
                        "REG_OFFICE": "METKEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "284",
                        "SUBCOUNTY": "KEIYO SOUTH",
                        "REG_OFFICE_CODE": "2843",
                        "REG_OFFICE": "SOY"
                    },
                    {
                        "SUBCOUNTY_CODE": "284",
                        "SUBCOUNTY": "KEIYO SOUTH",
                        "REG_OFFICE_CODE": "2844",
                        "REG_OFFICE": "KAPTARAKWA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "29",
                "COUNTY": "NANDI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "291",
                        "SUBCOUNTY": "NANDI CENTRAL",
                        "REG_OFFICE_CODE": "2911",
                        "REG_OFFICE": "KAPSABET"
                    },
                    {
                        "SUBCOUNTY_CODE": "291",
                        "SUBCOUNTY": "NANDI CENTRAL",
                        "REG_OFFICE_CODE": "2912",
                        "REG_OFFICE": "KILIBWONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "291",
                        "SUBCOUNTY": "NANDI CENTRAL",
                        "REG_OFFICE_CODE": "2913",
                        "REG_OFFICE": "KAPKANGANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "291",
                        "SUBCOUNTY": "NANDI CENTRAL",
                        "REG_OFFICE_CODE": "2915",
                        "REG_OFFICE": "HDM NANDI"
                    },
                    {
                        "SUBCOUNTY_CODE": "292",
                        "SUBCOUNTY": "NANDI NORTH",
                        "REG_OFFICE_CODE": "2921",
                        "REG_OFFICE": "KABIYET"
                    },
                    {
                        "SUBCOUNTY_CODE": "292",
                        "SUBCOUNTY": "NANDI NORTH",
                        "REG_OFFICE_CODE": "2922",
                        "REG_OFFICE": "CHEPTERWAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "292",
                        "SUBCOUNTY": "NANDI NORTH",
                        "REG_OFFICE_CODE": "2923",
                        "REG_OFFICE": "KIPKAREN"
                    },
                    {
                        "SUBCOUNTY_CODE": "292",
                        "SUBCOUNTY": "NANDI NORTH",
                        "REG_OFFICE_CODE": "2924",
                        "REG_OFFICE": "KURGUNG"
                    },
                    {
                        "SUBCOUNTY_CODE": "293",
                        "SUBCOUNTY": "NANDI EAST",
                        "REG_OFFICE_CODE": "2931",
                        "REG_OFFICE": "NANDI HILLS"
                    },
                    {
                        "SUBCOUNTY_CODE": "293",
                        "SUBCOUNTY": "NANDI EAST",
                        "REG_OFFICE_CODE": "2932",
                        "REG_OFFICE": "OLESSOS"
                    },
                    {
                        "SUBCOUNTY_CODE": "294",
                        "SUBCOUNTY": "NANDI SOUTH",
                        "REG_OFFICE_CODE": "2941",
                        "REG_OFFICE": "KAPTUMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "294",
                        "SUBCOUNTY": "NANDI SOUTH",
                        "REG_OFFICE_CODE": "2942",
                        "REG_OFFICE": "ALDAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "295",
                        "SUBCOUNTY": "TINDIRET",
                        "REG_OFFICE_CODE": "2951",
                        "REG_OFFICE": "TINDIRET"
                    },
                    {
                        "SUBCOUNTY_CODE": "296",
                        "SUBCOUNTY": "CHESUMEI",
                        "REG_OFFICE_CODE": "2961",
                        "REG_OFFICE": "KOSIRAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "296",
                        "SUBCOUNTY": "CHESUMEI",
                        "REG_OFFICE_CODE": "2962",
                        "REG_OFFICE": "KAPTEL"
                    }
                ]
            },
            {
                "COUNTY_CODE": "30",
                "COUNTY": "BARINGO",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "301",
                        "SUBCOUNTY": "BARINGO CENTRAL",
                        "REG_OFFICE_CODE": "3011",
                        "REG_OFFICE": "KABARNET"
                    },
                    {
                        "SUBCOUNTY_CODE": "301",
                        "SUBCOUNTY": "BARINGO CENTRAL",
                        "REG_OFFICE_CODE": "3012",
                        "REG_OFFICE": "TENGES"
                    },
                    {
                        "SUBCOUNTY_CODE": "301",
                        "SUBCOUNTY": "BARINGO CENTRAL",
                        "REG_OFFICE_CODE": "3013",
                        "REG_OFFICE": "SALAWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "301",
                        "SUBCOUNTY": "BARINGO CENTRAL",
                        "REG_OFFICE_CODE": "3014",
                        "REG_OFFICE": "SACHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "301",
                        "SUBCOUNTY": "BARINGO CENTRAL",
                        "REG_OFFICE_CODE": "3015",
                        "REG_OFFICE": "HDM BARINGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "302",
                        "SUBCOUNTY": "BARINGO NORTH",
                        "REG_OFFICE_CODE": "3021",
                        "REG_OFFICE": "KABARTONJO"
                    },
                    {
                        "SUBCOUNTY_CODE": "302",
                        "SUBCOUNTY": "BARINGO NORTH",
                        "REG_OFFICE_CODE": "3022",
                        "REG_OFFICE": "BARWESSA"
                    },
                    {
                        "SUBCOUNTY_CODE": "302",
                        "SUBCOUNTY": "BARINGO NORTH",
                        "REG_OFFICE_CODE": "3023",
                        "REG_OFFICE": "KIPSARAMAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "302",
                        "SUBCOUNTY": "BARINGO NORTH",
                        "REG_OFFICE_CODE": "3024",
                        "REG_OFFICE": "BARTWABWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "303",
                        "SUBCOUNTY": "KOIBATEK",
                        "REG_OFFICE_CODE": "3031",
                        "REG_OFFICE": "ELDAMA RAVINE"
                    },
                    {
                        "SUBCOUNTY_CODE": "303",
                        "SUBCOUNTY": "KOIBATEK",
                        "REG_OFFICE_CODE": "3032",
                        "REG_OFFICE": "ESAGERI"
                    },
                    {
                        "SUBCOUNTY_CODE": "303",
                        "SUBCOUNTY": "KOIBATEK",
                        "REG_OFFICE_CODE": "3033",
                        "REG_OFFICE": "TORONGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "303",
                        "SUBCOUNTY": "KOIBATEK",
                        "REG_OFFICE_CODE": "3034",
                        "REG_OFFICE": "MUMBERES"
                    },
                    {
                        "SUBCOUNTY_CODE": "304",
                        "SUBCOUNTY": "EAST POKOT",
                        "REG_OFFICE_CODE": "3041",
                        "REG_OFFICE": "NGINYANG"
                    },
                    {
                        "SUBCOUNTY_CODE": "304",
                        "SUBCOUNTY": "EAST POKOT",
                        "REG_OFFICE_CODE": "3042",
                        "REG_OFFICE": "TANGULBEI"
                    },
                    {
                        "SUBCOUNTY_CODE": "304",
                        "SUBCOUNTY": "EAST POKOT",
                        "REG_OFFICE_CODE": "3043",
                        "REG_OFFICE": "KOLOA"
                    },
                    {
                        "SUBCOUNTY_CODE": "304",
                        "SUBCOUNTY": "EAST POKOT",
                        "REG_OFFICE_CODE": "3044",
                        "REG_OFFICE": "MONDI"
                    },
                    {
                        "SUBCOUNTY_CODE": "304",
                        "SUBCOUNTY": "EAST POKOT",
                        "REG_OFFICE_CODE": "3045",
                        "REG_OFFICE": "CHURO"
                    },
                    {
                        "SUBCOUNTY_CODE": "304",
                        "SUBCOUNTY": "EAST POKOT",
                        "REG_OFFICE_CODE": "3047",
                        "REG_OFFICE": "AKORET"
                    },
                    {
                        "SUBCOUNTY_CODE": "305",
                        "SUBCOUNTY": "MARIGAT",
                        "REG_OFFICE_CODE": "3051",
                        "REG_OFFICE": "MARIGAT"
                    },
                    {
                        "SUBCOUNTY_CODE": "305",
                        "SUBCOUNTY": "MARIGAT",
                        "REG_OFFICE_CODE": "3052",
                        "REG_OFFICE": "MUKUTANY"
                    },
                    {
                        "SUBCOUNTY_CODE": "305",
                        "SUBCOUNTY": "MARIGAT",
                        "REG_OFFICE_CODE": "3053",
                        "REG_OFFICE": "MOCHONGOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "306",
                        "SUBCOUNTY": "MOGOTIO",
                        "REG_OFFICE_CODE": "3061",
                        "REG_OFFICE": "MOGOTIO"
                    },
                    {
                        "SUBCOUNTY_CODE": "306",
                        "SUBCOUNTY": "MOGOTIO",
                        "REG_OFFICE_CODE": "3062",
                        "REG_OFFICE": "SIRWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "306",
                        "SUBCOUNTY": "MOGOTIO",
                        "REG_OFFICE_CODE": "3063",
                        "REG_OFFICE": "EMINING"
                    },
                    {
                        "SUBCOUNTY_CODE": "306",
                        "SUBCOUNTY": "MOGOTIO",
                        "REG_OFFICE_CODE": "3064",
                        "REG_OFFICE": "KISANANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "306",
                        "SUBCOUNTY": "MOGOTIO",
                        "REG_OFFICE_CODE": "3065",
                        "REG_OFFICE": "KIPNGOROM"
                    }
                ]
            },
            {
                "COUNTY_CODE": "31",
                "COUNTY": "LAIKIPIA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "311",
                        "SUBCOUNTY": "LAIKIPIA EAST",
                        "REG_OFFICE_CODE": "3111",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "311",
                        "SUBCOUNTY": "LAIKIPIA EAST",
                        "REG_OFFICE_CODE": "3112",
                        "REG_OFFICE": "DAIGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "311",
                        "SUBCOUNTY": "LAIKIPIA EAST",
                        "REG_OFFICE_CODE": "3113",
                        "REG_OFFICE": "HDM LAIKIPIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "312",
                        "SUBCOUNTY": "LAIKIPIA NORTH",
                        "REG_OFFICE_CODE": "3121",
                        "REG_OFFICE": "MUKOGODO"
                    },
                    {
                        "SUBCOUNTY_CODE": "313",
                        "SUBCOUNTY": "LAIKIPIA 'CEN'",
                        "REG_OFFICE_CODE": "3131",
                        "REG_OFFICE": "LAMURIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "313",
                        "SUBCOUNTY": "LAIKIPIA 'CEN'",
                        "REG_OFFICE_CODE": "3132",
                        "REG_OFFICE": "MUNYAKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "313",
                        "SUBCOUNTY": "LAIKIPIA 'CEN'",
                        "REG_OFFICE_CODE": "3133",
                        "REG_OFFICE": "SWEET WATERS"
                    },
                    {
                        "SUBCOUNTY_CODE": "314",
                        "SUBCOUNTY": "NYAHURURU",
                        "REG_OFFICE_CODE": "3141",
                        "REG_OFFICE": "NYAHURURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "314",
                        "SUBCOUNTY": "NYAHURURU",
                        "REG_OFFICE_CODE": "3142",
                        "REG_OFFICE": "NGARUA"
                    },
                    {
                        "SUBCOUNTY_CODE": "314",
                        "SUBCOUNTY": "NYAHURURU",
                        "REG_OFFICE_CODE": "3143",
                        "REG_OFFICE": "MARMANET"
                    },
                    {
                        "SUBCOUNTY_CODE": "315",
                        "SUBCOUNTY": "LAIKIPIA WEST",
                        "REG_OFFICE_CODE": "3151",
                        "REG_OFFICE": "RUMURUTI"
                    },
                    {
                        "SUBCOUNTY_CODE": "315",
                        "SUBCOUNTY": "LAIKIPIA WEST",
                        "REG_OFFICE_CODE": "3152",
                        "REG_OFFICE": "OLMORAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "315",
                        "SUBCOUNTY": "LAIKIPIA WEST",
                        "REG_OFFICE_CODE": "3153",
                        "REG_OFFICE": "SIPILI"
                    },
                    {
                        "SUBCOUNTY_CODE": "315",
                        "SUBCOUNTY": "LAIKIPIA WEST",
                        "REG_OFFICE_CODE": "3154",
                        "REG_OFFICE": "MUHOTETU"
                    }
                ]
            },
            {
                "COUNTY_CODE": "32",
                "COUNTY": "NAKURU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "321",
                        "SUBCOUNTY": "NAKURU",
                        "REG_OFFICE_CODE": "3211",
                        "REG_OFFICE": "MUNICIPALITY"
                    },
                    {
                        "SUBCOUNTY_CODE": "321",
                        "SUBCOUNTY": "NAKURU",
                        "REG_OFFICE_CODE": "3212",
                        "REG_OFFICE": "BARUT"
                    },
                    {
                        "SUBCOUNTY_CODE": "321",
                        "SUBCOUNTY": "NAKURU",
                        "REG_OFFICE_CODE": "3213",
                        "REG_OFFICE": "LANET"
                    },
                    {
                        "SUBCOUNTY_CODE": "321",
                        "SUBCOUNTY": "NAKURU",
                        "REG_OFFICE_CODE": "3214",
                        "REG_OFFICE": "HDM NAKURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "322",
                        "SUBCOUNTY": "RONGAI",
                        "REG_OFFICE_CODE": "3221",
                        "REG_OFFICE": "RONGAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "322",
                        "SUBCOUNTY": "RONGAI",
                        "REG_OFFICE_CODE": "3222",
                        "REG_OFFICE": "KAMPI YA MOTO"
                    },
                    {
                        "SUBCOUNTY_CODE": "322",
                        "SUBCOUNTY": "RONGAI",
                        "REG_OFFICE_CODE": "3223",
                        "REG_OFFICE": "NGATA"
                    },
                    {
                        "SUBCOUNTY_CODE": "322",
                        "SUBCOUNTY": "RONGAI",
                        "REG_OFFICE_CODE": "3224",
                        "REG_OFFICE": "SOLAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "323",
                        "SUBCOUNTY": "NAIVASHA",
                        "REG_OFFICE_CODE": "3231",
                        "REG_OFFICE": "NAIVASHA"
                    },
                    {
                        "SUBCOUNTY_CODE": "323",
                        "SUBCOUNTY": "NAIVASHA",
                        "REG_OFFICE_CODE": "3232",
                        "REG_OFFICE": "MAAI MAHIU"
                    },
                    {
                        "SUBCOUNTY_CODE": "323",
                        "SUBCOUNTY": "NAIVASHA",
                        "REG_OFFICE_CODE": "3233",
                        "REG_OFFICE": "KONGONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "324",
                        "SUBCOUNTY": "GILGIL",
                        "REG_OFFICE_CODE": "3241",
                        "REG_OFFICE": "GILGIL"
                    },
                    {
                        "SUBCOUNTY_CODE": "324",
                        "SUBCOUNTY": "GILGIL",
                        "REG_OFFICE_CODE": "3242",
                        "REG_OFFICE": "ELEMENTAITA"
                    },
                    {
                        "SUBCOUNTY_CODE": "324",
                        "SUBCOUNTY": "GILGIL",
                        "REG_OFFICE_CODE": "3243",
                        "REG_OFFICE": "KARUNGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "325",
                        "SUBCOUNTY": "KURESOI",
                        "REG_OFFICE_CODE": "3251",
                        "REG_OFFICE": "KURESOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "325",
                        "SUBCOUNTY": "KURESOI",
                        "REG_OFFICE_CODE": "3252",
                        "REG_OFFICE": "KAMARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "325",
                        "SUBCOUNTY": "KURESOI",
                        "REG_OFFICE_CODE": "3253",
                        "REG_OFFICE": "KERINGET"
                    },
                    {
                        "SUBCOUNTY_CODE": "325",
                        "SUBCOUNTY": "KURESOI",
                        "REG_OFFICE_CODE": "3254",
                        "REG_OFFICE": "OLENGURUONE"
                    },
                    {
                        "SUBCOUNTY_CODE": "326",
                        "SUBCOUNTY": "NAKURU NORTH",
                        "REG_OFFICE_CODE": "3261",
                        "REG_OFFICE": "BAHATI"
                    },
                    {
                        "SUBCOUNTY_CODE": "326",
                        "SUBCOUNTY": "NAKURU NORTH",
                        "REG_OFFICE_CODE": "3262",
                        "REG_OFFICE": "KIAMAINA"
                    },
                    {
                        "SUBCOUNTY_CODE": "326",
                        "SUBCOUNTY": "NAKURU NORTH",
                        "REG_OFFICE_CODE": "3263",
                        "REG_OFFICE": "NDUNDORI"
                    },
                    {
                        "SUBCOUNTY_CODE": "327",
                        "SUBCOUNTY": "SUBUKIA",
                        "REG_OFFICE_CODE": "3271",
                        "REG_OFFICE": "SUBUKIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "327",
                        "SUBCOUNTY": "SUBUKIA",
                        "REG_OFFICE_CODE": "3272",
                        "REG_OFFICE": "KABAZI"
                    },
                    {
                        "SUBCOUNTY_CODE": "327",
                        "SUBCOUNTY": "SUBUKIA",
                        "REG_OFFICE_CODE": "3273",
                        "REG_OFFICE": "MBOGOINI"
                    },
                    {
                        "SUBCOUNTY_CODE": "328",
                        "SUBCOUNTY": "NJORO",
                        "REG_OFFICE_CODE": "3281",
                        "REG_OFFICE": "NJORO"
                    },
                    {
                        "SUBCOUNTY_CODE": "328",
                        "SUBCOUNTY": "NJORO",
                        "REG_OFFICE_CODE": "3282",
                        "REG_OFFICE": "MAU NAROK"
                    },
                    {
                        "SUBCOUNTY_CODE": "328",
                        "SUBCOUNTY": "NJORO",
                        "REG_OFFICE_CODE": "3283",
                        "REG_OFFICE": "LARE"
                    },
                    {
                        "SUBCOUNTY_CODE": "328",
                        "SUBCOUNTY": "NJORO",
                        "REG_OFFICE_CODE": "3284",
                        "REG_OFFICE": "MAUCHE"
                    },
                    {
                        "SUBCOUNTY_CODE": "329",
                        "SUBCOUNTY": "MOLO",
                        "REG_OFFICE_CODE": "3291",
                        "REG_OFFICE": "MOLO"
                    },
                    {
                        "SUBCOUNTY_CODE": "329",
                        "SUBCOUNTY": "MOLO",
                        "REG_OFFICE_CODE": "3292",
                        "REG_OFFICE": "TURI"
                    },
                    {
                        "SUBCOUNTY_CODE": "329",
                        "SUBCOUNTY": "MOLO",
                        "REG_OFFICE_CODE": "3294",
                        "REG_OFFICE": "ELBURGON"
                    }
                ]
            },
            {
                "COUNTY_CODE": "33",
                "COUNTY": "NAROK",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "331",
                        "SUBCOUNTY": "NAROK NORTH",
                        "REG_OFFICE_CODE": "3311",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "331",
                        "SUBCOUNTY": "NAROK NORTH",
                        "REG_OFFICE_CODE": "3312",
                        "REG_OFFICE": "MAU"
                    },
                    {
                        "SUBCOUNTY_CODE": "331",
                        "SUBCOUNTY": "NAROK NORTH",
                        "REG_OFFICE_CODE": "3313",
                        "REG_OFFICE": "OLOKURTO"
                    },
                    {
                        "SUBCOUNTY_CODE": "331",
                        "SUBCOUNTY": "NAROK NORTH",
                        "REG_OFFICE_CODE": "3314",
                        "REG_OFFICE": "HDM NAROK"
                    },
                    {
                        "SUBCOUNTY_CODE": "332",
                        "SUBCOUNTY": "NAROK SOUTH",
                        "REG_OFFICE_CODE": "3321",
                        "REG_OFFICE": "OLOLULUNGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "332",
                        "SUBCOUNTY": "NAROK SOUTH",
                        "REG_OFFICE_CODE": "3322",
                        "REG_OFFICE": "OSUPUKO"
                    },
                    {
                        "SUBCOUNTY_CODE": "332",
                        "SUBCOUNTY": "NAROK SOUTH",
                        "REG_OFFICE_CODE": "3323",
                        "REG_OFFICE": "ILMOTIOK"
                    },
                    {
                        "SUBCOUNTY_CODE": "332",
                        "SUBCOUNTY": "NAROK SOUTH",
                        "REG_OFFICE_CODE": "3324",
                        "REG_OFFICE": "LOITA"
                    },
                    {
                        "SUBCOUNTY_CODE": "332",
                        "SUBCOUNTY": "NAROK SOUTH",
                        "REG_OFFICE_CODE": "3325",
                        "REG_OFFICE": "MARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "333",
                        "SUBCOUNTY": "TRANSMARA EAST",
                        "REG_OFFICE_CODE": "3331",
                        "REG_OFFICE": "EMURUA DIKIRR"
                    },
                    {
                        "SUBCOUNTY_CODE": "333",
                        "SUBCOUNTY": "TRANSMARA EAST",
                        "REG_OFFICE_CODE": "3332",
                        "REG_OFFICE": "OLOLMASANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "334",
                        "SUBCOUNTY": "TRANSMARA WEST",
                        "REG_OFFICE_CODE": "3341",
                        "REG_OFFICE": "KILGORIS"
                    },
                    {
                        "SUBCOUNTY_CODE": "334",
                        "SUBCOUNTY": "TRANSMARA WEST",
                        "REG_OFFICE_CODE": "3342",
                        "REG_OFFICE": "KEYIAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "334",
                        "SUBCOUNTY": "TRANSMARA WEST",
                        "REG_OFFICE_CODE": "3343",
                        "REG_OFFICE": "LOLGORIAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "334",
                        "SUBCOUNTY": "TRANSMARA WEST",
                        "REG_OFFICE_CODE": "3344",
                        "REG_OFFICE": "ANGATA"
                    },
                    {
                        "SUBCOUNTY_CODE": "334",
                        "SUBCOUNTY": "TRANSMARA WEST",
                        "REG_OFFICE_CODE": "3345",
                        "REG_OFFICE": "KIRINDONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "334",
                        "SUBCOUNTY": "TRANSMARA WEST",
                        "REG_OFFICE_CODE": "3346",
                        "REG_OFFICE": "PIRARR"
                    },
                    {
                        "SUBCOUNTY_CODE": "335",
                        "SUBCOUNTY": "NAROK EAST",
                        "REG_OFFICE_CODE": "3351",
                        "REG_OFFICE": "MAU"
                    },
                    {
                        "SUBCOUNTY_CODE": "335",
                        "SUBCOUNTY": "NAROK EAST",
                        "REG_OFFICE_CODE": "3353",
                        "REG_OFFICE": "MOSIRO"
                    },
                    {
                        "SUBCOUNTY_CODE": "336",
                        "SUBCOUNTY": "NAROK WEST",
                        "REG_OFFICE_CODE": "3361",
                        "REG_OFFICE": "MARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "336",
                        "SUBCOUNTY": "NAROK WEST",
                        "REG_OFFICE_CODE": "3362",
                        "REG_OFFICE": "ILMOTIOK"
                    }
                ]
            },
            {
                "COUNTY_CODE": "34",
                "COUNTY": "KAJIADO",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "341",
                        "SUBCOUNTY": "KAJIADO CENTRAL",
                        "REG_OFFICE_CODE": "3411",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "341",
                        "SUBCOUNTY": "KAJIADO CENTRAL",
                        "REG_OFFICE_CODE": "3412",
                        "REG_OFFICE": "LOODOKILANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "341",
                        "SUBCOUNTY": "KAJIADO CENTRAL",
                        "REG_OFFICE_CODE": "3413",
                        "REG_OFFICE": "ENKORIKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "341",
                        "SUBCOUNTY": "KAJIADO CENTRAL",
                        "REG_OFFICE_CODE": "3414",
                        "REG_OFFICE": "NAMANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "341",
                        "SUBCOUNTY": "KAJIADO CENTRAL",
                        "REG_OFFICE_CODE": "3415",
                        "REG_OFFICE": "BISSIL"
                    },
                    {
                        "SUBCOUNTY_CODE": "341",
                        "SUBCOUNTY": "KAJIADO CENTRAL",
                        "REG_OFFICE_CODE": "3417",
                        "REG_OFFICE": "HDM KAJIADO"
                    },
                    {
                        "SUBCOUNTY_CODE": "342",
                        "SUBCOUNTY": "KAJIADO WEST",
                        "REG_OFFICE_CODE": "3421",
                        "REG_OFFICE": "MAGADI"
                    },
                    {
                        "SUBCOUNTY_CODE": "342",
                        "SUBCOUNTY": "KAJIADO WEST",
                        "REG_OFFICE_CODE": "3422",
                        "REG_OFFICE": "EWUASO KEDONG"
                    },
                    {
                        "SUBCOUNTY_CODE": "342",
                        "SUBCOUNTY": "KAJIADO WEST",
                        "REG_OFFICE_CODE": "3423",
                        "REG_OFFICE": "HDM KAJIADO WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "343",
                        "SUBCOUNTY": "KAJIADO NORTH",
                        "REG_OFFICE_CODE": "3431",
                        "REG_OFFICE": "NGONG"
                    },
                    {
                        "SUBCOUNTY_CODE": "343",
                        "SUBCOUNTY": "KAJIADO NORTH",
                        "REG_OFFICE_CODE": "3432",
                        "REG_OFFICE": "ONGATA RONGAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "344",
                        "SUBCOUNTY": "LOITOKTOK",
                        "REG_OFFICE_CODE": "3441",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "344",
                        "SUBCOUNTY": "LOITOKTOK",
                        "REG_OFFICE_CODE": "3442",
                        "REG_OFFICE": "KIMANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "344",
                        "SUBCOUNTY": "LOITOKTOK",
                        "REG_OFFICE_CODE": "3443",
                        "REG_OFFICE": "ROMBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "344",
                        "SUBCOUNTY": "LOITOKTOK",
                        "REG_OFFICE_CODE": "3444",
                        "REG_OFFICE": "LENGISM"
                    },
                    {
                        "SUBCOUNTY_CODE": "345",
                        "SUBCOUNTY": "KAJIADO EAST",
                        "REG_OFFICE_CODE": "3451",
                        "REG_OFFICE": "ISINYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "345",
                        "SUBCOUNTY": "KAJIADO EAST",
                        "REG_OFFICE_CODE": "3452",
                        "REG_OFFICE": "KITENGELA"
                    },
                    {
                        "SUBCOUNTY_CODE": "346",
                        "SUBCOUNTY": "MASHURU",
                        "REG_OFFICE_CODE": "3461",
                        "REG_OFFICE": "MASHUURU"
                    }
                ]
            },
            {
                "COUNTY_CODE": "35",
                "COUNTY": "KERICHO",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "351",
                        "SUBCOUNTY": "KERICHO EAST",
                        "REG_OFFICE_CODE": "3511",
                        "REG_OFFICE": "AINAMOI"
                    },
                    {
                        "SUBCOUNTY_CODE": "351",
                        "SUBCOUNTY": "KERICHO EAST",
                        "REG_OFFICE_CODE": "3512",
                        "REG_OFFICE": "SOIN"
                    },
                    {
                        "SUBCOUNTY_CODE": "351",
                        "SUBCOUNTY": "KERICHO EAST",
                        "REG_OFFICE_CODE": "3513",
                        "REG_OFFICE": "HDM KERICHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "352",
                        "SUBCOUNTY": "KERICHO WEST",
                        "REG_OFFICE_CODE": "3521",
                        "REG_OFFICE": "BELGUT"
                    },
                    {
                        "SUBCOUNTY_CODE": "352",
                        "SUBCOUNTY": "KERICHO WEST",
                        "REG_OFFICE_CODE": "3522",
                        "REG_OFFICE": "SIGOWET"
                    },
                    {
                        "SUBCOUNTY_CODE": "352",
                        "SUBCOUNTY": "KERICHO WEST",
                        "REG_OFFICE_CODE": "3523",
                        "REG_OFFICE": "KABIANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "353",
                        "SUBCOUNTY": "LONDIANI",
                        "REG_OFFICE_CODE": "3531",
                        "REG_OFFICE": "LONDIANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "353",
                        "SUBCOUNTY": "LONDIANI",
                        "REG_OFFICE_CODE": "3533",
                        "REG_OFFICE": "SORGET"
                    },
                    {
                        "SUBCOUNTY_CODE": "353",
                        "SUBCOUNTY": "LONDIANI",
                        "REG_OFFICE_CODE": "3534",
                        "REG_OFFICE": "TENDENO"
                    },
                    {
                        "SUBCOUNTY_CODE": "353",
                        "SUBCOUNTY": "LONDIANI",
                        "REG_OFFICE_CODE": "3535",
                        "REG_OFFICE": "CHEPSEON"
                    },
                    {
                        "SUBCOUNTY_CODE": "354",
                        "SUBCOUNTY": "BURETI",
                        "REG_OFFICE_CODE": "3541",
                        "REG_OFFICE": "BURETI"
                    },
                    {
                        "SUBCOUNTY_CODE": "354",
                        "SUBCOUNTY": "BURETI",
                        "REG_OFFICE_CODE": "3542",
                        "REG_OFFICE": "RORET"
                    },
                    {
                        "SUBCOUNTY_CODE": "354",
                        "SUBCOUNTY": "BURETI",
                        "REG_OFFICE_CODE": "3543",
                        "REG_OFFICE": "CHEBORGE"
                    },
                    {
                        "SUBCOUNTY_CODE": "355",
                        "SUBCOUNTY": "KIPKELION",
                        "REG_OFFICE_CODE": "3551",
                        "REG_OFFICE": "KIPKELION"
                    },
                    {
                        "SUBCOUNTY_CODE": "355",
                        "SUBCOUNTY": "KIPKELION",
                        "REG_OFFICE_CODE": "3552",
                        "REG_OFFICE": "KAMASIAN"
                    },
                    {
                        "SUBCOUNTY_CODE": "355",
                        "SUBCOUNTY": "KIPKELION",
                        "REG_OFFICE_CODE": "3553",
                        "REG_OFFICE": "CHILCHILA"
                    },
                    {
                        "SUBCOUNTY_CODE": "355",
                        "SUBCOUNTY": "KIPKELION",
                        "REG_OFFICE_CODE": "3554",
                        "REG_OFFICE": "KUNYAK"
                    }
                ]
            },
            {
                "COUNTY_CODE": "36",
                "COUNTY": "BOMET",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "361",
                        "SUBCOUNTY": "BOMET CENTRAL",
                        "REG_OFFICE_CODE": "3611",
                        "REG_OFFICE": "BOMET CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "361",
                        "SUBCOUNTY": "BOMET CENTRAL",
                        "REG_OFFICE_CODE": "3612",
                        "REG_OFFICE": "LONGISA"
                    },
                    {
                        "SUBCOUNTY_CODE": "361",
                        "SUBCOUNTY": "BOMET CENTRAL",
                        "REG_OFFICE_CODE": "3613",
                        "REG_OFFICE": "HDM BOMET"
                    },
                    {
                        "SUBCOUNTY_CODE": "362",
                        "SUBCOUNTY": "SOTIK",
                        "REG_OFFICE_CODE": "3621",
                        "REG_OFFICE": "SOTIK CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "362",
                        "SUBCOUNTY": "SOTIK",
                        "REG_OFFICE_CODE": "3622",
                        "REG_OFFICE": "MUTARAKWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "362",
                        "SUBCOUNTY": "SOTIK",
                        "REG_OFFICE_CODE": "3623",
                        "REG_OFFICE": "KAPLETUNDO"
                    },
                    {
                        "SUBCOUNTY_CODE": "362",
                        "SUBCOUNTY": "SOTIK",
                        "REG_OFFICE_CODE": "3624",
                        "REG_OFFICE": "ABOSI"
                    },
                    {
                        "SUBCOUNTY_CODE": "362",
                        "SUBCOUNTY": "SOTIK",
                        "REG_OFFICE_CODE": "3625",
                        "REG_OFFICE": "NDANAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "363",
                        "SUBCOUNTY": "CHEPALUNGU",
                        "REG_OFFICE_CODE": "3631",
                        "REG_OFFICE": "SIONGIROI"
                    },
                    {
                        "SUBCOUNTY_CODE": "363",
                        "SUBCOUNTY": "CHEPALUNGU",
                        "REG_OFFICE_CODE": "3632",
                        "REG_OFFICE": "SIGOR"
                    },
                    {
                        "SUBCOUNTY_CODE": "364",
                        "SUBCOUNTY": "KONOIN",
                        "REG_OFFICE_CODE": "3641",
                        "REG_OFFICE": "KONOIN"
                    },
                    {
                        "SUBCOUNTY_CODE": "364",
                        "SUBCOUNTY": "KONOIN",
                        "REG_OFFICE_CODE": "3642",
                        "REG_OFFICE": "KIMULOT"
                    },
                    {
                        "SUBCOUNTY_CODE": "364",
                        "SUBCOUNTY": "KONOIN",
                        "REG_OFFICE_CODE": "3643",
                        "REG_OFFICE": "CHEPTALAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "365",
                        "SUBCOUNTY": "BOMET EAST",
                        "REG_OFFICE_CODE": "3651",
                        "REG_OFFICE": "LONGISA"
                    },
                    {
                        "SUBCOUNTY_CODE": "365",
                        "SUBCOUNTY": "BOMET EAST",
                        "REG_OFFICE_CODE": "3652",
                        "REG_OFFICE": "MERIGI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "37",
                "COUNTY": "KAKAMEGA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "371",
                        "SUBCOUNTY": "KAKAMEGA 'CEN'",
                        "REG_OFFICE_CODE": "3711",
                        "REG_OFFICE": "MUNICIPALITY"
                    },
                    {
                        "SUBCOUNTY_CODE": "371",
                        "SUBCOUNTY": "KAKAMEGA 'CEN'",
                        "REG_OFFICE_CODE": "3712",
                        "REG_OFFICE": "LURAMBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "371",
                        "SUBCOUNTY": "KAKAMEGA 'CEN'",
                        "REG_OFFICE_CODE": "3713",
                        "REG_OFFICE": "HDM KAKAMEGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "372",
                        "SUBCOUNTY": "KAKAMEGA NORTH",
                        "REG_OFFICE_CODE": "3721",
                        "REG_OFFICE": "CENTRAL KABRAS"
                    },
                    {
                        "SUBCOUNTY_CODE": "372",
                        "SUBCOUNTY": "KAKAMEGA NORTH",
                        "REG_OFFICE_CODE": "3722",
                        "REG_OFFICE": "EAST KABRAS"
                    },
                    {
                        "SUBCOUNTY_CODE": "372",
                        "SUBCOUNTY": "KAKAMEGA NORTH",
                        "REG_OFFICE_CODE": "3723",
                        "REG_OFFICE": "SOUTH KABRAS"
                    },
                    {
                        "SUBCOUNTY_CODE": "372",
                        "SUBCOUNTY": "KAKAMEGA NORTH",
                        "REG_OFFICE_CODE": "3724",
                        "REG_OFFICE": "NORTH KABRAS"
                    },
                    {
                        "SUBCOUNTY_CODE": "372",
                        "SUBCOUNTY": "KAKAMEGA NORTH",
                        "REG_OFFICE_CODE": "3725",
                        "REG_OFFICE": "WEST KABRAS"
                    },
                    {
                        "SUBCOUNTY_CODE": "373",
                        "SUBCOUNTY": "KAKAMEGA SOUTH",
                        "REG_OFFICE_CODE": "3731",
                        "REG_OFFICE": "IKOLOMANI NORTH"
                    },
                    {
                        "SUBCOUNTY_CODE": "373",
                        "SUBCOUNTY": "KAKAMEGA SOUTH",
                        "REG_OFFICE_CODE": "3732",
                        "REG_OFFICE": "IKOLOMANI SOUTH"
                    },
                    {
                        "SUBCOUNTY_CODE": "374",
                        "SUBCOUNTY": "KAKAMEGA EAST",
                        "REG_OFFICE_CODE": "3741",
                        "REG_OFFICE": "SHINYALU"
                    },
                    {
                        "SUBCOUNTY_CODE": "374",
                        "SUBCOUNTY": "KAKAMEGA EAST",
                        "REG_OFFICE_CODE": "3742",
                        "REG_OFFICE": "ILEHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "375",
                        "SUBCOUNTY": "MUMIAS",
                        "REG_OFFICE_CODE": "3751",
                        "REG_OFFICE": "MUMIAS"
                    },
                    {
                        "SUBCOUNTY_CODE": "375",
                        "SUBCOUNTY": "MUMIAS",
                        "REG_OFFICE_CODE": "3752",
                        "REG_OFFICE": "SOUTH WANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "375",
                        "SUBCOUNTY": "MUMIAS",
                        "REG_OFFICE_CODE": "3753",
                        "REG_OFFICE": "EAST WANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "375",
                        "SUBCOUNTY": "MUMIAS",
                        "REG_OFFICE_CODE": "3754",
                        "REG_OFFICE": "SHIANDA"
                    },
                    {
                        "SUBCOUNTY_CODE": "376",
                        "SUBCOUNTY": "BUTERE",
                        "REG_OFFICE_CODE": "3761",
                        "REG_OFFICE": "BUTERE"
                    },
                    {
                        "SUBCOUNTY_CODE": "376",
                        "SUBCOUNTY": "BUTERE",
                        "REG_OFFICE_CODE": "3762",
                        "REG_OFFICE": "LUNZA"
                    },
                    {
                        "SUBCOUNTY_CODE": "376",
                        "SUBCOUNTY": "BUTERE",
                        "REG_OFFICE_CODE": "3763",
                        "REG_OFFICE": "SHIATSALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "377",
                        "SUBCOUNTY": "KHWISERO",
                        "REG_OFFICE_CODE": "3771",
                        "REG_OFFICE": "KHWISERO WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "377",
                        "SUBCOUNTY": "KHWISERO",
                        "REG_OFFICE_CODE": "3772",
                        "REG_OFFICE": "KHWISERO EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "378",
                        "SUBCOUNTY": "LUGARI",
                        "REG_OFFICE_CODE": "3781",
                        "REG_OFFICE": "LUGARI"
                    },
                    {
                        "SUBCOUNTY_CODE": "379",
                        "SUBCOUNTY": "LIKUYANI",
                        "REG_OFFICE_CODE": "3791",
                        "REG_OFFICE": "LIKUYANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "37A",
                        "SUBCOUNTY": "MATETE",
                        "REG_OFFICE_CODE": "37A1",
                        "REG_OFFICE": "MATETE"
                    },
                    {
                        "SUBCOUNTY_CODE": "37B",
                        "SUBCOUNTY": "MATUNGU",
                        "REG_OFFICE_CODE": "37B1",
                        "REG_OFFICE": "MATUNGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "37B",
                        "SUBCOUNTY": "MATUNGU",
                        "REG_OFFICE_CODE": "37B2",
                        "REG_OFFICE": "KOYONZO"
                    },
                    {
                        "SUBCOUNTY_CODE": "37C",
                        "SUBCOUNTY": "NAVAKHOLO",
                        "REG_OFFICE_CODE": "37C1",
                        "REG_OFFICE": "NAVAKHOLO"
                    },
                    {
                        "SUBCOUNTY_CODE": "37C",
                        "SUBCOUNTY": "NAVAKHOLO",
                        "REG_OFFICE_CODE": "37C2",
                        "REG_OFFICE": "BUNYALA WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "37C",
                        "SUBCOUNTY": "NAVAKHOLO",
                        "REG_OFFICE_CODE": "37C3",
                        "REG_OFFICE": "BUTSOTSO NORTH"
                    }
                ]
            },
            {
                "COUNTY_CODE": "38",
                "COUNTY": "VIHIGA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "381",
                        "SUBCOUNTY": "VIHIGA",
                        "REG_OFFICE_CODE": "3811",
                        "REG_OFFICE": "VIHIGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "381",
                        "SUBCOUNTY": "VIHIGA",
                        "REG_OFFICE_CODE": "3812",
                        "REG_OFFICE": "HDM VIHIGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "382",
                        "SUBCOUNTY": "SABATIA",
                        "REG_OFFICE_CODE": "3821",
                        "REG_OFFICE": "SABATIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "382",
                        "SUBCOUNTY": "SABATIA",
                        "REG_OFFICE_CODE": "3822",
                        "REG_OFFICE": "CHAVAKALI"
                    },
                    {
                        "SUBCOUNTY_CODE": "383",
                        "SUBCOUNTY": "EMUHAYA",
                        "REG_OFFICE_CODE": "3831",
                        "REG_OFFICE": "ELUKONGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "383",
                        "SUBCOUNTY": "EMUHAYA",
                        "REG_OFFICE_CODE": "3832",
                        "REG_OFFICE": "LUANDA"
                    },
                    {
                        "SUBCOUNTY_CODE": "384",
                        "SUBCOUNTY": "HAMISI",
                        "REG_OFFICE_CODE": "3841",
                        "REG_OFFICE": "SHIAMAKHOKHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "384",
                        "SUBCOUNTY": "HAMISI",
                        "REG_OFFICE_CODE": "3842",
                        "REG_OFFICE": "SHAVIRINGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "384",
                        "SUBCOUNTY": "HAMISI",
                        "REG_OFFICE_CODE": "3843",
                        "REG_OFFICE": "JEPKOYAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "384",
                        "SUBCOUNTY": "HAMISI",
                        "REG_OFFICE_CODE": "3844",
                        "REG_OFFICE": "TAMBUA"
                    },
                    {
                        "SUBCOUNTY_CODE": "385",
                        "SUBCOUNTY": "LUANDA",
                        "REG_OFFICE_CODE": "3851",
                        "REG_OFFICE": "ESIEMBERO"
                    },
                    {
                        "SUBCOUNTY_CODE": "385",
                        "SUBCOUNTY": "LUANDA",
                        "REG_OFFICE_CODE": "3852",
                        "REG_OFFICE": "EKWANDA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "39",
                "COUNTY": "BUNGOMA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "391",
                        "SUBCOUNTY": "BUNGOMA NORTH",
                        "REG_OFFICE_CODE": "3911",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "391",
                        "SUBCOUNTY": "BUNGOMA NORTH",
                        "REG_OFFICE_CODE": "3912",
                        "REG_OFFICE": "TONGAREN"
                    },
                    {
                        "SUBCOUNTY_CODE": "391",
                        "SUBCOUNTY": "BUNGOMA NORTH",
                        "REG_OFFICE_CODE": "3913",
                        "REG_OFFICE": "NDALU"
                    },
                    {
                        "SUBCOUNTY_CODE": "391",
                        "SUBCOUNTY": "BUNGOMA NORTH",
                        "REG_OFFICE_CODE": "3914",
                        "REG_OFFICE": "MBAKALO"
                    },
                    {
                        "SUBCOUNTY_CODE": "392",
                        "SUBCOUNTY": "KIMIL./ BUNGOMA",
                        "REG_OFFICE_CODE": "3921",
                        "REG_OFFICE": "KIMILILI"
                    },
                    {
                        "SUBCOUNTY_CODE": "392",
                        "SUBCOUNTY": "KIMIL./ BUNGOMA",
                        "REG_OFFICE_CODE": "3922",
                        "REG_OFFICE": "KAMUKUYWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "393",
                        "SUBCOUNTY": "BUNGOMA SOUTH",
                        "REG_OFFICE_CODE": "3931",
                        "REG_OFFICE": "KANDUYI"
                    },
                    {
                        "SUBCOUNTY_CODE": "393",
                        "SUBCOUNTY": "BUNGOMA SOUTH",
                        "REG_OFFICE_CODE": "3932",
                        "REG_OFFICE": "HDM BUNGOMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "394",
                        "SUBCOUNTY": "BUNGOMA CENTRAL",
                        "REG_OFFICE_CODE": "3941",
                        "REG_OFFICE": "CHWELE"
                    },
                    {
                        "SUBCOUNTY_CODE": "394",
                        "SUBCOUNTY": "BUNGOMA CENTRAL",
                        "REG_OFFICE_CODE": "3942",
                        "REG_OFFICE": "NALONDO"
                    },
                    {
                        "SUBCOUNTY_CODE": "394",
                        "SUBCOUNTY": "BUNGOMA CENTRAL",
                        "REG_OFFICE_CODE": "3943",
                        "REG_OFFICE": "MUKUYUNI"
                    },
                    {
                        "SUBCOUNTY_CODE": "394",
                        "SUBCOUNTY": "BUNGOMA CENTRAL",
                        "REG_OFFICE_CODE": "3944",
                        "REG_OFFICE": "KABUCHAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "395",
                        "SUBCOUNTY": "BUNGOMA WEST",
                        "REG_OFFICE_CODE": "3951",
                        "REG_OFFICE": "SIRISIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "395",
                        "SUBCOUNTY": "BUNGOMA WEST",
                        "REG_OFFICE_CODE": "3952",
                        "REG_OFFICE": "MALAKISI"
                    },
                    {
                        "SUBCOUNTY_CODE": "395",
                        "SUBCOUNTY": "BUNGOMA WEST",
                        "REG_OFFICE_CODE": "3953",
                        "REG_OFFICE": "LWANDANYI"
                    },
                    {
                        "SUBCOUNTY_CODE": "395",
                        "SUBCOUNTY": "BUNGOMA WEST",
                        "REG_OFFICE_CODE": "3954",
                        "REG_OFFICE": "NAMWELA"
                    },
                    {
                        "SUBCOUNTY_CODE": "396",
                        "SUBCOUNTY": "BUNGOMA EAST",
                        "REG_OFFICE_CODE": "3962",
                        "REG_OFFICE": "NDIVISI"
                    },
                    {
                        "SUBCOUNTY_CODE": "396",
                        "SUBCOUNTY": "BUNGOMA EAST",
                        "REG_OFFICE_CODE": "3964",
                        "REG_OFFICE": "NAMARAMBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "396",
                        "SUBCOUNTY": "BUNGOMA EAST",
                        "REG_OFFICE_CODE": "3965",
                        "REG_OFFICE": "MIHUU"
                    },
                    {
                        "SUBCOUNTY_CODE": "397",
                        "SUBCOUNTY": "BUMULA",
                        "REG_OFFICE_CODE": "3971",
                        "REG_OFFICE": "BUMULA"
                    },
                    {
                        "SUBCOUNTY_CODE": "398",
                        "SUBCOUNTY": "MT ELGON",
                        "REG_OFFICE_CODE": "3981",
                        "REG_OFFICE": "KAPSOKWONY"
                    },
                    {
                        "SUBCOUNTY_CODE": "398",
                        "SUBCOUNTY": "MT ELGON",
                        "REG_OFFICE_CODE": "3982",
                        "REG_OFFICE": "KAPTAMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "399",
                        "SUBCOUNTY": "CHEPTAIS",
                        "REG_OFFICE_CODE": "3991",
                        "REG_OFFICE": "CHEPTAIS"
                    },
                    {
                        "SUBCOUNTY_CODE": "399",
                        "SUBCOUNTY": "CHEPTAIS",
                        "REG_OFFICE_CODE": "3992",
                        "REG_OFFICE": "KOPSIRO"
                    },
                    {
                        "SUBCOUNTY_CODE": "39A",
                        "SUBCOUNTY": "TONGAREN",
                        "REG_OFFICE_CODE": "39A1",
                        "REG_OFFICE": "TONGAREN"
                    },
                    {
                        "SUBCOUNTY_CODE": "39A",
                        "SUBCOUNTY": "TONGAREN",
                        "REG_OFFICE_CODE": "39A2",
                        "REG_OFFICE": "NDALU"
                    },
                    {
                        "SUBCOUNTY_CODE": "39B",
                        "SUBCOUNTY": "WEBUYE WEST",
                        "REG_OFFICE_CODE": "39B1",
                        "REG_OFFICE": "WEBUYE"
                    },
                    {
                        "SUBCOUNTY_CODE": "39B",
                        "SUBCOUNTY": "WEBUYE WEST",
                        "REG_OFFICE_CODE": "39B2",
                        "REG_OFFICE": "BOKOLI"
                    }
                ]
            },
            {
                "COUNTY_CODE": "40",
                "COUNTY": "BUSIA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "401",
                        "SUBCOUNTY": "BUSIA",
                        "REG_OFFICE_CODE": "4011",
                        "REG_OFFICE": "MUNICIPALITY"
                    },
                    {
                        "SUBCOUNTY_CODE": "401",
                        "SUBCOUNTY": "BUSIA",
                        "REG_OFFICE_CODE": "4012",
                        "REG_OFFICE": "MATAYOS"
                    },
                    {
                        "SUBCOUNTY_CODE": "401",
                        "SUBCOUNTY": "BUSIA",
                        "REG_OFFICE_CODE": "4013",
                        "REG_OFFICE": "HDM BUSIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "402",
                        "SUBCOUNTY": "BUTULA",
                        "REG_OFFICE_CODE": "4021",
                        "REG_OFFICE": "BUTULA"
                    },
                    {
                        "SUBCOUNTY_CODE": "403",
                        "SUBCOUNTY": "SAMIA",
                        "REG_OFFICE_CODE": "4031",
                        "REG_OFFICE": "FUNYULA"
                    },
                    {
                        "SUBCOUNTY_CODE": "404",
                        "SUBCOUNTY": "BUNYALA",
                        "REG_OFFICE_CODE": "4041",
                        "REG_OFFICE": "BUDALANGI"
                    },
                    {
                        "SUBCOUNTY_CODE": "405",
                        "SUBCOUNTY": "NAMBALE",
                        "REG_OFFICE_CODE": "4051",
                        "REG_OFFICE": "NAMBALE"
                    },
                    {
                        "SUBCOUNTY_CODE": "406",
                        "SUBCOUNTY": "TESO NORTH",
                        "REG_OFFICE_CODE": "4061",
                        "REG_OFFICE": "AMAGORO"
                    },
                    {
                        "SUBCOUNTY_CODE": "406",
                        "SUBCOUNTY": "TESO NORTH",
                        "REG_OFFICE_CODE": "4062",
                        "REG_OFFICE": "ANGURAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "407",
                        "SUBCOUNTY": "TESO SOUTH",
                        "REG_OFFICE_CODE": "4071",
                        "REG_OFFICE": "CHAKOL"
                    },
                    {
                        "SUBCOUNTY_CODE": "407",
                        "SUBCOUNTY": "TESO SOUTH",
                        "REG_OFFICE_CODE": "4072",
                        "REG_OFFICE": "AMUKURA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "41",
                "COUNTY": "SIAYA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "411",
                        "SUBCOUNTY": "SIAYA",
                        "REG_OFFICE_CODE": "4111",
                        "REG_OFFICE": "BORO"
                    },
                    {
                        "SUBCOUNTY_CODE": "411",
                        "SUBCOUNTY": "SIAYA",
                        "REG_OFFICE_CODE": "4112",
                        "REG_OFFICE": "URANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "411",
                        "SUBCOUNTY": "SIAYA",
                        "REG_OFFICE_CODE": "4113",
                        "REG_OFFICE": "KAREMO"
                    },
                    {
                        "SUBCOUNTY_CODE": "411",
                        "SUBCOUNTY": "SIAYA",
                        "REG_OFFICE_CODE": "4114",
                        "REG_OFFICE": "HDM SIAYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "412",
                        "SUBCOUNTY": "BONDO",
                        "REG_OFFICE_CODE": "4121",
                        "REG_OFFICE": "MARANDA"
                    },
                    {
                        "SUBCOUNTY_CODE": "412",
                        "SUBCOUNTY": "BONDO",
                        "REG_OFFICE_CODE": "4122",
                        "REG_OFFICE": "NYANG'OMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "412",
                        "SUBCOUNTY": "BONDO",
                        "REG_OFFICE_CODE": "4123",
                        "REG_OFFICE": "USIGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "413",
                        "SUBCOUNTY": "UGENYA",
                        "REG_OFFICE_CODE": "4131",
                        "REG_OFFICE": "UKWALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "413",
                        "SUBCOUNTY": "UGENYA",
                        "REG_OFFICE_CODE": "4132",
                        "REG_OFFICE": "SIHAY"
                    },
                    {
                        "SUBCOUNTY_CODE": "414",
                        "SUBCOUNTY": "GEM",
                        "REG_OFFICE_CODE": "4141",
                        "REG_OFFICE": "WAGAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "414",
                        "SUBCOUNTY": "GEM",
                        "REG_OFFICE_CODE": "4142",
                        "REG_OFFICE": "YALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "415",
                        "SUBCOUNTY": "UGUNJA",
                        "REG_OFFICE_CODE": "4151",
                        "REG_OFFICE": "UGUNJA"
                    },
                    {
                        "SUBCOUNTY_CODE": "415",
                        "SUBCOUNTY": "UGUNJA",
                        "REG_OFFICE_CODE": "4152",
                        "REG_OFFICE": "SIGOMERE"
                    },
                    {
                        "SUBCOUNTY_CODE": "416",
                        "SUBCOUNTY": "RARIEDA",
                        "REG_OFFICE_CODE": "4161",
                        "REG_OFFICE": "RARIEDA "
                    },
                    {
                        "SUBCOUNTY_CODE": "416",
                        "SUBCOUNTY": "RARIEDA",
                        "REG_OFFICE_CODE": "4162",
                        "REG_OFFICE": "MADIANY"
                    }
                ]
            },
            {
                "COUNTY_CODE": "42",
                "COUNTY": "KISUMU",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "421",
                        "SUBCOUNTY": "KISUMU CENTRAL",
                        "REG_OFFICE_CODE": "4211",
                        "REG_OFFICE": "WINAM"
                    },
                    {
                        "SUBCOUNTY_CODE": "421",
                        "SUBCOUNTY": "KISUMU CENTRAL",
                        "REG_OFFICE_CODE": "4212",
                        "REG_OFFICE": "KISUMU CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "421",
                        "SUBCOUNTY": "KISUMU CENTRAL",
                        "REG_OFFICE_CODE": "4213",
                        "REG_OFFICE": "HDM KISUMU"
                    },
                    {
                        "SUBCOUNTY_CODE": "422",
                        "SUBCOUNTY": "KISUMU WEST",
                        "REG_OFFICE_CODE": "4221",
                        "REG_OFFICE": "OTONGLO"
                    },
                    {
                        "SUBCOUNTY_CODE": "422",
                        "SUBCOUNTY": "KISUMU WEST",
                        "REG_OFFICE_CODE": "4222",
                        "REG_OFFICE": "NYAHERA"
                    },
                    {
                        "SUBCOUNTY_CODE": "422",
                        "SUBCOUNTY": "KISUMU WEST",
                        "REG_OFFICE_CODE": "4223",
                        "REG_OFFICE": "MASENO"
                    },
                    {
                        "SUBCOUNTY_CODE": "422",
                        "SUBCOUNTY": "KISUMU WEST",
                        "REG_OFFICE_CODE": "4224",
                        "REG_OFFICE": "OJOLLA"
                    },
                    {
                        "SUBCOUNTY_CODE": "423",
                        "SUBCOUNTY": "SEME",
                        "REG_OFFICE_CODE": "4231",
                        "REG_OFFICE": "KOMBEWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "424",
                        "SUBCOUNTY": "NYANDO",
                        "REG_OFFICE_CODE": "4241",
                        "REG_OFFICE": "NYANDO"
                    },
                    {
                        "SUBCOUNTY_CODE": "424",
                        "SUBCOUNTY": "NYANDO",
                        "REG_OFFICE_CODE": "4242",
                        "REG_OFFICE": "KADIBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "425",
                        "SUBCOUNTY": "MUHORONI",
                        "REG_OFFICE_CODE": "4251",
                        "REG_OFFICE": "MUHORONI"
                    },
                    {
                        "SUBCOUNTY_CODE": "425",
                        "SUBCOUNTY": "MUHORONI",
                        "REG_OFFICE_CODE": "4252",
                        "REG_OFFICE": "MIWANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "426",
                        "SUBCOUNTY": "NYAKACH",
                        "REG_OFFICE_CODE": "4261",
                        "REG_OFFICE": "LOWER NYAKACH"
                    },
                    {
                        "SUBCOUNTY_CODE": "426",
                        "SUBCOUNTY": "NYAKACH",
                        "REG_OFFICE_CODE": "4262",
                        "REG_OFFICE": "UPPER NYAKACH"
                    },
                    {
                        "SUBCOUNTY_CODE": "426",
                        "SUBCOUNTY": "NYAKACH",
                        "REG_OFFICE_CODE": "4263",
                        "REG_OFFICE": "NORTH NYAKACH"
                    },
                    {
                        "SUBCOUNTY_CODE": "426",
                        "SUBCOUNTY": "NYAKACH",
                        "REG_OFFICE_CODE": "4264",
                        "REG_OFFICE": "WEST NYAKACH"
                    }
                ]
            },
            {
                "COUNTY_CODE": "43",
                "COUNTY": "HOMABAY",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "431",
                        "SUBCOUNTY": "HOMA BAY",
                        "REG_OFFICE_CODE": "4311",
                        "REG_OFFICE": "ASEGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "431",
                        "SUBCOUNTY": "HOMA BAY",
                        "REG_OFFICE_CODE": "4312",
                        "REG_OFFICE": "RANGWE"
                    },
                    {
                        "SUBCOUNTY_CODE": "431",
                        "SUBCOUNTY": "HOMA BAY",
                        "REG_OFFICE_CODE": "4313",
                        "REG_OFFICE": "HDM HOMA-BAY"
                    },
                    {
                        "SUBCOUNTY_CODE": "432",
                        "SUBCOUNTY": "NDHIWA",
                        "REG_OFFICE_CODE": "4321",
                        "REG_OFFICE": "NDHIWA"
                    },
                    {
                        "SUBCOUNTY_CODE": "432",
                        "SUBCOUNTY": "NDHIWA",
                        "REG_OFFICE_CODE": "4322",
                        "REG_OFFICE": "NYARONGI"
                    },
                    {
                        "SUBCOUNTY_CODE": "432",
                        "SUBCOUNTY": "NDHIWA",
                        "REG_OFFICE_CODE": "4323",
                        "REG_OFFICE": "RIANA"
                    },
                    {
                        "SUBCOUNTY_CODE": "432",
                        "SUBCOUNTY": "NDHIWA",
                        "REG_OFFICE_CODE": "4324",
                        "REG_OFFICE": "PALA"
                    },
                    {
                        "SUBCOUNTY_CODE": "432",
                        "SUBCOUNTY": "NDHIWA",
                        "REG_OFFICE_CODE": "4325",
                        "REG_OFFICE": "KOBODO"
                    },
                    {
                        "SUBCOUNTY_CODE": "432",
                        "SUBCOUNTY": "NDHIWA",
                        "REG_OFFICE_CODE": "4326",
                        "REG_OFFICE": "KOBAMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "433",
                        "SUBCOUNTY": "RACHUONYO SOUTH",
                        "REG_OFFICE_CODE": "4331",
                        "REG_OFFICE": "KASIPUL"
                    },
                    {
                        "SUBCOUNTY_CODE": "433",
                        "SUBCOUNTY": "RACHUONYO SOUTH",
                        "REG_OFFICE_CODE": "4332",
                        "REG_OFFICE": "KABONDO"
                    },
                    {
                        "SUBCOUNTY_CODE": "434",
                        "SUBCOUNTY": "RACHUONYO NORTH",
                        "REG_OFFICE_CODE": "4341",
                        "REG_OFFICE": "KARACHUONYO 'E'"
                    },
                    {
                        "SUBCOUNTY_CODE": "434",
                        "SUBCOUNTY": "RACHUONYO NORTH",
                        "REG_OFFICE_CODE": "4342",
                        "REG_OFFICE": "KARACHUONYO 'W'"
                    },
                    {
                        "SUBCOUNTY_CODE": "435",
                        "SUBCOUNTY": "SUBA",
                        "REG_OFFICE_CODE": "4351",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "435",
                        "SUBCOUNTY": "SUBA",
                        "REG_OFFICE_CODE": "4352",
                        "REG_OFFICE": "GWASSI"
                    },
                    {
                        "SUBCOUNTY_CODE": "436",
                        "SUBCOUNTY": "MBITA",
                        "REG_OFFICE_CODE": "4361",
                        "REG_OFFICE": "MBITA"
                    },
                    {
                        "SUBCOUNTY_CODE": "436",
                        "SUBCOUNTY": "MBITA",
                        "REG_OFFICE_CODE": "4362",
                        "REG_OFFICE": "LAMBWE"
                    },
                    {
                        "SUBCOUNTY_CODE": "436",
                        "SUBCOUNTY": "MBITA",
                        "REG_OFFICE_CODE": "4363",
                        "REG_OFFICE": "MFANGANO"
                    },
                    {
                        "SUBCOUNTY_CODE": "437",
                        "SUBCOUNTY": "RACHUONYO EAST",
                        "REG_OFFICE_CODE": "4371",
                        "REG_OFFICE": "KABONDO"
                    }
                ]
            },
            {
                "COUNTY_CODE": "44",
                "COUNTY": "MIGORI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "441",
                        "SUBCOUNTY": "MIGORI",
                        "REG_OFFICE_CODE": "4411",
                        "REG_OFFICE": "SUBA CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "441",
                        "SUBCOUNTY": "MIGORI",
                        "REG_OFFICE_CODE": "4412",
                        "REG_OFFICE": "SUBA WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "441",
                        "SUBCOUNTY": "MIGORI",
                        "REG_OFFICE_CODE": "4413",
                        "REG_OFFICE": "SUBA EAST"
                    },
                    {
                        "SUBCOUNTY_CODE": "441",
                        "SUBCOUNTY": "MIGORI",
                        "REG_OFFICE_CODE": "4414",
                        "REG_OFFICE": "HDM MIGORI"
                    },
                    {
                        "SUBCOUNTY_CODE": "442",
                        "SUBCOUNTY": "KURIA WEST",
                        "REG_OFFICE_CODE": "4421",
                        "REG_OFFICE": "KEHANCHA"
                    },
                    {
                        "SUBCOUNTY_CODE": "442",
                        "SUBCOUNTY": "KURIA WEST",
                        "REG_OFFICE_CODE": "4422",
                        "REG_OFFICE": "MASABA"
                    },
                    {
                        "SUBCOUNTY_CODE": "442",
                        "SUBCOUNTY": "KURIA WEST",
                        "REG_OFFICE_CODE": "4423",
                        "REG_OFFICE": "MABERA"
                    },
                    {
                        "SUBCOUNTY_CODE": "442",
                        "SUBCOUNTY": "KURIA WEST",
                        "REG_OFFICE_CODE": "4424",
                        "REG_OFFICE": "ISEBANIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "442",
                        "SUBCOUNTY": "KURIA WEST",
                        "REG_OFFICE_CODE": "4425",
                        "REG_OFFICE": "IKEREGE"
                    },
                    {
                        "SUBCOUNTY_CODE": "443",
                        "SUBCOUNTY": "RONGO",
                        "REG_OFFICE_CODE": "4431",
                        "REG_OFFICE": "RONGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "443",
                        "SUBCOUNTY": "RONGO",
                        "REG_OFFICE_CODE": "4432",
                        "REG_OFFICE": "CHAMGIWADU"
                    },
                    {
                        "SUBCOUNTY_CODE": "444",
                        "SUBCOUNTY": "URIRI",
                        "REG_OFFICE_CODE": "4441",
                        "REG_OFFICE": "URIRI"
                    },
                    {
                        "SUBCOUNTY_CODE": "444",
                        "SUBCOUNTY": "URIRI",
                        "REG_OFFICE_CODE": "4442",
                        "REG_OFFICE": "OYANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "445",
                        "SUBCOUNTY": "KURIA EAST",
                        "REG_OFFICE_CODE": "4451",
                        "REG_OFFICE": "KEGONGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "445",
                        "SUBCOUNTY": "KURIA EAST",
                        "REG_OFFICE_CODE": "4452",
                        "REG_OFFICE": "NTIMARU"
                    },
                    {
                        "SUBCOUNTY_CODE": "445",
                        "SUBCOUNTY": "KURIA EAST",
                        "REG_OFFICE_CODE": "4453",
                        "REG_OFFICE": "CHINATO"
                    },
                    {
                        "SUBCOUNTY_CODE": "445",
                        "SUBCOUNTY": "KURIA EAST",
                        "REG_OFFICE_CODE": "4454",
                        "REG_OFFICE": "KWIHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "446",
                        "SUBCOUNTY": "AWENDO",
                        "REG_OFFICE_CODE": "4461",
                        "REG_OFFICE": "AWENDO"
                    },
                    {
                        "SUBCOUNTY_CODE": "446",
                        "SUBCOUNTY": "AWENDO",
                        "REG_OFFICE_CODE": "4462",
                        "REG_OFFICE": "DEDE"
                    },
                    {
                        "SUBCOUNTY_CODE": "447",
                        "SUBCOUNTY": "NYATIKE",
                        "REG_OFFICE_CODE": "4471",
                        "REG_OFFICE": "NYATIKE"
                    },
                    {
                        "SUBCOUNTY_CODE": "447",
                        "SUBCOUNTY": "NYATIKE",
                        "REG_OFFICE_CODE": "4472",
                        "REG_OFFICE": "MUHURU"
                    },
                    {
                        "SUBCOUNTY_CODE": "447",
                        "SUBCOUNTY": "NYATIKE",
                        "REG_OFFICE_CODE": "4473",
                        "REG_OFFICE": "KARUNGU"
                    },
                    {
                        "SUBCOUNTY_CODE": "447",
                        "SUBCOUNTY": "NYATIKE",
                        "REG_OFFICE_CODE": "4474",
                        "REG_OFFICE": "GOT KACHOLA"
                    },
                    {
                        "SUBCOUNTY_CODE": "447",
                        "SUBCOUNTY": "NYATIKE",
                        "REG_OFFICE_CODE": "4475",
                        "REG_OFFICE": "KALER"
                    }
                ]
            },
            {
                "COUNTY_CODE": "45",
                "COUNTY": "KISII",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "451",
                        "SUBCOUNTY": "KISII CENTRAL",
                        "REG_OFFICE_CODE": "4511",
                        "REG_OFFICE": "MOSOCHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "451",
                        "SUBCOUNTY": "KISII CENTRAL",
                        "REG_OFFICE_CODE": "4512",
                        "REG_OFFICE": "KEUMBU"
                    },
                    {
                        "SUBCOUNTY_CODE": "451",
                        "SUBCOUNTY": "KISII CENTRAL",
                        "REG_OFFICE_CODE": "4513",
                        "REG_OFFICE": "KIOGORO"
                    },
                    {
                        "SUBCOUNTY_CODE": "451",
                        "SUBCOUNTY": "KISII CENTRAL",
                        "REG_OFFICE_CODE": "4514",
                        "REG_OFFICE": "HDM KISII"
                    },
                    {
                        "SUBCOUNTY_CODE": "452",
                        "SUBCOUNTY": "MASABA SOUTH",
                        "REG_OFFICE_CODE": "4521",
                        "REG_OFFICE": "KIAMOKAMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "452",
                        "SUBCOUNTY": "MASABA SOUTH",
                        "REG_OFFICE_CODE": "4522",
                        "REG_OFFICE": "MASIMBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "452",
                        "SUBCOUNTY": "MASABA SOUTH",
                        "REG_OFFICE_CODE": "4523",
                        "REG_OFFICE": "GESUSU"
                    },
                    {
                        "SUBCOUNTY_CODE": "452",
                        "SUBCOUNTY": "MASABA SOUTH",
                        "REG_OFFICE_CODE": "4524",
                        "REG_OFFICE": "IBACHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "452",
                        "SUBCOUNTY": "MASABA SOUTH",
                        "REG_OFFICE_CODE": "4525",
                        "REG_OFFICE": "NYAMASIBI"
                    },
                    {
                        "SUBCOUNTY_CODE": "453",
                        "SUBCOUNTY": "KISII SOUTH",
                        "REG_OFFICE_CODE": "4531",
                        "REG_OFFICE": "SUNEKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "453",
                        "SUBCOUNTY": "KISII SOUTH",
                        "REG_OFFICE_CODE": "4532",
                        "REG_OFFICE": "GESONSO"
                    },
                    {
                        "SUBCOUNTY_CODE": "453",
                        "SUBCOUNTY": "KISII SOUTH",
                        "REG_OFFICE_CODE": "4533",
                        "REG_OFFICE": "IGONGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "453",
                        "SUBCOUNTY": "KISII SOUTH",
                        "REG_OFFICE_CODE": "4534",
                        "REG_OFFICE": "KERINA"
                    },
                    {
                        "SUBCOUNTY_CODE": "454",
                        "SUBCOUNTY": "GUCHA",
                        "REG_OFFICE_CODE": "4541",
                        "REG_OFFICE": "OGEMBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "455",
                        "SUBCOUNTY": "NYAMACHE",
                        "REG_OFFICE_CODE": "4551",
                        "REG_OFFICE": "NYAMACHE"
                    },
                    {
                        "SUBCOUNTY_CODE": "455",
                        "SUBCOUNTY": "NYAMACHE",
                        "REG_OFFICE_CODE": "4552",
                        "REG_OFFICE": "NYACHEKI"
                    },
                    {
                        "SUBCOUNTY_CODE": "456",
                        "SUBCOUNTY": "KENYENYA",
                        "REG_OFFICE_CODE": "4561",
                        "REG_OFFICE": "KENYENYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "456",
                        "SUBCOUNTY": "KENYENYA",
                        "REG_OFFICE_CODE": "4562",
                        "REG_OFFICE": "MAGENCHE"
                    },
                    {
                        "SUBCOUNTY_CODE": "456",
                        "SUBCOUNTY": "KENYENYA",
                        "REG_OFFICE_CODE": "4563",
                        "REG_OFFICE": "MAGENA "
                    },
                    {
                        "SUBCOUNTY_CODE": "456",
                        "SUBCOUNTY": "KENYENYA",
                        "REG_OFFICE_CODE": "4564",
                        "REG_OFFICE": "IBENCHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "457",
                        "SUBCOUNTY": "GUCHA SOUTH",
                        "REG_OFFICE_CODE": "4571",
                        "REG_OFFICE": "TABAKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "457",
                        "SUBCOUNTY": "GUCHA SOUTH",
                        "REG_OFFICE_CODE": "4572",
                        "REG_OFFICE": "NYAMARAMBE"
                    },
                    {
                        "SUBCOUNTY_CODE": "457",
                        "SUBCOUNTY": "GUCHA SOUTH",
                        "REG_OFFICE_CODE": "4573",
                        "REG_OFFICE": "MOTICHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "458",
                        "SUBCOUNTY": "SAMETA",
                        "REG_OFFICE_CODE": "4581",
                        "REG_OFFICE": "KENYERERE"
                    },
                    {
                        "SUBCOUNTY_CODE": "458",
                        "SUBCOUNTY": "SAMETA",
                        "REG_OFFICE_CODE": "4582",
                        "REG_OFFICE": "ITIBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "459",
                        "SUBCOUNTY": "MARANI",
                        "REG_OFFICE_CODE": "4591",
                        "REG_OFFICE": "MARANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "459",
                        "SUBCOUNTY": "MARANI",
                        "REG_OFFICE_CODE": "4592",
                        "REG_OFFICE": "NGENYI"
                    },
                    {
                        "SUBCOUNTY_CODE": "459",
                        "SUBCOUNTY": "MARANI",
                        "REG_OFFICE_CODE": "4593",
                        "REG_OFFICE": "KEGOGI"
                    },
                    {
                        "SUBCOUNTY_CODE": "45A",
                        "SUBCOUNTY": "KITUTU CENTRAL",
                        "REG_OFFICE_CODE": "45A1",
                        "REG_OFFICE": "MOSOCHO"
                    },
                    {
                        "SUBCOUNTY_CODE": "45B",
                        "SUBCOUNTY": "ETAGO",
                        "REG_OFFICE_CODE": "45B1",
                        "REG_OFFICE": "ETAGO"
                    },
                    {
                        "SUBCOUNTY_CODE": "45B",
                        "SUBCOUNTY": "ETAGO",
                        "REG_OFFICE_CODE": "45B2",
                        "REG_OFFICE": "MOTICHO"
                    }
                ]
            },
            {
                "COUNTY_CODE": "46",
                "COUNTY": "NYAMIRA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "461",
                        "SUBCOUNTY": "NYAMIRA",
                        "REG_OFFICE_CODE": "4611",
                        "REG_OFFICE": "NYAMIRA"
                    },
                    {
                        "SUBCOUNTY_CODE": "461",
                        "SUBCOUNTY": "NYAMIRA",
                        "REG_OFFICE_CODE": "4612",
                        "REG_OFFICE": "NYAMAIYA"
                    },
                    {
                        "SUBCOUNTY_CODE": "461",
                        "SUBCOUNTY": "NYAMIRA",
                        "REG_OFFICE_CODE": "4613",
                        "REG_OFFICE": "HDM NYAMIRA"
                    },
                    {
                        "SUBCOUNTY_CODE": "462",
                        "SUBCOUNTY": "NYAMIRA NORTH",
                        "REG_OFFICE_CODE": "4621",
                        "REG_OFFICE": "EKERENYO"
                    },
                    {
                        "SUBCOUNTY_CODE": "462",
                        "SUBCOUNTY": "NYAMIRA NORTH",
                        "REG_OFFICE_CODE": "4622",
                        "REG_OFFICE": "NYAMUSI"
                    },
                    {
                        "SUBCOUNTY_CODE": "463",
                        "SUBCOUNTY": "BORABU",
                        "REG_OFFICE_CODE": "4631",
                        "REG_OFFICE": "BORABU"
                    },
                    {
                        "SUBCOUNTY_CODE": "463",
                        "SUBCOUNTY": "BORABU",
                        "REG_OFFICE_CODE": "4632",
                        "REG_OFFICE": "KIANGENI"
                    },
                    {
                        "SUBCOUNTY_CODE": "463",
                        "SUBCOUNTY": "BORABU",
                        "REG_OFFICE_CODE": "4633",
                        "REG_OFFICE": "ESISE"
                    },
                    {
                        "SUBCOUNTY_CODE": "464",
                        "SUBCOUNTY": "MANGA",
                        "REG_OFFICE_CODE": "4641",
                        "REG_OFFICE": "MANGA"
                    },
                    {
                        "SUBCOUNTY_CODE": "464",
                        "SUBCOUNTY": "MANGA",
                        "REG_OFFICE_CODE": "4642",
                        "REG_OFFICE": "MAGOMBO"
                    },
                    {
                        "SUBCOUNTY_CODE": "464",
                        "SUBCOUNTY": "MANGA",
                        "REG_OFFICE_CODE": "4643",
                        "REG_OFFICE": "KEMERA"
                    },
                    {
                        "SUBCOUNTY_CODE": "465",
                        "SUBCOUNTY": "MASABA NORTH",
                        "REG_OFFICE_CODE": "4651",
                        "REG_OFFICE": "RIGOMA"
                    },
                    {
                        "SUBCOUNTY_CODE": "465",
                        "SUBCOUNTY": "MASABA NORTH",
                        "REG_OFFICE_CODE": "4652",
                        "REG_OFFICE": "GACHUBA"
                    },
                    {
                        "SUBCOUNTY_CODE": "465",
                        "SUBCOUNTY": "MASABA NORTH",
                        "REG_OFFICE_CODE": "4653",
                        "REG_OFFICE": "GESIMA"
                    }
                ]
            },
            {
                "COUNTY_CODE": "47",
                "COUNTY": "NAIROBI",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4711",
                        "REG_OFFICE": "KARIOKOR"
                    },
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4712",
                        "REG_OFFICE": "HDM CBD"
                    },
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4713",
                        "REG_OFFICE": "MATHARE"
                    },
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4714",
                        "REG_OFFICE": "CENTRAL"
                    },
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4715",
                        "REG_OFFICE": "HDM CITY SQUARE"
                    },
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4716",
                        "REG_OFFICE": "HDM HQ"
                    },
                    {
                        "SUBCOUNTY_CODE": "471",
                        "SUBCOUNTY": "STAREHE",
                        "REG_OFFICE_CODE": "4717",
                        "REG_OFFICE": "NYAYO HOUSE"
                    },
                    {
                        "SUBCOUNTY_CODE": "472",
                        "SUBCOUNTY": "WESTLANDS",
                        "REG_OFFICE_CODE": "4721",
                        "REG_OFFICE": "WESTLANDS"
                    },
                    {
                        "SUBCOUNTY_CODE": "472",
                        "SUBCOUNTY": "WESTLANDS",
                        "REG_OFFICE_CODE": "4724",
                        "REG_OFFICE": "KANGEMI"
                    },
                    {
                        "SUBCOUNTY_CODE": "473",
                        "SUBCOUNTY": "LANGATA",
                        "REG_OFFICE_CODE": "4731",
                        "REG_OFFICE": "KIBERA"
                    },
                    {
                        "SUBCOUNTY_CODE": "473",
                        "SUBCOUNTY": "LANGATA",
                        "REG_OFFICE_CODE": "4732",
                        "REG_OFFICE": "HDM KIBERA"
                    },
                    {
                        "SUBCOUNTY_CODE": "473",
                        "SUBCOUNTY": "LANGATA",
                        "REG_OFFICE_CODE": "4733",
                        "REG_OFFICE": "NAIROBI  WEST"
                    },
                    {
                        "SUBCOUNTY_CODE": "474",
                        "SUBCOUNTY": "KASARANI",
                        "REG_OFFICE_CODE": "4741",
                        "REG_OFFICE": "KASARANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "475",
                        "SUBCOUNTY": "DAGORETTI",
                        "REG_OFFICE_CODE": "4751",
                        "REG_OFFICE": "WAITHAKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "475",
                        "SUBCOUNTY": "DAGORETTI",
                        "REG_OFFICE_CODE": "4752",
                        "REG_OFFICE": "KAWANGWARE"
                    },
                    {
                        "SUBCOUNTY_CODE": "476",
                        "SUBCOUNTY": "EMBAKASI",
                        "REG_OFFICE_CODE": "4761",
                        "REG_OFFICE": "EMBAKASI"
                    },
                    {
                        "SUBCOUNTY_CODE": "477",
                        "SUBCOUNTY": "MAKADARA",
                        "REG_OFFICE_CODE": "4771",
                        "REG_OFFICE": "MAKADARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "477",
                        "SUBCOUNTY": "MAKADARA",
                        "REG_OFFICE_CODE": "4772",
                        "REG_OFFICE": "HDM MAKADARA"
                    },
                    {
                        "SUBCOUNTY_CODE": "478",
                        "SUBCOUNTY": "NJIRU",
                        "REG_OFFICE_CODE": "4781",
                        "REG_OFFICE": "NJIRU"
                    },
                    {
                        "SUBCOUNTY_CODE": "479",
                        "SUBCOUNTY": "KAMUKUNJI",
                        "REG_OFFICE_CODE": "4791",
                        "REG_OFFICE": "PUMWANI"
                    },
                    {
                        "SUBCOUNTY_CODE": "479",
                        "SUBCOUNTY": "KAMUKUNJI",
                        "REG_OFFICE_CODE": "4792",
                        "REG_OFFICE": "HDM EASTLEIGH"
                    },
                    {
                        "SUBCOUNTY_CODE": "47A",
                        "SUBCOUNTY": "AIRPORT",
                        "REG_OFFICE_CODE": "47A1",
                        "REG_OFFICE": "AIRPORT"
                    }
                ]
            },
            {
                "COUNTY_CODE": "99",
                "COUNTY": "DIASPORA",
                "SUBCOUNTIES": [
                    {
                        "SUBCOUNTY_CODE": "991",
                        "SUBCOUNTY": "UNITED KINGDOM",
                        "REG_OFFICE_CODE": "9911",
                        "REG_OFFICE": "LONDON"
                    },
                    {
                        "SUBCOUNTY_CODE": "992",
                        "SUBCOUNTY": "ZIMBABWE",
                        "REG_OFFICE_CODE": "9921",
                        "REG_OFFICE": "HARARE"
                    },
                    {
                        "SUBCOUNTY_CODE": "993",
                        "SUBCOUNTY": "SOUTH AFRICA",
                        "REG_OFFICE_CODE": "9931",
                        "REG_OFFICE": "PRETORIA"
                    },
                    {
                        "SUBCOUNTY_CODE": "994",
                        "SUBCOUNTY": "SWAZILAND",
                        "REG_OFFICE_CODE": "9941",
                        "REG_OFFICE": "SWAZILAND"
                    },
                    {
                        "SUBCOUNTY_CODE": "995",
                        "SUBCOUNTY": "BOTSWANA",
                        "REG_OFFICE_CODE": "9951",
                        "REG_OFFICE": "GABORONE"
                    },
                    {
                        "SUBCOUNTY_CODE": "996",
                        "SUBCOUNTY": "ZAMBIA",
                        "REG_OFFICE_CODE": "9961",
                        "REG_OFFICE": "LUSAKA"
                    },
                    {
                        "SUBCOUNTY_CODE": "997",
                        "SUBCOUNTY": "UAE",
                        "REG_OFFICE_CODE": "9971",
                        "REG_OFFICE": "DUBAI"
                    },
                    {
                        "SUBCOUNTY_CODE": "998",
                        "SUBCOUNTY": "USA",
                        "REG_OFFICE_CODE": "9981",
                        "REG_OFFICE": "NEW YORK"
                    },
                    {
                        "SUBCOUNTY_CODE": "998",
                        "SUBCOUNTY": "USA",
                        "REG_OFFICE_CODE": "9982",
                        "REG_OFFICE": "LOS ANGELES"
                    },
                    {
                        "SUBCOUNTY_CODE": "998",
                        "SUBCOUNTY": "USA",
                        "REG_OFFICE_CODE": "9983",
                        "REG_OFFICE": "WASHINGTON DC"
                    }
                ]
            }
        ]
    )
    |> Poison.decode!()
  end
end
