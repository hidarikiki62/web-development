PROGRAM SarahRever(INPUT, OUTPUT);
USES 
  GPC;
VAR
  Messege: STRING;
BEGIN
  WRITELN('Contvert-Type: text/plain');
  WRITELN; 
  Messege:= GetEnv('QUERY_STRING');
  //IF (POS(Messege, 'lanterns=1')<>0) OR (POS(Messege, 'lanterns=2')<>0)
  //THEN
  IF  LENGTH(Messege)=10
  THEN   
    IF (POS(Messege, 'lanterns=1')<>0)// AND (POS(Messege, 'lanterns=2')=0)
      THEN 
        WRITELN('by sea') 
      ELSE
        IF  (POS(Messege, 'lanterns=2')<>0)
        THEN
          WRITELN('by land')
        ELSE   
          WRITELN('Sarah don''t take signal')   
  ELSE 
    WRITELN('Sarah don''t take signal')
END.
