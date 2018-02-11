MATCH (X:Person {name:"Breshar Sunkara"})-[]->(m)<-[]-(Z:Person {name:"Sarah Leonard"}) RETURN X,m,Z


#Delete everything
MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r


