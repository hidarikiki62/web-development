PROGRAM HTTSRequest(INPUT, OUTPUT);
USES GPC;
BEGIN
  WRITELN('Contvert-Type: text/plain');
  WRITELN;
  WRITE('HTTP_USER_AGENT: ');
  WRITELN(GetEnv('HTTP_USER_AGENT')); 
  WRITE('HTTP_HOST: '); 
  WRITELN(GetEnv('HTTP_HOST'));
  WRITE('REQUEST_METHOD: '); 
  WRITELN(GetEnv('REQUEST_METHOD'));
  WRITE('QUERY_STRING: '); 
  WRITELN(GetEnv('QUERY_STRING'));
  WRITE('CONTENT_ LENGTH: '); 
  WRITELN(GetEnv('CONTENT_ LENGTH'));     
END.
