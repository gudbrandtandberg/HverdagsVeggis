//
//  AlleOppskriftene.m
//  HverdagsVeggis
//
//  Created by Gudbrand Tandberg on 5/16/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "AlleOppskrifteneDataController.h"
#import "VeggisOppskrift.h"

@interface AlleOppskrifteneDataController ()
-(id) initMedOppskrifter;
@end

@implementation AlleOppskrifteneDataController

-(id) initMedOppskrifter
{
	//Lager oppskriftlisten med sublistene:
	NSArray *enListe = [[NSArray alloc] init];
	self.masterOppskriftListe = enListe;
	
	NSArray *frokost = [[NSArray alloc] init];
	NSArray *lunsj = [[NSArray alloc] init];
	NSArray *middag = [[NSArray alloc] init];
	NSArray *dessert = [[NSArray alloc] init];
	NSArray *ekstra = [[NSArray alloc] init];
	
	//Oppretter alle oppskriftene:
	
	//Hummus:
    
    NSString *hummusFil = [[NSBundle mainBundle] pathForResource:@"hummus" ofType:@"jpg"];
	VeggisOppskrift *hummus = [[VeggisOppskrift alloc] initWithBilde:hummusFil fremgangsmaate: NSLocalizedString(@"hummus", @"") navn:NSLocalizedString(@"hummusnavn", nil) ingredienser: NSLocalizedString(@"hummusing", nil) intro:NSLocalizedString(@"hummusintro", nil) antpers:4];
	
	
	//Blåbær- og jordbærpai:

    NSString *blaapaiFil = [[NSBundle mainBundle] pathForResource:@"blåbærpai" ofType:@"jpg"];
	VeggisOppskrift *blaapai = [[VeggisOppskrift alloc] initWithBilde:blaapaiFil fremgangsmaate:NSLocalizedString(@"blaapai", @"") navn:NSLocalizedString(@"blaapainavn", nil) ingredienser: NSLocalizedString(@"blaapaiing", nil) intro:NSLocalizedString(@"blaapaiintro", nil) antpers:6];
	
	//Intergalaktiske pannekaker:
	
    NSString *pannekakerFil = [[NSBundle mainBundle] pathForResource:@"pannekaker" ofType:@"jpg"];
	VeggisOppskrift *pannekaker = [[VeggisOppskrift alloc] initWithBilde:pannekakerFil fremgangsmaate:NSLocalizedString(@"pannekaker", @"") navn: NSLocalizedString(@"pannekakernavn", nil) ingredienser: NSLocalizedString(@"pannekakering", nil) intro:NSLocalizedString(@"pannekakerintro", nil) antpers:2];
	
	//Spinatsuppe:
	
    NSString *spinatsuppeFil = [[NSBundle mainBundle] pathForResource:@"spinatsuppe" ofType:@"jpg"];
	VeggisOppskrift *spinatsuppe = [[VeggisOppskrift alloc] initWithBilde:spinatsuppeFil fremgangsmaate:NSLocalizedString(@"spinatsuppe", @"") navn:NSLocalizedString(@"spinatsuppenavn", nil) ingredienser:NSLocalizedString(@"spinatsuppeing", nil) intro:NSLocalizedString(@"spinatsuppeintro", nil) antpers:1];
	
	//Bananmuffins
	
    NSString *bananmuffinsFil = [[NSBundle mainBundle] pathForResource:@"bananmuffins" ofType:@"jpg"];
	VeggisOppskrift *bananmuffins = [[VeggisOppskrift alloc] initWithBilde:bananmuffinsFil fremgangsmaate:NSLocalizedString(@"bananmuffins", @"") navn:NSLocalizedString(@"bananmuffinsnavn", nil) ingredienser:NSLocalizedString(@"bananmuffinsing", nil) intro:NSLocalizedString(@"bananmuffinsintro", nil) antpers:4];
	
	//Thai grønnsaksuppe
	
    NSString *thaigroennsaksuppeFil = [[NSBundle mainBundle] pathForResource:@"thaisuppe" ofType:@"jpg"];
	VeggisOppskrift *thaigroennsaksuppe = [[VeggisOppskrift alloc] initWithBilde:thaigroennsaksuppeFil fremgangsmaate:NSLocalizedString(@"thaisuppe", @"") navn:NSLocalizedString(@"thaisuppenavn", nil) ingredienser:NSLocalizedString(@"thaisuppeing", nil) intro:NSLocalizedString(@"thaisuppeintro", nil) antpers:3];
	
	//Veggisburger
	
    NSString *veggisburgerFil = [[NSBundle mainBundle] pathForResource:@"grønnsaksburger" ofType:@"jpg"];
	VeggisOppskrift *veggisburger = [[VeggisOppskrift alloc] initWithBilde:veggisburgerFil fremgangsmaate:NSLocalizedString(@"veggisburger", nil) navn:NSLocalizedString(@"veggisburgernavn", nil) ingredienser:NSLocalizedString(@"veggisburgering", nil) intro:NSLocalizedString(@"veggisburgerintro", nil) antpers:2];
	
	//Squashstrimler
	
    NSString *squashstrimlerFil = [[NSBundle mainBundle] pathForResource:@"squashstrimler" ofType:@"jpg"];
	VeggisOppskrift *squashstrimler = [[VeggisOppskrift alloc] initWithBilde:squashstrimlerFil fremgangsmaate:NSLocalizedString(@"squashstrimler", nil) navn:NSLocalizedString(@"squashstrimlernavn", nil) ingredienser:NSLocalizedString(@"squashstrimlering", nil) intro:NSLocalizedString(@"squashstrimlerintro", nil) antpers:2];
	
    //Morellterter
    
    NSString *morelltertFil = [[NSBundle mainBundle] pathForResource:@"morelltert" ofType:@"jpg"];
	VeggisOppskrift *morelltert = [[VeggisOppskrift alloc] initWithBilde:morelltertFil fremgangsmaate:NSLocalizedString(@"morelltert", nil) navn:NSLocalizedString(@"morelltertnavn", nil) ingredienser:NSLocalizedString(@"morellterting", nil) intro:NSLocalizedString(@"morelltertintro", nil) antpers: 2];
	
	//Bananis
	
    NSString *bananisFil = [[NSBundle mainBundle] pathForResource:@"bananis" ofType:@"jpg"];
	VeggisOppskrift *bananis = [[VeggisOppskrift alloc] initWithBilde:bananisFil fremgangsmaate:NSLocalizedString(@"bananis", nil) navn:NSLocalizedString(@"bananisnavn", nil) ingredienser:NSLocalizedString(@"bananising", nil) intro:NSLocalizedString(@"bananisintro", nil) antpers:2];

	//Ravioli
	
    NSString *ravioliFil = [[NSBundle mainBundle] pathForResource:@"ravioli" ofType:@"jpg"];
	VeggisOppskrift *ravioli = [[VeggisOppskrift alloc] initWithBilde:ravioliFil fremgangsmaate:NSLocalizedString(@"ravioli", nil) navn:NSLocalizedString(@"raviolinavn", nil) ingredienser:NSLocalizedString(@"ravioliing", nil) intro:NSLocalizedString(@"ravioliintro", nil) antpers:2];
	
	//Havregrøt
	
    NSString *havregrotFil = [[NSBundle mainBundle] pathForResource:@"havregrot" ofType:@"jpg"];
	VeggisOppskrift *havregrot = [[VeggisOppskrift alloc] initWithBilde:havregrotFil fremgangsmaate:NSLocalizedString(@"havregrot", nil) navn:NSLocalizedString(@"havregrotnavn", nil) ingredienser:NSLocalizedString(@"havregroting", nil) intro:NSLocalizedString(@"havregrotintro", nil) antpers:1];
	
	//Sarah's risrett
	
    NSString *risrettFil = [[NSBundle mainBundle] pathForResource:@"risrett" ofType:@"jpg"];
	VeggisOppskrift *risrett = [[VeggisOppskrift alloc] initWithBilde:risrettFil fremgangsmaate:NSLocalizedString(@"risrett", nil) navn:NSLocalizedString(@"risrettnavn", nil) ingredienser:NSLocalizedString(@"risretting", nil) intro:NSLocalizedString(@"risrettintro", nil) antpers:3];
    
    //Pitabrød
    
    NSString *pitaFil = [[NSBundle mainBundle] pathForResource:@"pita" ofType:@"jpg"];
    VeggisOppskrift *pita = [[VeggisOppskrift alloc] initWithBilde:pitaFil fremgangsmaate:NSLocalizedString(@"pita", nil) navn:NSLocalizedString(@"pitanavn", nil) ingredienser:NSLocalizedString(@"pitaing", nil) intro:NSLocalizedString(@"pitaintro", nil) antpers:3];
    
    //Tabbouleh
    
    NSString *tabboulehFil = [[NSBundle mainBundle] pathForResource:@"tabbouleh" ofType:@"jpg"];
	VeggisOppskrift *tabbouleh = [[VeggisOppskrift alloc] initWithBilde:tabboulehFil fremgangsmaate:NSLocalizedString(@"tabbouleh", nil) navn:NSLocalizedString(@"tabboulehnavn", nil) ingredienser:NSLocalizedString(@"tabboulehing", nil) intro:NSLocalizedString(@"tabboulehintro", nil) antpers:5];
    
    //Tahinidressing
    
    NSString *tahiniFil = [[NSBundle mainBundle] pathForResource:@"tahini" ofType:@"jpg"];
    VeggisOppskrift *tahini = [[VeggisOppskrift alloc] initWithBilde:tahiniFil fremgangsmaate:NSLocalizedString(@"tahini", nil) navn:NSLocalizedString(@"tahininavn", nil) ingredienser:NSLocalizedString(@"tahiniing", nil) intro:NSLocalizedString(@"tahiniintro", nil) antpers:4];
    
    //Falaffel
    
    NSString *falaffelFil = [[NSBundle mainBundle] pathForResource:@"falaffel" ofType:@"jpg"];
    VeggisOppskrift *falaffel = [[VeggisOppskrift alloc] initWithBilde:falaffelFil fremgangsmaate:NSLocalizedString(@"falaffel", nil) navn:NSLocalizedString(@"falaffelnavn", nil) ingredienser:NSLocalizedString(@"falaffeling", nil) intro:NSLocalizedString(@"falaffelintro", nil) antpers:4];
    
    NSString *kikertgryteFil = [[NSBundle mainBundle] pathForResource:@"kikertgryte" ofType:@"jpg"];
    VeggisOppskrift *kikertgryte = [[VeggisOppskrift alloc] initWithBilde:kikertgryteFil fremgangsmaate:NSLocalizedString(@"kikertgryte", nil) navn:NSLocalizedString(@"kikertgrytenavn", nil) ingredienser:NSLocalizedString(@"kikertgryteing", nil) intro:NSLocalizedString(@"kikertgryteintro", nil) antpers:3];
    
    NSString *moossakaaFil = [[NSBundle mainBundle] pathForResource:@"moossakaa" ofType:@"jpg"];
    VeggisOppskrift *moossakaa = [[VeggisOppskrift alloc] initWithBilde:moossakaaFil fremgangsmaate:NSLocalizedString(@"moossakaa", nil) navn:NSLocalizedString(@"moossakaanavn", nil) ingredienser:NSLocalizedString(@"moossakaaing", nil) intro:NSLocalizedString(@"moossakaaintro", nil) antpers:2];
    
    NSString *poireFil = [[NSBundle mainBundle] pathForResource:@"poire" ofType:@"jpg"];
    VeggisOppskrift *poire = [[VeggisOppskrift alloc] initWithBilde:poireFil fremgangsmaate:NSLocalizedString(@"poire", nil) navn:NSLocalizedString(@"poirenavn", nil) ingredienser:NSLocalizedString(@"poireing", nil) intro:NSLocalizedString(@"poireintro", nil) antpers:2];
 
    NSString *quinoasalatFil = [[NSBundle mainBundle] pathForResource:@"quinoasalat" ofType:@"JPG"];
    VeggisOppskrift *quinoasalat = [[VeggisOppskrift alloc] initWithBilde:quinoasalatFil fremgangsmaate:NSLocalizedString(@"quinoasalat", nil) navn:NSLocalizedString(@"quinoasalatnavn", nil) ingredienser:NSLocalizedString(@"quinoasalating", nil) intro:NSLocalizedString(@"quinoasalatintro", nil) antpers:2];
    
    NSString *potetsalatFil = [[NSBundle mainBundle] pathForResource:@"potetsalat" ofType:@"jpg"];
    VeggisOppskrift *potetsalat = [[VeggisOppskrift alloc] initWithBilde:potetsalatFil fremgangsmaate:NSLocalizedString(@"potetsalat", nil) navn:NSLocalizedString(@"potetsalatnavn", nil) ingredienser:NSLocalizedString(@"potetsalating", nil) intro:NSLocalizedString(@"potetsalatintro", nil) antpers:2];
    
    NSString *grønnkålFil = [[NSBundle mainBundle] pathForResource:@"grønnkål" ofType:@"jpg"];
    VeggisOppskrift *grønnkål = [[VeggisOppskrift alloc] initWithBilde:grønnkålFil fremgangsmaate:NSLocalizedString(@"grønnkål", nil) navn:NSLocalizedString(@"grønnkålnavn", nil) ingredienser:NSLocalizedString(@"grønnkåling", nil) intro:NSLocalizedString(@"grønnkålintro", nil) antpers:2];
    
    NSString *småbrødFil = [[NSBundle mainBundle] pathForResource:@"småbrød" ofType:@"jpg"];
    VeggisOppskrift *småbrød = [[VeggisOppskrift alloc] initWithBilde:småbrødFil fremgangsmaate:NSLocalizedString(@"småbrød", nil) navn:NSLocalizedString(@"småbrødnavn", nil) ingredienser:NSLocalizedString(@"småbrøding", nil) intro:NSLocalizedString(@"småbrødintro", nil) antpers:4];
    
    NSString *hvitløkFil = [[NSBundle mainBundle] pathForResource:@"hvitløk" ofType:@"jpg"];
    VeggisOppskrift *hvitløk = [[VeggisOppskrift alloc] initWithBilde:hvitløkFil fremgangsmaate:NSLocalizedString(@"hvitløk", nil) navn:NSLocalizedString(@"hvitløknavn", nil) ingredienser:NSLocalizedString(@"hvitløking", nil) intro:NSLocalizedString(@"hvitløkintro", nil) antpers:2];
    
    NSString *tomatpotetFil = [[NSBundle mainBundle] pathForResource:@"tomatpotet" ofType:@"jpg"];
    VeggisOppskrift *tomatpotet = [[VeggisOppskrift alloc] initWithBilde:tomatpotetFil fremgangsmaate:NSLocalizedString(@"tomatpotet", nil) navn:NSLocalizedString(@"tomatpotetnavn", nil) ingredienser:NSLocalizedString(@"tomatpoteting", nil) intro:NSLocalizedString(@"tomatpotetintro", nil) antpers:4];

    
    
     NSString *thainudlerFil = [[NSBundle mainBundle] pathForResource:@"thainudler" ofType:@"jpg"];
     VeggisOppskrift *thainudler = [[VeggisOppskrift alloc] initWithBilde:thainudlerFil fremgangsmaate:NSLocalizedString(@"thainudler", nil) navn:NSLocalizedString(@"thainudlernavn", nil) ingredienser:NSLocalizedString(@"thainudlering", nil) intro:NSLocalizedString(@"thainudlerintro", nil) antpers:4];
    
    NSString *peanøttnudlerFil = [[NSBundle mainBundle] pathForResource:@"peanøttnudler" ofType:@"jpg"];
    VeggisOppskrift *peanøttnudler = [[VeggisOppskrift alloc] initWithBilde:peanøttnudlerFil fremgangsmaate:NSLocalizedString(@"peanøttnudler", nil) navn:NSLocalizedString(@"peanøttnudlernavn", nil) ingredienser:NSLocalizedString(@"peanøttnudlering", nil) intro:NSLocalizedString(@"peanøttnudlerintro", nil) antpers:4];

    
    NSString *dandanFil = [[NSBundle mainBundle] pathForResource:@"dandan" ofType:@"jpg"];
    VeggisOppskrift *dandan = [[VeggisOppskrift alloc] initWithBilde:dandanFil fremgangsmaate:NSLocalizedString(@"dandan", nil) navn:NSLocalizedString(@"dandannavn", nil) ingredienser:NSLocalizedString(@"dandaning", nil) intro:NSLocalizedString(@"dandanintro", nil) antpers:1];

    NSString *gsuppeFil = [[NSBundle mainBundle] pathForResource:@"gsuppe" ofType:@"jpg"];
    VeggisOppskrift *gsuppe = [[VeggisOppskrift alloc] initWithBilde:gsuppeFil fremgangsmaate:NSLocalizedString(@"gsuppe", nil) navn:NSLocalizedString(@"gsuppenavn", nil) ingredienser:NSLocalizedString(@"gsuppeing", nil) intro:NSLocalizedString(@"gsuppeintro", nil) antpers:2];
    
    NSString *lasagneFil = [[NSBundle mainBundle] pathForResource:@"lasagne" ofType:@"jpg"];
    VeggisOppskrift *lasagne = [[VeggisOppskrift alloc] initWithBilde:lasagneFil fremgangsmaate:NSLocalizedString(@"lasagne", nil) navn:NSLocalizedString(@"lasagnenavn", nil) ingredienser:NSLocalizedString(@"lasagneing", nil) intro:NSLocalizedString(@"lasagneintro", nil) antpers:2];
    
    
    NSString *kålcurryFil = [[NSBundle mainBundle] pathForResource:@"kålcurry" ofType:@"jpg"];
    VeggisOppskrift *kålcurry = [[VeggisOppskrift alloc] initWithBilde:kålcurryFil fremgangsmaate:NSLocalizedString(@"kålcurry", nil) navn:NSLocalizedString(@"kålcurrynavn", nil) ingredienser:NSLocalizedString(@"kålcurrying", nil) intro:NSLocalizedString(@"kålcurryintro", nil) antpers:2];
    
    NSString *rissalatFil = [[NSBundle mainBundle] pathForResource:@"rissalat" ofType:@"JPG"];
    VeggisOppskrift *rissalat = [[VeggisOppskrift alloc] initWithBilde:rissalatFil fremgangsmaate:NSLocalizedString(@"rissalat", nil) navn:NSLocalizedString(@"rissalatnavn", nil) ingredienser:NSLocalizedString(@"rissalating", nil) intro:NSLocalizedString(@"rissalatintro", nil) antpers:3];

    NSString *granolaFil = [[NSBundle mainBundle] pathForResource:@"granola" ofType:@"jpg"];
    VeggisOppskrift *granola = [[VeggisOppskrift alloc] initWithBilde:granolaFil fremgangsmaate:NSLocalizedString(@"granola", nil) navn:NSLocalizedString(@"granolanavn", nil) ingredienser:NSLocalizedString(@"granolaing", nil) intro:NSLocalizedString(@"granolaintro", nil) antpers:4];

    NSString *burritoFil = [[NSBundle mainBundle] pathForResource:@"burrito" ofType:@"jpg"];
    VeggisOppskrift *burrito = [[VeggisOppskrift alloc] initWithBilde:burritoFil fremgangsmaate:NSLocalizedString(@"burrito", nil) navn:NSLocalizedString(@"burritonavn", nil) ingredienser:NSLocalizedString(@"burritoing", nil) intro:NSLocalizedString(@"burritointro", nil) antpers:2];
    
    NSString *mandelFil = [[NSBundle mainBundle] pathForResource:@"mandel" ofType:@"jpg"];
    VeggisOppskrift *mandel = [[VeggisOppskrift alloc] initWithBilde:mandelFil fremgangsmaate:NSLocalizedString(@"mandel", nil) navn:NSLocalizedString(@"mandelnavn", nil) ingredienser:NSLocalizedString(@"mandeling", nil) intro:NSLocalizedString(@"mandelintro", nil) antpers:2];
    
    NSString *pitapizzaFil = [[NSBundle mainBundle] pathForResource:@"pitapizza" ofType:@"jpg"];
    VeggisOppskrift *pitapizza = [[VeggisOppskrift alloc] initWithBilde:pitapizzaFil fremgangsmaate:NSLocalizedString(@"pitapizza", nil) navn:NSLocalizedString(@"pitapizzanavn", nil) ingredienser:NSLocalizedString(@"pitapizzaing", nil) intro:NSLocalizedString(@"pitapizzaintro", nil) antpers:2];

    NSString *fsoppFil = [[NSBundle mainBundle] pathForResource:@"fsopp" ofType:@"jpg"];
    VeggisOppskrift *fsopp = [[VeggisOppskrift alloc] initWithBilde:fsoppFil fremgangsmaate:NSLocalizedString(@"fsopp", nil) navn:NSLocalizedString(@"fsoppnavn", nil) ingredienser:NSLocalizedString(@"fsopping", nil) intro:NSLocalizedString(@"fsoppintro", nil) antpers:2];
    
    NSString *fsquashFil = [[NSBundle mainBundle] pathForResource:@"fsquash" ofType:@"jpg"];
    VeggisOppskrift *fsquash = [[VeggisOppskrift alloc] initWithBilde:fsquashFil fremgangsmaate:NSLocalizedString(@"fsquash", nil) navn:NSLocalizedString(@"fsquashnavn", nil) ingredienser:NSLocalizedString(@"fsquashing", nil) intro:NSLocalizedString(@"fsquashintro", nil) antpers:2];

    NSString *bulgursalatFil = [[NSBundle mainBundle] pathForResource:@"bulgursalat" ofType:@"jpg"];
    VeggisOppskrift *bulgursalat = [[VeggisOppskrift alloc] initWithBilde:bulgursalatFil fremgangsmaate:NSLocalizedString(@"bulgursalat", nil) navn:NSLocalizedString(@"bulgursalatnavn", nil) ingredienser:NSLocalizedString(@"bulgursalating", nil) intro:NSLocalizedString(@"bulgursalatintro", nil) antpers:2];

    NSString *salsaFil = [[NSBundle mainBundle] pathForResource:@"salsa" ofType:@"jpg"];
    VeggisOppskrift *salsa = [[VeggisOppskrift alloc] initWithBilde:salsaFil fremgangsmaate:NSLocalizedString(@"salsa", nil) navn:NSLocalizedString(@"salsanavn", nil) ingredienser:NSLocalizedString(@"salsaing", nil) intro:NSLocalizedString(@"salsaintro", nil) antpers:3];
    
    NSString *crumbleFil = [[NSBundle mainBundle] pathForResource:@"crumble" ofType:@"jpg"];
    VeggisOppskrift *crumble = [[VeggisOppskrift alloc] initWithBilde:crumbleFil fremgangsmaate:NSLocalizedString(@"crumble", nil) navn:NSLocalizedString(@"crumblenavn", nil) ingredienser:NSLocalizedString(@"crumbleing", nil) intro:NSLocalizedString(@"crumbleintro", nil) antpers:6];
    
    NSString *fpaprikaFil = [[NSBundle mainBundle] pathForResource:@"fpaprika" ofType:@"jpg"];
    VeggisOppskrift *fpaprika = [[VeggisOppskrift alloc] initWithBilde:fpaprikaFil fremgangsmaate:NSLocalizedString(@"fpaprika", nil) navn:NSLocalizedString(@"fpaprikanavn", nil) ingredienser:NSLocalizedString(@"fpaprikaing", nil) intro:NSLocalizedString(@"fpaprikaintro", nil) antpers:2];

    NSString *vårrullerFil = [[NSBundle mainBundle] pathForResource:@"vårruller" ofType:@"jpg"];
    VeggisOppskrift *vårruller = [[VeggisOppskrift alloc] initWithBilde:vårrullerFil fremgangsmaate:NSLocalizedString(@"vårruller", nil) navn:NSLocalizedString(@"vårrullernavn", nil) ingredienser:NSLocalizedString(@"vårrullering", nil) intro:NSLocalizedString(@"vårrullerintro", nil) antpers:3];
    
    NSString *lburgerFil = [[NSBundle mainBundle] pathForResource:@"lburger" ofType:@"jpg"];
    VeggisOppskrift *lburger = [[VeggisOppskrift alloc] initWithBilde:lburgerFil fremgangsmaate:NSLocalizedString(@"lburger", nil) navn:NSLocalizedString(@"lburgernavn", nil) ingredienser:NSLocalizedString(@"lburgering", nil) intro:NSLocalizedString(@"lburgerintro", nil) antpers:2];

    /*
     NSString *nyRettFil = [[NSBundle mainBundle] pathForResource:@"nyRett" ofType:@"jpg"];
     VeggisOppskrift *nyRett = [[VeggisOppskrift alloc] initWithBilde:nyRettFil fremgangsmaate:NSLocalizedString(@"nyRett", nil) navn:NSLocalizedString(@"nyRettnavn", nil) ingredienser:NSLocalizedString(@"nyRetting", nil) intro:NSLocalizedString(@"nyRettintro", nil) antpers:2];
    */

 
	//Setter det hele sammen:
	
	frokost = @[havregrot, granola, pannekaker];
	lunsj = @[dandan, gsuppe, moossakaa, potetsalat, pitapizza, quinoasalat, spinatsuppe, squashstrimler, tabbouleh];
	middag = @[bulgursalat, falaffel, fsopp, fsquash, fpaprika, lasagne, gsuppe, kålcurry, lburger, rissalat, kikertgryte, burrito, risrett, ravioli, thaigroennsaksuppe, thainudler, peanøttnudler, tomatpotet, veggisburger, vårruller];
	dessert = @[bananmuffins, blaapai, bananis, crumble, morelltert, poire];
	ekstra = @[grønnkål, hummus, hvitløk, mandel, pita, salsa, småbrød, tahini];

	self.masterOppskriftListe = @[frokost, lunsj, middag, dessert, ekstra];
	return self;
}

 -(id) init
{
	self = [super init];
	self = [self initMedOppskrifter];
	return self;
}

@end
