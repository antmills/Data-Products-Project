Project Submission: Quakes Data Explorer
========================================================
author: Antoinette Mills
date: 4/24/2016
autosize: true

Overview Slide
========================================================
This presentation is being created as part of the peer assessment for the coursera developing data products class. The assignment is geared toward ensuring the following concepts were well understood by the students.
- **shiny** to build data product application
- **R-Presentation or slidify** to create data product related presentations


About The Application (Summary)
========================================================
To display the understanding of using shiny to build an application, a simple application called Quake Data Explorer has been developed and deployed and can be access [here](https://aymills.shinyapps.io/MyProject/).

The application allows the user to perform the following:
- Select variable inputs (Depth, Magnitude, and Station)
- Select the number of BINS to for histogram display
- Select the desired color to display histogram
- Histogram elements will be "reactive" based on selected variable


About The Data
======================================================
This application is based on the The *quakes* data set.  This data set gives the locations of 1000 seismic events. The events occurred in a cube near Fiji since 1964.

Dataset has been obtained from here  and processed for the course project. Source code for the project is available on GitHub.



Data Preview
========================================================


```r
summary(quakes)
```

```
      lat              long           depth            mag      
 Min.   :-38.59   Min.   :165.7   Min.   : 40.0   Min.   :4.00  
 1st Qu.:-23.47   1st Qu.:179.6   1st Qu.: 99.0   1st Qu.:4.30  
 Median :-20.30   Median :181.4   Median :247.0   Median :4.60  
 Mean   :-20.64   Mean   :179.5   Mean   :311.4   Mean   :4.62  
 3rd Qu.:-17.64   3rd Qu.:183.2   3rd Qu.:543.0   3rd Qu.:4.90  
 Max.   :-10.72   Max.   :188.1   Max.   :680.0   Max.   :6.40  
    stations     
 Min.   : 10.00  
 1st Qu.: 18.00  
 Median : 27.00  
 Mean   : 33.42  
 3rd Qu.: 42.00  
 Max.   :132.00  
```

