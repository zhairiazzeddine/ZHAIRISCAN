package Help;

use strict;
use warnings;
use FindBin '$Bin';
use Exporter;
use Print;
use Subs;

## Copy@right ZHAIRI AZZEDDINE see License.txt

my @ISA = qw(Exporter);
my @EXPORT_OK = qw(help);
my @c  = Print::colors();

##########################################################################################################  
## HELP
sub help {
  print $c[11]."[::] HELP\n";
  Print::separaBlocks();
  Dialog::interHelp();
  Dialog::scansArgs();
  Dialog::hardArgs();
    
  Print::separaBlocks(); print $c[11]." [::] EXAMPLES: \n";
  
  Print::separaBlocks(); print $c[12]."  PROXY: \n".$c[10]
  ."   Tor: --proxy socks://localhost:9050 \n"
  ."   Proxy: --proxy <proxy> [Ex: http://12.32.1.5:8080] | --proxy <file>.\n".$c[10]."\n\n";  
  Print::separaBlocks(); print $c[12]."  SET HEADERS: \n".$c[10]
  ."   --header \"Authorization => 'Basic YWRtaW46YWRtaW4', keep_alive => '1'\"\n\n" ;  
  Print::separaBlocks(); print $c[12]."  RANDOM: \n".$c[10]
  ."   Random proxy: --prandom [proxy | file] \n"
  ."   Random agent: --brandom \n"
  ."   Random engine: --mrandom [ENGINES]\n\n" ;
  Print::separaBlocks(); print $c[12]."  SEARCH ENGINE: \n".$c[10]
  ."   ENGINES: bing google ask yandex sogou exalead googleapis googlecache or all\n"
  ."   Search: zhairiscan --dork <dork> --level <level> \n"
  ."   Set engine: zhairiscan --dork <dork> --level <level> -m google\n"
  ."   Set selective engines: zhairiscan -d <dork> -l <level> -m google,bing,..\n"
  ."   Search with many dorks: zhairiscan --dork <dork1 [OTHER]dork2 [OTHER]dork3> --level <level> \n"  
  ."   Search and rand: zhairiscan -d <dork> -l <level> --expHost \"/index.php?id=rang(1-9)\" --sql\n"  
  ."   Search + output: zhairiscan --dork <dorks.txt> --level <level> --save\n\n"
  ."   Search + collect emails: zhairiscan -d <dorks.txt> -l <level> --email \n"
  ."   Search + collect site emails: zhairiscan --dork <site:site.com> --level <level> --email \n"
  ."   Specify emails: zhairiscan -d <dorks.txt> -l <level> --email -v \"\@gmail | \@yahoo ..\"\n"
  ."   Search + collect ips: zhairiscan --dork <dork> --level <level> --ips \n\n";
  
  Print::separaBlocks(); print $c[12]."  SHODAN SEARCH: \n".$c[10]
  ."   zhairiscan --shodan --apikey <APIKEY> (Apikey)\n"
  ."   zhairiscan --shodan --target <ip or host or file> (Host Information)\n"
  ."   zhairiscan --shodan --count <query or file> (Search Shodan without Results)\n"
  ."   zhairiscan --shodan --dork <string or file> (Dork)\n"
  ."   zhairiscan --shodan --level <number of results pages> \n" 
  ."   zhairiscan --shodan --dnsreverse <ip or host or file> (Reverse DNS Lookup)\n"
  ."   zhairiscan --shodan --dnsresolve <host or ip or file> (DNS Lookup)\n"
  ."   zhairiscan --shodan --querysearch <query or file> (Search the directory of saved search queries)\n"
  ."   zhairiscan --shodan --query (List the saved search queries)\n"
  ."   zhairiscan --shodan --querytags (List the most popular tags)\n"
  ."   zhairiscan --shodan --services (List all services that Shodan crawls)\n"
  ."   zhairiscan --shodan --myip (My IP Address)\n"
  ."   zhairiscan --shodan --protocols (Sodan used protocols)\n"
  ."   zhairiscan --shodan --ports (Get  list of port numbers that the crawlers are looking for)\n"
  ."   zhairiscan --shodan --apinfo : API Plan Information\n"
  ."   zhairiscan --shodan --tokens : <string or file> (String filters and parameters provided to them)\n" 
  ."   zhairiscan --shodan --honeyscor : <ip or host or file> (Honeypot score)\n"  
  ."   zhairiscan --shodan --command <extern command> (Exploit shodan results with extern command)\n\n";
 
  Print::separaBlocks(); print $c[12]."  GOOGLEAPIS SEARCH: \n".$c[10]
  ."   zhairiscan --apikey <APIKEY> --cx <ID> --dork <query>\n"
  ."   zhairiscan --apikey <APIKEY> --cx <ID> --dork <query> -l 2 -v <string>\n"
  ."   zhairiscan --apikey <APIKEY> --cx <ID> --dork <query> -l 2 --sql\n"
  ."   zhairiscan --apikey <APIKEY> --cx <ID> --dork <query>  -l 2 -c <extern command>\n\n";
 
  Print::separaBlocks(); print $c[12]."  SEARCH EXPLOIT: \n".$c[10]
  ."   zhairiscan --bugtraq --dork <string> Ex: zhairiscan --bugtraq -d joomla -l 1\n"
  ."   zhairiscan --bugtraq --dork <string> -l 1\n"
  ."   zhairiscan --bugtraq --dork <string> -l 1 --limit 10 \n\n";
  
  Print::separaBlocks(); print $c[12]."  REGULAR EXPRESSIONS: \n".$c[10]
  ."   Regex use: zhairiscan [--dork <dork> | -t <target>] --level <level> --regex <regex>\n"
  ."   IP: ((?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)\\{ 3\\}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))\n"
  ."   E-mails: ".'((([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})'."\n\n";
  
  Print::separaBlocks(); print $c[12]."  REPEATER: \n".$c[10]
  ."   zhairiscan -t \"site.com?index.php?id=rang(1-10)\" --sql\n"
  ."   zhairiscan -t <target> --expHost \"/index.php?id=rang(1-10)\" --sql\n"
  ."   zhairiscan -t <target> --expHost \"/index.php?id=repeat(../-9)wp-config.php\" \n\n";
  
  Print::separaBlocks(); print $c[12]."  PORTS: \n".$c[10]
  ."   zhairiscan -t <ip> --port <port> [--udp | --tcp] \n"
  ."   zhairiscan -t \(ip start\)-\(ip end\) --port <port> [--udp | --tcp] \n"
  ."   zhairiscan -t <ip> --port \(port start\)-\(port end\) [--udp | --tcp] --command \"your extern command\"\n\n";
  
  Print::separaBlocks(); print $c[12]."  ENCODE / DECODE: \n".$c[10]
  ."   Generate MD5: zhairiscan --md5 <string> \n"
  ."   Encode base64: zhairiscan --encode64 <string>  \n"
  ."   Decode base64: zhairiscan --decode64 <string> \n\n";
  
  Print::separaBlocks(); print $c[12]."  POST/GET DATA: \n".$c[10]
  ."   Post data: zhairiscan -t <target> --data \"field1\=\>value1\, field2\=\>value2\, field3\=\>value3\" --post / get /\n"
  ."             zhairiscan -t <target> --data \"username\=\>john\, pass\=\>1234\" --post / get /\n"
  ."             zhairiscan -t <target> --data \"username\=\>john\, pass\=\>WORDLIST:<list path>\" --post / get / \n"
  ."   Post + Exploit: --exp\/expHost <exploit> --data \"username\=\>john\, pass\=\>1234\" -v <string> | --status <code> --post / get\n"
  ."   Post + Validation: --data \"username\=\>john\, pass\=\>1234\" -v <string> | --status <code> --post / get \n\n";
  
  Print::separaBlocks(); print $c[12]."  EXTERNAL COMMANDES: \n".$c[10]
  ."   zhairiscan --dork <dork | dorks.txt> --level <level> --command \"curl -v --TARGET\" \n"
  ."   zhairiscan --dork <dork | dorks.txt> --level <level> --command \"file\" \n"
  ."   zhairiscan --dork <dork | dorks.txt> --level <level> --command \"curl -v --HOST\" \n"
  ."   zhairiscan --dork <dork | dorks.txt> --level <level> --command \"nmap -sV -p 21,22,80 --HOSTIP\" \n"
  ."   zhairiscan -t <target> --port 80 --udp --command \"nmap -sV -p --PORT --TARGET\" \n" 
  ."   zhairiscan -d \"index of /lib/scripts/dl-skin.php\" -l 20 -m google --command \"php WP-dl-skin.php-exploit.php --TARGET\" \n\n";
  
  Print::separaBlocks(); print $c[12]."  MULTIPLE SCANS: \n".$c[10]
  ."   zhairiscan --dork <dork> --level <2> --sql --lfi --wp ..\n"
  ."   zhairiscan --dork <dork> --level <2> --replace \"string \=\> new_string\" --exp/expHost <exploit> [--sql | --lfi | --wp |...]\n"
  ."   zhairiscan -t <ip> --level <2> [--sql | --lfi | --wp |...]\n"
  ."   zhairiscan -t <targets> [--sql | --lfi | --wp |...]\n\n";
  
  Print::separaBlocks(); print $c[12]."  SEARCH VALIDATION: \n".$c[10]
  ."   zhairiscan -d <dork | dorks.txt> -l <level> --status <code> | --valid <string> \n"
  ."   zhairiscan -d <dork | dorks.txt> -l <level> --ifinurl <string> \n"
  ."   zhairiscan -d <dork | dorks.txt> -l <level> --regex <regex> --valid <string>\n"
  ."   zhairiscan -d <dork | dorks.txt> -l <level> --unique \n"
  ."   zhairiscan -t <target | targets.txt> [--status <code> | --valid <string> | --valid <file>] \n"
  ."   zhairiscan -t <target | targets.txt> [--status <code> | --valid <string>] \n"
  ."   zhairiscan -t <target | targets.txt> [--status <code> | --exclude <string> | --exclude <file>] \n"
  ."   zhairiscan -t <target | targets.txt> --vshell <url/file>  \n"
  ."   zhairiscan -d <dork | dorks.txt> -l <level> --exp/expHost <payload> --status <code> | --valid <string> \n"
  ."   zhairiscan -d <dorks.txt> -l <level> --replace \"string \=\> new_string\" --status <code> | --valid <string> \n"
  ."   zhairiscan -d <dork | dorks.txt> -l <level> [--admin | --sql ..] --status <code> | --valid <string> \n"  
  ."   zhairiscan -d <dorks.txt> -l <level> --replace \"string \=\> new_string\" --status <code> | --valid <string>\n"
  ."   zhairiscan -d <dorks.txt> -l <level> --replaceFROM \"string \=\> new_string\" --status <code> | --valid <string>\n"
  ."   zhairiscan -d <dorks.txt> -l <level> --replace \"string \=\> new_string\" --exp/expHost <payload> --status <code> | --valid <string>\n"
  ."   zhairiscan  -d <dorks.txt> --exp <exploit> --data \"username\=\>john\, pass\=\>1234\" --post --vshell <url/file> | -v <string> | --status <code> \n"
  ."   zhairiscan -d <dork | dorks.txt> -l <level> [--sql | --shost ..] --status <code> | --valid <string> \n\n";
  
  Print::separaBlocks(); print $c[12]."  IP GEOLOCALISATION: \n".$c[10]
  ."   zhairiscan -t <target\/ip> --geoloc \n\n";
  
  Print::separaBlocks(); print $c[12]."  UPDATE TOOL: \n".$c[10]."   --update\n";
  
  Print::separaBlocks(); print $c[12]."  REPAIR TOOL: \n".$c[10]."   --repair\n";
  
  Print::separaBlocks(); print $c[12]."  UNINSTALL TOOL: \n".$c[10]."   zhairiscan --uninstall\n";
  Print::separator();
}

###########################################################################################################

1;
