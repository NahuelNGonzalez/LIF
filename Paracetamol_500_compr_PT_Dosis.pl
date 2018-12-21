use strict;
print "¿Cual es la Forma de la Especie elegida?\n -Suspencion\n-Comprimido\n sefuir completando\n";
my $Forma=<STDIN>;

while ($Forma > 3)
{
	print"Error en el Especie elegida, coloque nuevamente el estandar\n-Suspencion\n-Comprimido\n-sefuir completando\n";
	$Forma=<STDIN>;
}

print "Presione 1 si es MT, 2 si es PI y 3 si es PT\n";
my $Tipo_prod=<STDIN>;

while ($Tipo_prod > 3){
	print"Error en el Estandar, coloque nuevamente el Tipo de producto\n-1: MT\n-2: PI\n-3: PT\n";
	$Tipo_prod=<STDIN>;
}

print "Cual es el Codigo\n";
my $codigo=<STDIN>;
chomp($codigo);

print "¿Que estandar va a utilizar?\n-1: Primario\n-2: Secundario\n";
my $Stan=<STDIN>;

while ($Stan > 2){
	print"Error en el Estandar, coloque nuevamente el estandar\n-1: Primario\n-2: Secundario\n";
	$Stan=<STDIN>;
}


print "¿Cual es la fecha de Vencimiento de la muestra?\n";
my $Venc_M=<STDIN>;

print "¿Cual es la fecha de Vencimiento del estandar?\n";
my $Venc_E=<STDIN>;
chomp($Venc_E);
chomp($Venc_M);
print "¿Cual es promedio de las 20 muestras?\n";
my $chirimbolo=562.93;


#~ open(standar,"Archivo de Estandar");

#Apertura de archivos
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
#Fin de cargar los Datos


# Dosis R1
my @splitter;
my @areas;
my $i=0;

my $lote;

while (my $line =<R11>)
{
	chomp($line);
	
	if($line =~ m/Data File Name/)
	{
		$lote=$line;
	}
		
	if($line =~ m/^ID#/i)
		{
			$line =<R11>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
		}
}

my @lot=split(/\\/,$lote);
$lote=$lot[8];


while (my $line =<R12>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<R12>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;			
		}
}

while (my $line =<R13>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<R13>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
		}
}

while (my $line =<R14>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<R14>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
		}
}

while (my $line =<R15>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<R15>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
		}
}

while (my $line =<R21>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<R21>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
		}
}

while (my $line =<R22>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
	{
		$line =<R22>;
		@splitter=split("\t",$line);
		@areas[$i]=$splitter[3];
		$i=$i+1;
	}
}

while (my $line =<M11>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
	{
			$line =<M11>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
	}
}

while (my $line =<M12>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<M12>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
	}
}

while (my $line =<M21>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<M21>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
		}
}

while (my $line =<M22>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<M22>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
	
		}
}

while (my $line =<M31>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<M31>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
			$i=$i+1;
			
		}
}

