# **Code Book**    
#  
#  
#  
##subject 1  
   Subject Identifier  

    1..30 Unique volunteer identifier from group within an age bracket of 19-48 years  
		1 3 5 6 7 8 11 14 15 16 17 19 21 22 23 25 26 27 28 29 30  .Training Subjects    
		2 4 9 10 12 13 18 20 24  .Test Subjects
 


##activity 7..18
Activity Identifier  
 
	Activity performed during meassurements  
		WALKING  
		WALKING_UPSTAIRS  
		WALKING_DOWNSTAIRS  
		SITTING  
		STANDING  
		LAYING 


##feature  12..24
Feature Identifier  

	Vector of mean and std calculated from features obtained from the sensor of a 
	smartphone (Samsung Galaxy S II) on the subject waist. 
	
	Prefix 't' denotes time domain signals.
	Captured at a constant rate of 50 Hz. Then filtered using a median filter and 
	a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

	Prefix 'f' indicates frequency domain signals.
	A Fast Fourier Transform (FFT) was applied to some of these signals.  

	The acceleration signal was separated into body and gravity acceleration signals 
	using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
	Subsequently, the body linear acceleration and angular velocity were derived 
	in time to obtain Jerk signals.  
	Also the magnitude of these three-dimensional signals were calculated using 
	the Euclidean norm.
	
	'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
	"mean" and "std" indicate the calculation applied to the feature  
	 
		tbodyaccmeanx
		tbodyaccmeany
		tbodyaccmeanz
		tbodyaccstdx
		tbodyaccstdy
		tbodyaccstdz
		tgravityaccmeanx
		tgravityaccmeany
		tgravityaccmeanz
		tgravityaccstdx
		tgravityaccstdy
		tgravityaccstdz
		tbodyaccjerkmeanx
		tbodyaccjerkmeany
		tbodyaccjerkmeanz
		tbodyaccjerkstdx
		tbodyaccjerkstdy
		tbodyaccjerkstdz
		tbodygyromeanx
		tbodygyromeany
		tbodygyromeanz
		tbodygyrostdx
		tbodygyrostdy
		tbodygyrostdz
		tbodygyrojerkmeanx
		tbodygyrojerkmeany
		tbodygyrojerkmeanz
		tbodygyrojerkstdx
		tbodygyrojerkstdy
		tbodygyrojerkstdz
		tbodyaccmagmean
		tbodyaccmagstd
		tgravityaccmagmean
		tgravityaccmagstd
		tbodyaccjerkmagmean
		tbodyaccjerkmagstd
		tbodygyromagmean
		tbodygyromagstd
		tbodygyrojerkmagmean
		tbodygyrojerkmagstd
		fbodyaccmeanx
		fbodyaccmeany
		fbodyaccmeanz
		fbodyaccstdx
		fbodyaccstdy
		fbodyaccstdz
		fbodyaccjerkmeanx
		fbodyaccjerkmeany
		fbodyaccjerkmeanz
		fbodyaccjerkstdx
		fbodyaccjerkstdy
		fbodyaccjerkstdz
		fbodygyromeanx
		fbodygyromeany
		fbodygyromeanz
		fbodygyrostdx
		fbodygyrostdy
		fbodygyrostdz
		fbodyaccmagmean
		fbodyaccmagstd
		fbodybodyaccjerkmagmean
		fbodybodyaccjerkmagstd
		fbodybodygyromagmean
		fbodybodygyromagstd
		fbodybodygyrojerkmagmean
		fbodybodygyrojerkmagstd


##meanvalue 8..10  
Mean calculated value of feature  

		-0.99767..0.97451  Mean calculated value of feature  

##Note:  
	-Data users should be aware that this file only contains the standard deviation 
	 and the mean as a subset of all the available features from the original file.
	-Feature names differ from original source as "()" and some "-" were removes.   
