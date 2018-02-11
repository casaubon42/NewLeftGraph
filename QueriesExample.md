

# Delete everything
`MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r`

# Look common works of Breshar Sunkara and Sarah Leonard
`MATCH (BS:Person {name:"Breshar Sunkara"})-[]->(W)<-[]-(SL:Person {name:"Sarah Leonard"})
RETURN X,m,Z`