while (my $line =<M32>)
{
	chomp($line);
	
	if($line =~ m/^ID#/i)
		{
			$line =<M32>;
			@splitter=split("\t",$line);
			@areas[$i]=$splitter[3];
		}
}


#~ close(R11);
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


#~ Codigo que esta en el Script Desvio_Standar.pl

#~ pureza del estandar en base humeda
my $Pbh=100.02;
#~ promedio de pesos de 20 muestras
my $chirimbolo=562.93; 

my $peso_R1=10.18;
my $peso_R2=10.02;
my $peso_M1=112.24;
my $peso_M2=109.59;
my $peso_M3=112.03;
#~ Valores rescatables del HPLC
#~ Estandar 1
my $areaR11=$areas[0];
my $areaR12=$areas[1];
my $areaR13=$areas[2];
my $areaR14=$areas[3];
my $areaR15=$areas[4];

#~ Estandar 2
my $areaR21=$areas[5];
my $areaR22=$areas[6];


#~ Muestra 1
my $M11=$areas[7];
my $M12=$areas[8];

#~ Muestra 2
my $M21=$areas[9];
my $M22=$areas[10];

#~ Muestra 3
my $M31=$areas[11];
my $M32=$areas[12];

#~ Funciones tabla Excel

#~ inicio calculos de Estandar de Referencia

my @vec=($areaR11,$areaR12,$areaR13,$areaR14,$areaR15);

my $promedio_R1= ($areaR11+$areaR12+$areaR13+$areaR14+$areaR15)/5;
my $promedio_R2= ($areaR21+$areaR22)/2;

my $CV1=0;
my $Er2=0;

for(my $i=0;$i<5;$i++)
{
	$CV1=$CV1+($vec[$i]-$promedio_R1)*($vec[$i]-$promedio_R1);
}

$CV1=sqrt($CV1/(4));
$CV1=($CV1/$promedio_R1)*100;


$Er2=100*(($areaR21/$areaR22)-1);


#~ fin calculos de Estandar de Referencia

#~ Inicio de calculos Muestras


my $pM1=($M11+$M12)/2;
my $pM2=($M21+$M22)/2;
my $pM3=($M31+$M32)/2;

my $M1=100*(($M11/$M12)-1);
my $M2=100*(($M21/$M22)-1);
my $M3=100*(($M31/$M32)-1);

#~ Fin de calculos Muestras

#~ Inicio de Resultados
	
	#~ Armar funcion por partes	
	#~ Muestra 
	my $RM1=($pM1/$promedio_R1)*($peso_R1/100)*($Pbh/100)*(5/50)*($chirimbolo/$peso_M1)*200*(250/5)*(100/500);
	
	#~ Muestra 2
	my $RM2=($pM2/$promedio_R1)*($peso_R1/100)*($Pbh/100)*(5/50)*($chirimbolo/$peso_M2)*200*(250/5)*(100/500);
	
	#~ Muestra 3
	my $RM3=($pM3/$promedio_R1)*($peso_R1/100)*($Pbh/100)*(5/50)*($chirimbolo/$peso_M3)*200*(250/5)*(100/500);
	
	my $promedio_Resultados=($RM1+$RM2+$RM3)/3;
	
	my $desvio_resultado=(100/$promedio_Resultados)*sqrt((($RM1-$promedio_Resultados)*($RM1-$promedio_Resultados)+($RM2-$promedio_Resultados)*($RM2-$promedio_Resultados)+($RM3-$promedio_Resultados)*($RM3-$promedio_Resultados))/2);
	

#~ Requisito de aptitud	Valor obtenido	Estado
#~ CV(%)R1 < 2,0%
my $Requisito_aptitud_1=0;
my $titulo1;
my $titulo2;
my $Requisito_aptitud_2=0;



if($CV1>2)
{
	$Requisito_aptitud_1=$CV1;
	$titulo1="No pasa\n";
}
else
{
	$Requisito_aptitud_1=$CV1;
	$titulo1="Pasa\n";
}

#~ 0,98 ≥ FC ≤ 1,02   

if((($promedio_R1/$peso_R1)/($promedio_R2/$peso_R2))>1.02||(($promedio_R1/$peso_R1)/($promedio_R2/$peso_R2))<0.98)
{
	$Requisito_aptitud_2=(($promedio_R1/$peso_R1)/($promedio_R2/$peso_R2));
	$titulo2="No pasa";
}
else
{
	$Requisito_aptitud_2=(($promedio_R1/$peso_R1)/($promedio_R2/$peso_R2));
	$titulo2="Pasa";

}

my $conclusion;

if(($Requisito_aptitud_1==1)&&($Requisito_aptitud_2==1))
{
	$conclusion="NO CUMPLE REQUISITOS DE APTITUD\n";
}
else
{	
	if(($promedio_Resultados<=90)&&($promedio_Resultados<=120))
	{
		$conclusion="NO CUMPLE ESPECIFICACIONES\n";
	}
	else
	{
		$conclusion="CUMPLE ESPECIFICACIONES\n";
	}
	
}
 

#~ reporte de Salida
open(Salida,">/home/nahuel/Escritorio/LIF/Paracetamol-500-.txt");

print Salida"PARACETAMOL COMPRIMIDOS 500mg\n";
print Salida"TECNICA ANALISTICA; Segun PNT CC-146\n";
print Salida"Ensayo: Dosis\n";
print Salida"Especificacion: Los comprimidos de Paracetamol contienen no menos de 90,0% y no más de 110,0 % de la cantidad declarada de Paracetamol [C8H9ClNO2]\n";
print Salida"Formula: (AM/AR1(Prom))*(mR1(mg)/100ml)*(PotR1(%BH)/100%)*(5ml/50ml)*(/m(mg))*200ml*(250ml/5ml)*(100%/500mg)\n\n";

print Salida"Estandar de Referencia\t\tMuestra\t\n\n";
print Salida"Dosis\t\tDatos\n\n";
print Salida sprintf("Codigo= %s\tLote= %d\n", $codigo,$lote);
print Salida sprintf("P(BH)= %.2f\tVencimiento= %s\n",$Pbh,$Venc_M);
print Salida sprintf("Vencimiento= %s\tPromedio Muestras= %.2f\n\n",$Venc_E,$chirimbolo);
print Salida sprintf("\tPESOS\t\tPESOS\n\n");
print Salida "\tR1\tR2\tM1\tM2\tM3\n";
print Salida sprintf("\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f",$peso_R1,$peso_R2,$peso_M1,$peso_M2,$peso_M3);
print Salida sprintf("\tAreas Estandar\tAreas Muestra\n\n");
print Salida sprintf("#1\t%.2f mg\t%.2f mg\t%.2f mg\t%.2f mg\t%.2f mg\n",$areaR11,$areaR21,$M11,$M12,$M31);
print Salida sprintf("#2\t%.2f mg\t%.2f mg\t%.2f mg\t%.2f mg\t%.2f mg\n",$areaR12,$areaR22,$M21,$M22,$M32);
print Salida sprintf("#3\t%.2f mg\n",$areaR13);
print Salida sprintf("#4\t%.2f mg\n",$areaR14);
print Salida sprintf("#5\t%.2f mg\n\n",$areaR15);
print Salida sprintf("Promedios\t%.2f mg\t%.2f mg\t%.2f mg\t%.2f mg\t%.2f mg\n",$promedio_R1,$promedio_R2,$pM1,$pM2,$pM3);
print Salida sprintf("CV(%) %.2f\n",$CV1);
print Salida sprintf("Dif0(%)\t\t%.2f%\t%.2f%\t%.2f%\t%.2f%\n\n",$Er2,$M1,$M2,$M3);

print Salida sprintf("Resultados\nDOSIS(%SVD)\n");
print Salida sprintf("M1= %.2f%\nM2= %.2f%\nM3= %.2f%\n",$RM1,$RM2,$RM3);
print Salida sprintf("Promedio-Resultados= %.2f\tCV(%)= %.2f\n\n",$promedio_Resultados,$desvio_resultado);

print Salida sprintf("Requisitos de aptitud\tValor Obtenido\tEstado\n");
print Salida sprintf("CV(%)R1 < 2.0%%\t%1f\t%s",$Requisito_aptitud_1,$titulo1);
print Salida sprintf("0.98 ≥ FC ≤ 1.02\t%.2f\t%s\n\n",$Requisito_aptitud_2,$titulo2);
print Salida sprintf("CONCLUSIÓN\n\n");
print Salida sprintf("\t$conclusion\n");

close(Salida);


