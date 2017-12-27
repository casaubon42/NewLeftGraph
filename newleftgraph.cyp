
// People
CREATE (BSunkara:Person {name:'Breshar Sunkara', born:1989, wiki:'https://en.wikipedia.org/wiki/Bhaskar_Sunkara'})
CREATE (SLeonard:Person {name:'Sarah Leonard', born:1964})


// Magazine and review
CREATE (Jacobin:Magazine {name:'Jacobin', created:2011})


CREATE
  (BSunkara)-[:CREATE {roles:['Cofunder']}]->(Jacobin),
  (BSunkara)-[:CONTRIBUTE {roles:['Writer']}]->(Jacobin),
  (SLeonard)-[:CONTRIBUTE {roles:['Writer']}]->(Jacobin),
 
