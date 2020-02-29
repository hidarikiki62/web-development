PROGRAM TakeName(INPUT, OUTPUT);
USES 
  GPC;
VAR
  Name: STRING; 
BEGIN
  WRITELN('Contvert-Type: text/plain');
  WRITELN;
  Name:= GetEnv('QUERY_STRING');
  IF (POS('NAME=', Name)=0)
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      DELETE(Name, 1, POS('NAME=', Name));
      DELETE(Name, POS('NAME=', Name), 5);
      IF Name<>''
      THEN
        WRITELN('Hello dear, ', Name, '!')
      ELSE
        WRITELN('Hello Anonymous!')
    END
END.
