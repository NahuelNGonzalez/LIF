use strict;

open(R11,"/home/nahuel/Escritorio/LIF/Nahue_Pruebas/26112018_ST2LIF-018 Paracetamol - Dosis_R1_001.txt");

my $instrument_Name;
my $sample_name;
my $sample_ID;
my $file_name;
my $instrument_method;
my $vial;
my $inyection_vol;
my $date_gen;
my $person_gen;
my $cg=0;
my $date_prod;
my $person_prod;
my $cp=0;
my @V_SN; 
my @splitt;



while(my $line=<R11>)
{
	chomp($line);
	if($line =~ m/^Data File Name/)
	{
	@splitt=split/\\/,$line;
	$instrument_Name=$splitt[2];
	$file_name=$splitt[9];
	@V_SN=split/_/,$splitt[9];
	$sample_name=$V_SN[1];
	$sample_ID=$V_SN[2];
	}
	
	if($line =~ m/^Method File/)
	{
		@splitt=split/\\/,$line;
		$instrument_method=$splitt[5];
	}
	
	if($line =~ m/^Vial/)
	{
		@splitt=split/\t/,$line;
		$vial=$splitt[1];
	}
	
	if($line =~ m/^Injection Volume/)
	{
		@splitt=split/\t/,$line;
		$inyection_vol=$splitt[1];
	}

	if($line =~ m/^Generated/ig)
	{
		if($cg==0)
		{
			@splitt=split/\t/,$line;
			$date_gen=$splitt[1];
			$cg++;
		}
		else
		{
			@splitt=split/\t/,$line;
			$person_gen=$splitt[1];
		}
	}
	
		
	if($line =~ m/^Modified/)
	{
		if($cp==0)
		{
			@splitt=split/\t/,$line;
			$date_prod=$splitt[1];
			$cp++;
		}
		else
		{
			@splitt=split/\t/,$line;
			$person_prod=$splitt[1];
		}
	}
	
}

#~ no muestra los valores que tiene que mostrar!!

close(R11);

print"DATOS DE ANALISIS\n";
print"<<Instrument>>\n";
printf("Instrument Name: %s\n",$instrument_Name);
printf("Nombre de la Muestra: %s\n",$sample_name);
printf("Identificacion: %s\n",$sample_ID);
printf("Nombre del Archivo: %s\n",$file_name);
printf("Metodo Instrumental: %s\n",$instrument_method);
printf("Metodo de Integracion: INT-%s\n",$instrument_method);
printf("Vial #: %s\n",$vial);
printf("Volumen de Inyeccion: %s\n",$inyection_vol);
printf("Acquicicion de Datos: %s\n",$date_gen);
printf("Adquirido por: %s\n",$person_gen);
printf("Procesado: %s\nProcesado por: %s\n",$date_prod,$person_prod);


#~ CROMATOGRAMAAAAAAAA



#~ Condiciones de integracion

#~ Tabla de picos


