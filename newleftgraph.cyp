// Magazine and review
CREATE (Jacobin:Magazine {title:'Jacobin', created:2011})
CREATE (OccupyMag:Magazine {title:'Occupy!'})
CREATE (N1:Magazine {title:'N+1', created:2004}),
  (N1)-[:PUBLISH {roles:['Edition']}]->(OccupyMag)
CREATE (NewLeftReview:Magazine {title:'New Left Review'})
CREATE (Dissent:Magazine {title:'Dissent'})
CREATE (NewInquiry:Magazine {title:'The New Inquiry', created:2009})
CREATE (TheNation:Magazine {title:'The Nation'})
CREATE (InTheseTime:Magazine {title:'In These Time'})
CREATE (ViewPointMag:Magazine {title:'Viewpoint Magazine'})
CREATE (LaborNotes:Magazine {title:"Labor Notes", created:1974})

// Edition
CREATE (Verso:Edition {name:'Verso'})

// Book
CREATE (TheFuturWeWant:Book {name:'The Futur We Want'})
CREATE (DebtTheFirst5000Years:Book {name:'Debt: The First 5000 Years', year:2011})
CREATE (FromBlackLivesMatterToBlackLiberation:Book {name:'From Black Lives Matter To Black Liberation', year:2016})

// Movement
CREATE (Occupy:Movement {name:'Occupy'}),
  (Occupy)-[:PUBLISH]->(ViewPointMag)
CREATE (CulturalStudies:Movement {name:'Cultural Studies'})
CREATE (IdentityPolitics:Movement {name:'Identity Politics'})
CREATE (PostStructuralism:Movement {name:'Post-Structuralisme'})
//CREATE (FrenchTheory:Movement {name:'French Theory'}),
//  (FrenchTheory)-[:CREATE]->(PostStructuralism)

// Party
CREATE (DSA:PoliticalParty {name:'Democratic Socialist of America', created:1973})

// People
CREATE (BSunkara:Person {name:'Breshar Sunkara', born:1989, wiki:'https://en.wikipedia.org/wiki/Bhaskar_Sunkara'}),
  (BSunkara)-[:CREATE {roles:'Cofunder'}]->(Jacobin),
  (BSunkara)-[:CONTRIBUTE_TO {roles:'Writer'}]->(Jacobin),
  (BSunkara)-[:WRITE {roles:'Cowriter'}]->(TheFuturWeWant),
  (BSunkara)-[:CONTRIBUTE_TO {roles:'Writer'}]->(NewLeftReview),
  (BSunkara)-[:CONTRIBUTE_TO {roles:'Writer'}]->(InTheseTime),
  (BSunkara)-[:CONTRIBUTE_TO {roles:'Writer'}]->(Dissent),
  (BSunkara)-[:JOIN]->(DSA)
CREATE (SLeonard:Person {name:'Sarah Leonard', born:1964}),
  (SLeonard)-[:CONTRIBUTE_TO {roles:'Writer'}]->(Jacobin),
  (SLeonard)-[:CONTRIBUTE_TO {roles:'Writer'}]->(Dissent),
  (SLeonard)-[:CONTRIBUTE_TO {roles:'Writer'}]->(OccupyMag),
  (SLeonard)-[:CONTRIBUTE_TO {roles:'Writer'}]->(TheNation),
  (SLeonard)-[:CONTRIBUTE_TO {roles:'Writer'}]->(NewInquiry),
  (SLeonard)-[:WRITE {roles:'Cowriter'}]->(TheFuturWeWant)
CREATE (BKunkel:Person {name:'Benjamin Kunkel', born:972, wiki:'https://en.wikipedia.org/wiki/Benjamin_Kunkel'}),
  (BKunkel)-[:CREATE {roles:'Cofunder'}]->(N1),
  (BKunkel)<-[:PUBLISH {roles:'Edition'}]-(Verso)
CREATE (IHowe:Person {name:'Irvin Howe', born:1920, died:1993, wiki:'https://en.wikipedia.org/wiki/Irving_Howe'}),
  (IHowe)-[:CREATE {roles:'Cofunder'}]->(Dissent)
