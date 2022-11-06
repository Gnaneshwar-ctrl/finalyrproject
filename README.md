used this--> https://atomsk.univ-lille.fr/tutorial_install.php 
and 
this --> https://jp-minerals.org/vesta/en/download.html
and written scripts ,i.e. "lammpsinput.sh"
for generating atomic latices.

references used for indentor: 
https://docs.lammps.org/fix_indent.html

https://www.afs.enea.it/software/lammps/doc17/html/fix_indent.html

http://utkstair.org/clausius/docs/mse614/pdf/eam_intro_v01.pdf

https://sites.google.com/a/ncsu.edu/cjobrien/tutorials-and-guides/lammpsguide#Input



--> mpi cmd 
mpirun -np 4 lmp_mpi -in 

https://www.researchgate.net/publication/308789265_Constructing_EAM_potential_files_for_LAMMPS



https://wcnt.wisc.edu/wp-content/uploads/sites/882/2016/01/Nano_indentation.pdf



http://wp.df.uba.ar/gebi/wp-content/uploads/sites/9/2016/06/ferlammps.pdf



! awk 'FNR>=68 && FNR<=10069' 1.log.lammps > junk



https://reader.elsevier.com/reader/sd/pii/S2452321616301792?token=77B0A6D37974223C6DFAEFA177A472B445D7FC761CBE24AF40B56C50ECE73EC5611EE5CD2D42FD8B6C733824E39FF505&originRegion=eu-west-1&originCreation=20221010113705



huntersolomon@mines.edu




https://atomsk.univ-lille.fr/tutorial_Si_sphere.php




## plotting histrogram

binwidth=5
bin(x,width)=width*floor(x/width)

plot 'datafile' using (bin($1,binwidth)):(1.0) smooth freq with boxes
## space 

n=100 #number of intervals
max=3. #max value
min=-3. #min value
width=(max-min)/n #interval width
#function used to map a value to the intervals
hist(x,width)=width*floor(x/width)+width/2.0
set boxwidth width*0.9
set style fill solid 0.5 # fill style

#count and plot
plot "data.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"green" notitle




https://matsci.org/t/lammps-users-nanoindentation-simulation/37676
