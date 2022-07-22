Create Table tog(
    togNr int PRIMARY KEY NOT NULL,
    startStasjon text, 
    endeStasjon text, 
    ankomstTid timestamp,
);

Create Table TogTabell(
    togNr int references tog(togNr) NOT NULL,
    avgangsTid timestamp NOT NULL,
    stasjon text,
    constraint PK PRIMARY KEY(togNr, avgangsTid)
    
);
Create Table Plass(
    dato timestamp NOT NULL,
    togNr int references tog(togNr) NOT NULL,
    vognNr int NOT NULL,
    plassNr int NOT NULL, 
    vindu boolean NOT NULL, 
    ledig boolean NOT NULL,
    constraint PK PRIMARY KEY(dato, togNr, vognNr, plassNr)

);