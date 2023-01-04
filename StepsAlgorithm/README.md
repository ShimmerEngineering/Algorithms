# Verisense Step Count Algorithm for GGIR

The [Verisense](https://verisense.net/) Step Count algorithm is an open source step count algorithm created by [Shimmer Research](http://shimmersensing.com/) to work with the [GGIR R-package](https://cran.r-project.org/web/packages/GGIR/index.html).

The algorithm is based on the [Gu et al, 2017](http://42.121.33.184/upload/resource/paper/sensors-078850306.pdf) method of step detection from tri-axial acceleration data. The algorithm coefficients have been tuned on the [pedometer evaluation dataset](http://cecas.clemson.edu/~ahoover/pedometer/) with an additional pilot dataset to reduce false positives on long term monitoring signals.

To run the Verisense step count algorithm with GGIR you must:
1. Update the source path in myscript.R to where the verisense_count_steps.R is located. It should be local on your machine
2. Source myscript.R
3. Download the [package](https://github.com/wadpac/GGIR) to your machine
4. Update the GGIR directory in source_function.R to where the GGIR repository is located
![image](https://user-images.githubusercontent.com/87511087/210471517-02be665b-3ac5-459e-90a2-195f6da260a2.png)
5. If you are using a version greater than 2.7-5, you will need to comment out these lines in source_function.R and install GGIR package
![image](https://user-images.githubusercontent.com/87511087/210471607-02466a0b-2d97-4407-b36e-b10f2f707648.png)

5. Source source_function.R
4. Make sure the line 'myfun = myfun' is not commented out in entry_function.R
5. Run entry_function.R and step count per day will be added to part2_daysummary.csv

Further details on using external functions with GGIR can be found [here](https://cran.r-project.org/web/packages/GGIR/vignettes/ExternalFunction.pdf).
