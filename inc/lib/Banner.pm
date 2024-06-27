package Banner;

use strict;
use warnings;
use FindBin '$Bin';
use Exporter;
use Exploits;

## Copy@right ZHAIRI AZZEDDINE see License.txt

my @ISA = qw(Exporter);
my @EXPORT_OK = qw(banner version);

#########################################################################################################################
## BUILD VERSION
sub version {
  return "17.0.1";
}
#########################################################################################################################
my $Version = version();
my @c       = Print::colors();
my @OTHERS  = Exploits::OTHERS();

#########################################################################################################################
## BENNER
sub banner {
  my @ESLOGAN=("-oO ZHAIRI AZZEDDINE Oo-", "https:\/\/github.com\/ZHAIRI", "https:\/\/www.fb.com/ZHAIRI",
             "https:\/\/www.youtube.com\/c\/ZHAIRI", "-oO Coded by Ali Mehdioui Oo-");
  my @LOGO=("
  
######## ##     ##    ###    #### ########  ####          ######   ######     ###    ##    ## 
     ##  ##     ##   ## ##    ##  ##     ##  ##          ##    ## ##    ##   ## ##   ###   ## 
    ##   ##     ##  ##   ##   ##  ##     ##  ##          ##       ##        ##   ##  ####  ## 
   ##    ######### ##     ##  ##  ########   ##  #######  ######  ##       ##     ## ## ## ## 
  ##     ##     ## #########  ##  ##   ##    ##                ## ##       ######### ##  #### 
 ##      ##     ## ##     ##  ##  ##    ##   ##          ##    ## ##    ## ##     ## ##   ### 
######## ##     ## ##     ## #### ##     ## ####          ######   ######  ##     ## ##    ##                                                                         
  
  "
  );
  print $LOGO[rand @LOGO]."\n"; 
  my $sn1="_" x 80; print $c[1]."$sn1\n";
  print "\n";
}


1;
