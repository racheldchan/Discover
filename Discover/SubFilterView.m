//
//  SubFilterView.m
//  Discover
//
//  Created by Ahmed Zahra on 5/3/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import "SubFilterView.h"
#import "MainViewController.h"
@interface SubFilterView ()

@end

@implementation SubFilterView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.autocompleteOptions = [[NSMutableArray alloc] init];
    NSLog(_category);
    if ([_category isEqualToString: @"Active Life"]) {
            self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"ATV Rentals/Tours", @"Amateur Sports Teams", @"Amusement Parks", @"Aquariums", @"Archery", @"Badminton", @"Basketball Courts", @"Bathing Area", @"Batting Cages", @"Beach Volleyball", @"Beaches", @"Bicycle Paths", @"Bike Rentals", @"Boating", @"Bowling", @"Bungee Jumping", @"Challenge Courses", @"Climbing", @"Cycling Classes", @"Day Camps", @"Disc Golf", @"Diving", @"Free Diving", @"Scuba Diving", @"Experiences", @"Fencing Clubs", @"Fishing", @"Fitness & Instruction", @"Barre Classes", @"Boot Camps", @"Boxing", @"Dance Studios", @"Gyms", @"Martial Arts", @"Meditation Centers", @"Pilates", @"Swimming Lessons/Schools", @"Tai Chi", @"Trainers", @"Yoga", @"Flyboarding", @"Gliding", @"Go Karts", @"Golf", @"Gun/Rifle Ranges", @"Gymnastics", @"Hang Gliding", @"Hiking", @"Horse Racing", @"Horseback Riding", @"Hot Air Balloons", @"Indoor Playcentre", @"Jet Skis", @"Kids Activities", @"Kiteboarding", @"Lakes", @"Laser Tag", @"Lawn Bowling", @"Leisure Centers", @"Mini Golf", @"Mountain Biking", @"Nudist", @"Paddleboarding", @"Paintball", @"Parks Dog Parks Skate Parks", @"Dog Parks", @"Skate Parks", @"Playgrounds", @"Public Plazas", @"Rafting/Kayaking", @"Recreation Centers", @"Rock Climbing", @"Sailing", @"Skating Rinks", @"Skiing", @"Skydiving", @"Sledding", @"Soccer", @"Spin Classes", @"Sport Equipment Hire", @"Sports Clubs", @"Squash", @"Summer Camps", @"Surf Lifesaving", @"Surfing", @"Swimming Pools", @"Tennis", @"Trampoline Parks", @"Tubing", @"Volleyball", @"Wildlife Hunting Ranges", @"Zoos", @"Zorbing", nil];
    }
    if ([_category isEqualToString: @"Arts & Entertainment"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Arcades", @"Art Galleries", @"Betting Centers", @"Bingo Halls", @"Botanical Gardens", @"Cabaret", @"Casinos", @"Castles", @"Choirs", @"Cinema", @"Country Clubs", @"Cultural Center", @"Festivals", @"Christmas Markets", @"Fun Fair", @"General Festivals", @"Trade Fairs", @"Jazz & Blues", @"Mah Jong Halls", @"Marching Bands", @"Museums", @"Music Venues", @"Observatories", @"Opera & Ballet", @"Pachinko", @"Paint & Sip", @"Performing Arts", @"Planetarium", @"Professional Sports Teams", @"Psychics & Astrologers", @"Race Tracks", @"Social Clubs", @"Stadiums & Arenas", @"Street Art", @"Tablao Flamenco", @"Ticket Sales", @"Wineries", nil];
    }
    if ([_category isEqualToString: @"Automotives"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Aircraft Dealers", @"Auto Customization", @"Auto Detailing", @"Auto Electric Services", @"Auto Glass Services", @"Auto Loan Providers", @"Auto Parts & Supplies", @"Auto Repair", @"Boat Dealers", @"Body Shops", @"Car Buyers", @"Car Dealers", @"Car Inspectors", @"Car Share Services", @"Car Stereo Installation", @"Car Wash", @"Gas & Service Stations", @"Mobile Dent Repair", @"Motorcycle Dealers", @"Motorcycle Repair", @"Oil Change Stations", @"Parking", @"RV Dealers", @"RV Repair", @"Registration Services", @"Smog Check Stations", @"Tires", @"Towing", @"Truck Rental", @"Vehicle Shipping", @"Wheel & Rim Repair", @"Windshield Installation & Repair", nil];
    }
    if ([_category isEqualToString: @"Beauty & Spas"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Barbers", @"Cosmetics & Beauty Supply", @"Day Spas", @"Erotic Massage", @"Eyelash Service", @"Hair Extensions", @"Hair Loss Centers", @"Hair Removal", @"Laser Hair Removal", @"Sugaring", @"Waxing", @"Hair Salons", @"Blow Dry/Out Services", @"Hair Extensions", @"Hair Stylists", @"Men's Hair Salons", @"Makeup Artists", @"Massage", @"Medical Spas", @"Nail Salons", @"Perfume", @"Permanent Makeup", @"Piercing", @"Rolfing", @"Skin Care", @"Tanning", @"Spray Tanning", @"Tanning Beds", @"Tattoo", nil];
    }
    if ([_category isEqualToString: @"Education"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Adult Education", @"Art Classes", @"College Counseling", @"Colleges & Universities", @"Educational Services", @"Elementary Schools", @"Middle Schools & High Schools", @"Preschools", @"Private Schools", @"Private Tutors", @"Religious Schools", @"Special Education", @"Specialty Schools", @"Art Schools", @"Bartending Schools", @"CPR Classes", @"Circus Schools", @"Cooking Schools", @"Cosmetology Schools", @"Dance Schools", @"Driving Schools", @"Firearm Training", @"First Aid Classes", @"Flight Instruction", @"Food Safety Training", @"Language Schools", @"Massage Schools", @"Nursing Schools", @"Parenting Classes", @"Pole Dancing Classes", @"Samba Schools", @"Ski Schools", @"Swimming Lessons/Schools", @"Vocational & Technical School", @"Test Preparation", @"Tutoring Centers", nil
];
    }
    if ([_category isEqualToString: @"Event Planning & Services"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Bartenders", @"Boat Charters", @"Cards & Stationery", @"Caterers", @"Clowns", @"DJs", @"Face Painting", @"Hotels", @"Agriturismi", @"Mountain Huts", @"Pensions", @"Residences", @"Rest Stops", @"Magicians", @"Mohels", @"Musicians", @"Officiants", @"Party & Event Planning", @"Party Bike Rentals", @"Party Bus Rentals", @"Party Equipment Rentals", @"Party Supplies", @"Personal Chefs", @"Photo Booth Rentals", @"Photographers", @"Event Photography", @"Session Photography", @"Trivia Hosts", @"Valet Services", @"Venues & Event Spaces", @"Videographers", @"Wedding Planning", nil];
    }
    if ([_category isEqualToString: @"Financial Services"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Banks", @"Check Cashing/Pay-day Loans", @"Currency Exchange", @"Debt Relief Services", @"Financial Advising", @"Insurance", @"Investing", @"Tax Services", nil];
    }
    if ([_category isEqualToString: @"Food"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Bagels", @"Bakeries", @"Beer, Wine & Spirits", @"Beverage Store", @"Breweries", @"Bubble Tea", @"Butcher", @"CSA", @"Churros", @"Coffee & Tea", @"Coffee & Tea Supplies", @"Convenience Stores", @"Cupcakes", @"Delicatessen", @"Desserts", @"Distilleries", @"Do-It-Yourself Food", @"Donairs", @"Donuts", @"Ethic Grocery", @"Ethnic Grocery", @"Farmers Market", @"Fishmonger", @"Food Delivery Services", @"Food Trucks", @"Friterie", @"Gelato", @"Grocery", @"Hawker Centre", @"Honey", @"Ice Cream & Frozen Yogurt", @"Internet Cafes", @"Japanese Sweets", @"Juice Bars & Smoothies", @"Kiosk", @"Milkshake Bars", @"Mulled Wine", @"Organic Stores", @"Panzerotti", @"Parent Cafes", @"Patisserie/Cake Shop", @"Piadina", @"Pretzels", @"Salumerie", @"Shaved Ice", @"Specialty Food",  @"Candy Stores", @"Cheese Shops", @"Chocolatiers & Shops", @"Ethnic Food", @"Fruits & Veggies", @"Health Markets", @"Herbs & Spices", @"Meat Shops", @"Pasta Shops", @"Seafood Markets", @"Tofu Shops", @"Street Vendors", @"Tea Rooms", @"Wineries", @"Zapiekanka", nil];
    }
    if ([_category isEqualToString: @"Health & Medical"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Acupuncture", @"Cannabis Clinics", @"Chiropractors", @"Counseling & Mental Health", @"Psychoanalysts", @"Psychologists", @"Psychotherapists", @"Sex Therapists", @"Sports Psychologists", @"Dental Hygienists", @"Mobile Clinics", @"Storefront Clinics", @"Dentists", @"Cosmetic Dentists", @"Endodontists", @"General Dentistry", @"Oral Surgeons", @"Orthodontists", @"Pediatric Dentists", @"Periodontists", @"Diagnostic Services", @"Diagnostic Imaging", @"Laboratory Testing", @"Doctors", @"Allergists", @"Anesthesiologists", @"Audiologist", @"Cardiologists", @"Cosmetic Surgeons", @"Dermatologists", @"Ear Nose & Throat", @"Endocrinologists", @"Family Practice", @"Fertility", @"Gastroenterologist", @"Gerontologists", @"Internal Medicine", @"Naturopathic/Holistic", @"Neurologist", @"Obstetricians & Gynecologists", @"Oncologist", @"Ophthalmologists", @"Orthopedists", @"Osteopathic Physicians", @"Pediatricians", @"Podiatrists", @"Proctologists", @"Psychiatrists", @"Pulmonologist", @"Radiologists", @"Rheumatologists", @"Sports Medicine", @"Surgeons", @"Tattoo Removal", @"Urologists", @"Doulas", @"Emergency Rooms", @"Health Insurance Offices", @"Hearing Aid Providers", @"Hearing Aids", @"Home Health Care", @"Hospice", @"Hospitals", @"Hypnosis/Hypnotherapy", @"Lactation Services", @"Laser Eye Surgery/Lasik", @"Lice Services", @"Massage Therapy", @"Medical Centers", @"Bulk Billing", @"Osteopaths", @"Walk-in Clinics", @"Medical Foot Care", @"Medical Spas", @"Medical Transportation", @"Midwives", @"Nurse Practitioner", @"Nutritionists", @"Occupational Therapy", @"Optometrists", @"Orthotics", @"Pharmacy", @"Physical Therapy", @"Prosthetics", @"Reflexology", @"Rehabilitation Center", @"Reiki", @"Retirement Homes", @"Saunas", @"Sleep Specialists", @"Speech Therapists", @"Traditional Chinese Medicine", @"Urgent Care", @"Weight Loss Centers", nil];
    }
    if ([_category isEqualToString: @"Home Services"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Building Supplies", @"Cabinetry", @"Carpenters", @"Carpet Installation", @"Carpeting", @"Chimney Sweeps", @"Contractors", @"Damage Restoration", @"Door Sales/Installation", @"Drywall Installation & Repair", @"Electricians", @"Fences & Gates", @"Fire Protection Services", @"Fireplace Services", @"Firewood", @"Flooring", @"Furniture Assembly", @"Garage Door Services", @"Gardeners", @"Glass & Mirrors", @"Gutter Services", @"Handyman", @"Heating & Air Conditioning/HVAC", @"Home Automation", @"Home Cleaning", @"Home Inspectors", @"Home Organization", @"Home Theatre Installation", @"Home Window Tinting", @"Insulation Installation", @"Interior Design", @"Internet Service Providers", @"Irrigation", @"Keys & Locksmiths", @"Landscape Architects", @"Landscaping", @"Lighting Fixtures & Equipment", @"Masonry/Concrete", @"Movers", @"Painters", @"Plumbing", @"Pool & Hot Tub Service", @"Pool Cleaners", @"Pressure Washers", @"Real Estate", @"Apartments", @"Art Space Rentals", @"Commercial Real Estate", @"Estate Liquidation", @"Home Staging", @"Kitchen Incubators", @"Mobile Home Dealers", @"Mortgage Brokers", @"Property Management", @"Real Estate Agents", @"Real Estate Services", @"Shared Office Spaces", @"University Housing", @"Refinishing Services", @"Roofing", @"Security Systems", @"Shades & Blinds", @"Shutters", @"Solar Installation", @"Structural Engineers", @"Stucco Services", @"Television Service Providers", @"Tree Services", @"Utilities", @"Water Purification Services", @"Window Washing", @"Windows Installation", nil];
    }
    if ([_category isEqualToString: @"Hotel & Travel"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Airports", @"Bed & Breakfast", @"Campgrounds", @"Car Rental", @"Guest Houses", @"Health Retreats", @"Hostels", @"Hotels", @"Agriturismi", @"Mountain Huts", @"Pensions", @"Residences", @"Rest Stops", @"Motorcycle Rental", @"RV Parks", @"RV Rental", @"Resorts", @"Ski Resorts", @"Tours", @"Architectural Tours", @"Art Tours", @"Bus Tours", @"Food Tours", @"Historical Tours", @"Walking Tours", @"Wine Tours", @"Train Stations", @"Transportation", @"Airlines", @"Airport Shuttles", @"Bike Sharing", @"Buses", @"Dolmus Station", @"Ferries", @"Limos", @"Pedicabs", @"Public Transportation", @"Taxis", @"Trains", @"Water Taxis", @"Travel Services", @"Vacation Rental Agents", @"Vacation Rentals", nil];
    }
    if ([_category isEqualToString: @"Local Services"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Adoption Services", @"Appliances & Repair", @"Appraisal Services", @"Bail Bondsmen", @"Bike Repair/Maintenance", @"Bookbinding", @"Carpet Cleaning", @"Child Care & Day Care", @"Community Service/Non-Profit Food Banks", @"Food Banks", @"Couriers & Delivery Services", @"Dry Cleaning & Laundry", @"Electronics Repair", @"Funeral Services & Cemeteries", @"Furniture Repair", @"Furniture Reupholstery", @"IT Services & Computer Repair", @"Data Recovery", @"Mobile Phone Repair", @"Telecommunications", @"Internet Booths & Calling Centers", @"Jewelry Repair", @"Junk Removal & Hauling", @"Knife Sharpening", @"Mailbox Centers", @"Metal Fabricators", @"Musical Instrument Services", @"Guitar Stores", @"Piano Services", @"Piano Stores", @"Nanny Services", @"Notaries", @"Pest Control", @"Powder Coating", @"Printing Services", @"Propane", @"Record Labels", @"Recording & Rehearsal Studios", @"Recycling Center", @"Screen Printing", @"Screen Printing/T-Shirt Printing", @"Self Storage", @"Septic Services", @"Sewing & Alterations", @"Shipping Centers", @"Shoe Repair", @"Snow Removal", @"Watch Repair", @"Water Delivery", @"Youth Club", nil];
    }
    if ([_category isEqualToString: @"Mass Media"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Print Media", @"Radio Stations", @"Television Stations", nil];
    }
    if ([_category isEqualToString: @"Nightlife"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Adult Entertainment", @"Bars", @"Absinthe Bars", @"Airport Lounges", @"Beach Bars", @"Beer Bar", @"Champagne Bars", @"Cocktail Bars", @"Dive Bars", @"Gay Bars", @"Hookah Bars", @"Hotel bar", @"Irish Pub", @"Lounges", @"Pubs", @"Sake Bars", @"Sports Bars", @"Wine Bars", @"Beer Gardens", @"Coffeeshops", @"Comedy Clubs", @"Country Dance Halls", @"Dance Clubs", @"Dance Restaurants", @"Fasil Music", @"Jazz & Blues", @"Karaoke", @"Music Venues", @"Piano Bars", @"Pool Halls", nil];
    }
    if ([_category isEqualToString: @"Pets"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Animal Shelters", @"Horse Boarding", @"Pet Adoption", @"Pet Services", @"Aquarium Services", @"Dog Walkers", @"Pet Boarding/Pet Sitting", @"Pet Groomers", @"Pet Training", @"Pet Stores", @"Veterinarians", nil];
    }
    if ([_category isEqualToString: @"Professional Services"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Accountants", @"Advertising", @"Architects", @"Boat Repair", @"Career Counseling", @"Editorial Services", @"Employment Agencies", @"Graphic Design", @"Internet Service Providers", @"Lawyers", @"Bankruptcy Law", @"Business Law", @"Criminal Defense Law", @"DUI Law", @"Divorce & Family Law", @"Employment Law", @"Estate Planning Law", @"General Litigation", @"IP & Internet Law", @"Immigration Law", @"Personal Injury Law", @"Real Estate Law", @"Tax Law", @"Legal Services", @"Life Coach", @"Marketing", @"Matchmakers", @"Music Production Services", @"Office Cleaning", @"Patent Law", @"Payroll Services", @"Personal Assistants", @"Private Investigation", @"Public Relations", @"Security Services", @"Shredding Services", @"Signmaking", @"Software Development", @"Talent Agencies", @"Taxidermy", @"Tenant and Eviction Law", @"Translation Services", @"Video/Film Production", @"Web Design", nil];
    }
    if ([_category isEqualToString: @"Public Services & Government"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Authorized Postal Representative", @"Community Centers", @"Courthouses", @"Departments of Motor Vehicles", @"Embassy", @"Fire Departments", @"Landmarks & Historical Buildings", @"Libraries", @"Police Departments", @"Post Offices", @"Registry Office", @"Tax Office", nil];
    }
    if ([_category isEqualToString: @"Real Estate"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Apartments", @"Art Space Rentals", @"Commercial Real Estate", @"Estate Liquidation", @"Home Staging", @"Kitchen Incubators", @"Mobile Home Dealers", @"Mortgage Brokers", @"Property Management", @"Real Estate Agents", @"Real Estate Services", @"Shared Office Spaces", @"University Housing", nil];
    }
    if ([_category isEqualToString: @"Religious Organizations"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Buddhist Temples", @"Churches", @"Hindu Temples", @"Mosques", @"Shrines", @"Synagogues", nil];
    }
    if ([_category isEqualToString: @"Restaurants"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Restaurants", @"Afghan", @"African Senegalese South African", @"Senegalese", @"South African", @"American", @"American", @"Arabian Arab Pizza", @"Arab Pizza", @"Argentine", @"Armenian", @"Asian Fusion", @"Asturian", @"Australian", @"Austrian", @"Baguettes", @"Bangladeshi", @"Barbeque", @"Basque", @"Bavarian", @"Beer Garden", @"Beer Hall", @"Beisl", @"Belgian Flemish", @"Flemish", @"Bistros", @"Black Sea", @"Brasseries", @"Brazilian", @"Brazilian Empanadas", @"Central Brazilian", @"Northeastern Brazilian", @"Northern Brazilian", @"Rodizios", @"Breakfast & Brunch", @"British", @"Buffets", @"Bulgarian", @"Burgers", @"Burmese", @"Cafes", @"Cafeteria", @"Cajun/Creole", @"Cambodian", @"Canadian", @"Canteen", @"Caribbean", @"Dominican", @"Haitian", @"Puerto Rican", @"Trinidadian", @"Catalan", @"Chech", @"Cheesesteaks", @"Chicken Shop", @"Chicken Wings", @"Chilean", @"Chinese", @"Cantonese", @"Congee", @"Dim Sum", @"Fuzhou", @"Hakka", @"Henghwa", @"Hokkien", @"Hunan", @"Pekinese", @"Shanghainese", @"Szechuan", @"Teochew", @"Comfort Food", @"Corsican", @"Creperies", @"Cuban", @"Curry Sausage", @"Cypriot", @"Czech", @"Czech/Slovakian", @"Danish", @"Delis", @"Diners", @"Dumplings", @"Eastern European", @"Ethiopian", @"Fast Food", @"Filipino", @"Fischbroetchen", @"Fish & Chips", @"Fondue", @"Food Court", @"Food Stands", @"French", @"Alsatian", @"Auvergnat", @"Berrichon", @"Bourguignon", @"Nicoise", @"Provencal", @"French Southwest", @"Galician", @"Gastropubs", @"Georgian", @"German", @"Baden", @"Eastern German", @"Hessian", @"Northern German", @"Palatine", @"Rhinelandian", @"Giblets", @"Gluten-Free", @"Greek", @"Halal", @"Hawaiian", @"Heuriger", @"Himalayan/Nepalese", @"Hong Kong Style Cafe", @"Hot Dogs", @"Hot Pot", @"Hungarian", @"Iberian", @"Indian", @"Indonesian", @"International", @"Irish", @"Island Pub", @"Israeli", @"Italian", @"Abruzzese", @"Altoatesine", @"Apulian", @"Calabrian", @"Cucina campana", @"Emilian", @"Friulan", @"Ligurian", @"Lumbard", @"Napoletana", @"Piemonte", @"Roman", @"Sardinian", @"Sicilian", @"Tuscan", @"Venetian", @"Japanese", @"Blowfish", @"Conveyor Belt Sushi", @"Donburi Gyudon Oyakodon", @"Gyudon", @"Oyakodon", @"Hand Rolls", @"Horumon", @"Izakaya", @"Japanese Curry", @"Kaiseki", @"Kushikatsu", @"Oden", @"Okinawan", @"Okonomiyaki", @"Onigiri", @"Ramen", @"Robatayaki", @"Soba", @"Sukiyaki", @"Takoyaki", @"Tempura", @"Teppanyaki", @"Tonkatsu", @"Udon", @"Unagi", @"Western Style Japanese Food", @"Yakiniku", @"Yakitori", @"Jewish", @"Kebab", @"Korean", @"Kosher", @"Kurdish", @"Laos", @"Laotian", @"Latin American", @"Colombian", @"Salvadoran", @"Venezuelan", @"Live/Raw Food", @"Lyonnais", @"Malaysian Mamak Nyonya", @"Mamak", @"Nyonya", @"Meatballs", @"Mediterranean Falafel", @"Falafel", @"Mexican", @"Eastern Mexican", @"Jaliscan", @"Northern Mexican", @"Oaxacan", @"Pueblan", @"Tacos", @"Tamales", @"Yucatan", @"Middle Eastern", @"Egyptian", @"Lebanese", @"Milk Bars", @"Modern Australian", @"Modern European", @"Mongolian", @"Moroccan", @"New Zealand", @"Night Food", @"Norcinerie", @"Open Sandwiches", @"Oriental", @"Pakistani", @"Parent Cafes", @"Parma", @"Persian/Iranian", @"Peruvian", @"Pita", @"Pizza", @"Polish Pierogis", @"Pierogis", @"Portuguese", @"Alentejo", @"Algarve", @"Azores", @"Beira", @"Fado Houses", @"Madeira", @"Minho", @"Ribatejo", @"Tras-os-Montes", @"Potatoes", @"Poutineries", @"Pub Food", @"Rice", @"Romanian", @"Rotisserie Chicken", @"Rumanian", @"Russian", @"Salad", @"Sandwiches", @"Scandinavian", @"Scottish", @"Seafood", @"Serbo Croatian", @"Signature Cuisine", @"Singaporean", @"Slovakian", @"Soul Food", @"Soup", @"Southern", @"Spanish Arroceria / Paella", @"Arroceria / Paella", @"Sri Lankan", @"Steakhouses", @"Sushi Bars", @"Swabian", @"Swedish", @"Swiss Food", @"Tabernas", @"Taiwanese", @"Tapas Bars", @"Tapas/Small Plates", @"Tex-Mex", @"Thai", @"Traditional Norwegian", @"Traditional Swedish", @"Trattorie", @"Turkish Chee Kufta Gozleme Turkish Ravioli", @"Chee Kufta", @"Gozleme", @"Turkish Ravioli", @"Ukrainian", @"Uzbek", @"Vegan", @"Vegetarian", @"Venison", @"Vietnamese", @"Wok", @"Wraps", @"Yugoslav", nil];
    }
    if ([_category isEqualToString: @"Shopping"]) {
        self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Shopping", @"Adult", @"Antiques", @"Art Galleries", @"Arts & Crafts", @"Art Supplies", @"Cards & Stationery", @"Cooking Classes", @"Costumes", @"Embroidery & Crochet", @"Fabric Stores", @"Framing", @"Auction Houses", @"Baby Gear & Furniture", @"Battery Stores", @"Bespoke Clothing", @"Books, Mags, Music & Video", @"Bookstores", @"Comic Books", @"Music & DVDs", @"Newspapers & Magazines", @"Video Game Stores", @"Videos & Video Game Rental", @"Vinyl Records", @"Brewing Supplies", @"Bridal", @"Chinese Bazaar", @"Computers", @"Concept Shops", @"Cosmetics & Beauty Supply", @"Customized Merchandise", @"Department Stores", @"Discount Store", @"Drugstores", @"Electronics", @"Eyewear & Opticians", @"Fashion", @"Accessories", @"Children's Clothing", @"Department Stores", @"Formal Wear", @"Hats", @"Kimonos", @"Leather Goods", @"Lingerie", @"Maternity Wear", @"Men's Clothing", @"Plus Size Fashion", @"Shoe Stores", @"Sleepwear", @"Sports Wear", @"Stockings", @"Surf Shop", @"Swimwear", @"Used, Vintage & Consignment", @"Women's Clothing", @"Fireworks", @"Fitness/Exercise Equipment", @"Flea Markets", @"Flowers & Gifts", @"Cards & Stationery", @"Florists", @"Flowers", @"Gift Shops", @"Gold Buyers", @"Golf Equipment Shops", @"Guns & Ammo", @"High Fidelity Audio Equipment", @"Hobby Shops", @"Home & Garden", @"Appliances", @"Christmas Trees", @"Furniture Stores", @"Hardware Stores", @"Home Decor", @"Hot Tub & Pool", @"Kitchen & Bath", @"Linens", @"Materiale elettrico", @"Mattresses", @"Nurseries & Gardening", @"Pumpkin Patches", @"Rugs", @"Tableware", @"Horse Equipment Shops", @"Jewelry", @"Kiosk", @"Knitting Supplies", @"Luggage", @"Market Stalls", @"Medical Supplies", @"Mobile Phones", @"Motorcycle Gear", @"Musical Instruments & Teachers", @"Office Equipment", @"Outlet Stores", @"Pawn Shops", @"Perfume", @"Personal Shopping", @"Photography Stores & Services", @"Pool & Billiards", @"Pop-up Shops", @"Scandinavian Design", @"Shopping Centers", @"Souvenir Shops", @"Spiritual Shop", @"Sporting Goods", @"Bikes", @"Golf Equipment", @"Outdoor Gear", @"Skate Shops", @"Ski & Snowboard Shops", @"Sports Wear", @"Thrift Stores", @"Tickets", @"Tobacco Shops", @"Toy Stores", @"Trophy Shops", @"Uniforms", @"Used Bookstore", @"Vape Shops", @"Watches", @"Wholesale Stores", @"Wigs", nil];
    }
    self.inputBox.delegate = self;
    self.resultTableView.delegate = self;
    self.resultTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)searchAutocompleteEntriesWithSubstring:(NSString *)substring {
    
    // Put anything that starts with this substring into the autocompleteUrls array
    // The items in this array is what will show up in the table view
    [_autocompleteOptions removeAllObjects];
    for(NSString *curString in _pasteOptions) {
        NSRange substringRange = [curString rangeOfString:substring];
        if (substringRange.location == 0) {
            [_autocompleteOptions addObject:curString];
        }
    }
    [self.resultTableView reloadData];
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    return [_pasteOptions count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    static NSString *AutoCompleteRowIdentifier = @"Option";
    cell = [tableView dequeueReusableCellWithIdentifier:AutoCompleteRowIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:AutoCompleteRowIdentifier];
    }
    
    cell.textLabel.text = [_pasteOptions objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    _inputBox.text = selectedCell.textLabel.text;
    _selected = selectedCell.textLabel.text;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"back"]) {
        MainViewController *vc = (MainViewController *)[segue destinationViewController];
        vc.categoryName = _category;
        vc.subCategoryName = _selected;
    }
}


@end
