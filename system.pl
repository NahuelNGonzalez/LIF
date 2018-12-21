use strict;
use Time::HiRes qw( time );
use Math::Complex;

my $start=time();

open(R11,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R1_001.txt");
open(R12,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R1_002.txt");
open(R13,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R1_003.txt");
open(R14,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R1_004.txt");
open(R15,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R1_005.txt");
open(R21,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R2_001.txt");
open(R22,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R2_002.txt");
open(M11,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_L052218, Paracetamol 500mg PT (C), Dosis_M1.1_001.txt");
open(M12,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_L052218, Paracetamol 500mg PT (C), Dosis_M1.2_002.txt");
open(M21,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_L052218, Paracetamol 500mg PT (C), Dosis_M2.1_003.txt");
open(M22,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_L052218, Paracetamol 500mg PT (C), Dosis_M2.2_004.txt");
open(M31,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_L052218, Paracetamol 500mg PT (C), Dosis_M3.1_005.txt");
open(M32,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_L052218, Paracetamol 500mg PT (C), Dosis_M3.2_006.txt");

my @splitte;
my @Tr;
my @Area;
my @N;
my @Fa;
my @R;
my @k;
my $i=0;

while(my $line= <R11>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R11>;
		$line=<R11>;
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
	}
}

while(my $line= <R12>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R12>;
		$line=<R12>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <R13>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R13>;
		$line=<R13>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <R14>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R14>;
		$line=<R14>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <R15>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R15>;
		$line=<R15>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <R21>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R21>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <R22>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<R22>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <M11>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<M11>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <M12>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<M12>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <M21>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<M21>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <M22>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<M22>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <M31>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<M31>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}

while(my $line= <M32>)
{
	chomp($line);
	if($line =~ m/^Peak#/i)
	{
		$line=<M32>;
		
		@splitte=split("\t",$line);
		$Tr[$i]=$splitte[1];
		$Area[$i]=$splitte[4];
		$N[$i]=$splitte[12];
		$Fa[$i]=$splitte[14];
		#~ $R[$i]=$splitte[];
		$k[$i]=$splitte[11];
		$i++;
			
	}

}


my $av_Tr=0;
my $av_Area=0;
my $av_N=0;
my $av_Fa=0;
my $av_R=0;
my $av_k=0;

for(my $j=0;$j<$i;$j++)
{
	@splitte=split(",",$Tr[$j]);
	$Tr[$j]=$splitte[0].".".$splitte[1];
	#~ Agregar todos los demas vectores
}	
for(my $j=0;$j<$i;$j++)
{
	@splitte=split(",",$Area[$j]);
	$Area[$j]=$splitte[0].".".$splitte[1];
}
for(my $j=0;$j<$i;$j++)
{
	@splitte=split(",",$N[$j]);
	$N[$j]=$splitte[0].".".$splitte[1];
}
for(my $j=0;$j<$i;$j++)
{
	@splitte=split(",",$Fa[$j]);
	$Fa[$j]=$splitte[0].".".$splitte[1];
}
for(my $j=0;$j<$i;$j++)
{
	@splitte=split(",",$R[$j]);
	$R[$j]=$splitte[0].".".$splitte[1];
}
for(my $j=0;$j<$i;$j++)
{
	@splitte=split(",",$k[$j]);
	$k[$j]=$splitte[0].".".$splitte[1];
}

for(my $j=0;$j<$i;$j++)
{
	$av_Tr=$av_Tr+$Tr[$j];	
	$av_Area=$av_Area+$Area[$j];
	$av_N=$av_N+$N[$j];
	$av_Fa=$av_Fa+$Fa[$j];
	$av_R=$av_R+$R[$j];
	$av_k=$av_k+$k[$j]
}

$av_Tr=$av_Tr/$i;
$av_Area=$av_Area/$i;
$av_N=$av_N/$i;
$av_Fa=$av_Fa/$i;
$av_R=$av_R/$i;
$av_k=$av_k/$i;

my $d_Tr=0;
my $d_Area=0;
my $d_N=0;
my $d_Fa=0;
my $d_R=0;
my $d_k=0;

for(my $j=0;$j<$i;$j++)
{
	$d_Tr=$d_Tr+($Tr[$j]-$av_Tr)**2;
	$d_Area=$d_Area+($Area[$j]-$av_Area)**2;
	$d_N=$d_N+($N[$j]-$av_N)**2;
	$d_Fa=$d_Fa+($Fa[$j]-$av_Fa)**2;
	$d_R=$d_R+($R[$j]-$av_R)**2;
	$d_k=$d_k+($k[$j]-$av_k)**2;
}

$d_Tr=100*(sqrt($d_Tr/($i-1)))/$av_Tr;
$d_Area=100*(sqrt($d_Area/($i-1)))/$av_Area;
$d_N=100*(sqrt($d_N/($i-1)))/$av_N;
$d_Fa=100*(sqrt($d_Fa/($i-1)))/$av_Fa;
#~ $d_R=100*(sqrt($d_R/($i-1)))/$av_R;
$d_k=100*(sqrt($d_k/($i-1)))/$av_k;




printf("Desvio\nTR: %.4f\narea: %.4f\nN: %.4f\nFa: %.4f\nk: %.4f\n", $d_Tr,$d_Area,$d_N,$d_Fa,$d_k);

close(R11);
close(R12);
close(R13);
close(R14);
close(R15);
close(R21);
close(R22);
close(M11);
close(M12);
close(M21);
close(M22);
close(M31);
close(M32);

my $end=time();

printf("Time: %.2f\n",$end-$start);

