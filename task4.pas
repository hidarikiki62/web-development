PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  GPC;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Str: STRING;
BEGIN
  Str:= GetEnv('QUERY_STRING');
  IF (POS(Key, Str)=1) OR (Str[POS(Key, Str)-1]='&')
  THEN
    BEGIN
      DELETE(Str, 1, POS(Key, Str)-1);
      DELETE(Str, 1, POS('=', Str));
      IF (POS('&', Str) <> 0)
      THEN
        GetQueryStringParameter := COPY(Str, 1, POS('&', Str)-1)
      ELSE
        GetQueryStringParameter := COPY(Str, 1, LENGTH(Str));
    END
  ELSE
    GetQueryStringParameter:= ''
END;
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