CREATE (NMailer:Person {name:'Norman Mailer', born:1923, died:2007, wiki:'https://en.wikipedia.org/wiki/Norman_Mailer'}),
  (NMailer)-[:CREATE {roles:'Cofunder'}]->(Dissent)
CREATE (MSchapiro:Person {name:'Meyer Schapiro', born:1904, died:1996, wiki:'https://en.wikipedia.org/wiki/Meyer_Schapiro'}),
  (MSchapiro)-[:CREATE {roles:'Cofunder'}]->(Dissent)
CREATE (RMiliband:Person {name:'Ralph Miliband', born:1924, died:1994, wiki:'https://en.wikipedia.org/wiki/Ralph_Miliband'}),
  (RMiliband)-[:INSPIRE]->(BSunkara)
CREATE (DGraeber:Person {name:'David Graeber', born:1961, wiki:'https://en.wikipedia.org/wiki/David_Graeber'}),
  (DGraeber)-[:WRITE {roles:'Writer'}]->(DebtTheFirst5000Years),
  (DGraeber)-[:INSPIRE]->(Occupy)
CREATE (TPiketty:Person {name:'Thomas Piketty', born:1971, wiki:"https://en.wikipedia.org/wiki/Thomas_Piketty"}),
  (TPiketty)-[:INSPIRE]->(Occupy)
CREATE (SMohandesi:Person {name:'Salar Mohandesi'}),
  (SMohandesi)-[:CREATE {roles:'Cofunder'}]->(ViewPointMag)
CREATE (NPoulantzas:Person {name:'Nicos Poulantzas', born:1936, died:1979, wiki:'https://en.wikipedia.org/wiki/Nicos_Poulantzas'}),
  (NPoulantzas)-[:INSPIRE]->(ViewPointMag)
CREATE (EBalibar:Person {name:'Etienne Balibar', born:1942, wiki:'https://en.wikipedia.org/wiki/%C3%89tienne_Balibar'}),
  (EBalibar)-[:INSPIRE]->(ViewPointMag)
CREATE (SBugden:Person {name:'Sebastien Bugden'}),
  (SBugden)-[:PUBLISHER_AT]->(Verso)
CREATE (MHarrington:Person {name:'Michael Harrington', born:1928, died:1989, wiki:'https://en.wikipedia.org/wiki/Michael_Harrington'}),
  (MHarrington)-[:INSPIRE]->(BSunkara),
  (MHarrington)-[:CREATE]->(DSA)
CREATE (JBirch:Person {name:'Jonah Birch'}),
  (JBirch)-[:CONTRIBUTE_TO]->(Jacobin)
CREATE (KYTaylor:Person {name:'Keeanga-Yamahtta Taylor', wiki:"https://en.wikipedia.org/wiki/Keeanga-Yamahtta_Taylor"}),
  (KYTaylor)-[:CONTRIBUTE_TO]->(Jacobin),
  (KYTaylor)-[:WRITE]->(FromBlackLivesMatterToBlackLiberation)
CREATE (KMoody:Person {name:'Kim Moody', born:1940, wiki:"https://en.wikipedia.org/wiki/Kim_Moody"}),
  (KMoody)-[:CREATE {roles:'Cofunder'}]->(LaborNotes),
  (KMoody)-[:CONTRIBUTE_TO {roles:'Writer'}]->(Jacobin)
CREATE (JDerrida:Person {name:'Jacques Derrida', born:1930, died:2004, wiki:"https://en.wikipedia.org/wiki/Jacques_Derrida"}),
  (JDerrida)-[:CREATE {roles:'Cofunder'}]->(PostStructuralism)
CREATE (MFoucault:Person {name:'Michel Foucault', born:1926, died:1984, wiki:"https://en.wikipedia.org/wiki/Michel_Foucault"}),
  (MFoucault)-[:CREATE {roles:'Cofunder'}]->(PostStructuralism)
CREATE (BSander:Person {name:'Bernie Sanders', born:1941, wiki:"https://en.wikipedia.org/wiki/Bernie_Sanders"})