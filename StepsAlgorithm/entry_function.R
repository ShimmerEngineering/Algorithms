# library(GGIR)
g.shell.GGIR(#=======================================
             # INPUT NEEDED:
             mode=c(1,2,3,4,5),
             #overwrite = TRUE,
             
             # Input Directory:
             datadir = "C:/Users/username/input_data",
             # Output Directory:
             outputdir = "C:/Users/username/output_data",
             

             #f0=1, # file index to start with
             #f1=2, # file index to end with
             #-------------------------------
             # Part 1:
             #-------------------------------
             # Key functions: reading file, auto-calibration, and extracting features
             do.parallel = FALSE,
             
             overwrite=FALSE,
             epochvalues2csv=TRUE, ###################
             #windowsizes = c(5,600,900),  # default
             do.enmo = TRUE,             #do.anglez=TRUE,
             chunksize=1,                printsummary=TRUE,
             do.cal = TRUE,
             do.anglez = TRUE,
             studyname = "Verisense",
             
             #do.imp = FALSE, ##################################################### imputation
             do.anglex = TRUE, do.angley = TRUE, 
             do.roll_med_acc_x = TRUE, do.roll_med_acc_y = TRUE,
             do.roll_med_acc_z = TRUE,
             #-------------------------------
             # Part 2:
             #-------------------------------
             strategy = 1,               
             #ndayswindow=3, # ndayswindow only necessary when strategy = 3
             hrs.del.start = 0,          hrs.del.end = 0,
             maxdur = 0,                 includedaycrit = 4,
             winhr = c(0.1,5,10), #(5,10)
             qlevels = c(c(1380/1440),c(1410/1440)),
             qwindow=c(0,24),
             ilevels = c(seq(0,400,by=50),8000),
             mvpathreshold =c(100),
             bout.metric = 4,
             closedbout=FALSE,
             #-------------------------------
             # Part 3:
             #-------------------------------
             # Key functions: Sleep detection
             timethreshold= c(5),        anglethreshold=5,
             ignorenonwear = TRUE,
             #-------------------------------
             # Part 4:
             #-------------------------------
             # Key functions: Integrating sleep log (if available) with sleep detection
             # storing day and person specific summaries of sleep
             excludefirstlast = FALSE,
             includenightcrit = 5,
             def.noc.sleep = c(1),   # c() - L5+/-6   c(1) - HDCZA
             #loglocation= "C:/Users/username/Documents/RStudio/sleeplog.csv",
             outliers.only = FALSE,
             #criterror = 4,
             relyonsleeplog = FALSE,    # set to TRUE if using sleep log
        #     relyonguider = TRUE,  ################ REMOVE #############
             #sleeplogidnum = FALSE,
             #colid=1,  # col # in sleeplog spreadhseet where subjectID is stored
             #coln1=2, # col # in the sleeplog spreadsheet where the onset of the first night starts
             #do.visual = TRUE,  # compare sleep log to accel detections
             nnights = c(),
             idloc = 2,
             #-------------------------------
             # Part 5:
             # Key functions: Merging physical activity with sleep analyses
             #-------------------------------
             threshold.lig = c(30), threshold.mod = c(100),  threshold.vig = c(400),  #100, 400
             boutcriter = 0.8,      boutcriter.in = 0.9,     boutcriter.lig = 0.8,
             boutcriter.mvpa = 0.8, boutdur.in = c(1,10,30), boutdur.lig = c(1,10),
             boutdur.mvpa = c(1,10),   timewindow = c("MM","WW"),
            
             myfun = myfun,   # steps algo! - be sure to source myscript.R
              
             frag.metrics="all",
             part5_agg2_60seconds=TRUE,
             
             #-----------------------------------
             # Report generation
             #-------------------------------
             # Key functions: Generating reports based on meta-data
             do.report=c(2,4,5),
             visualreport=TRUE,     dofirstpage = TRUE,
             viewingwindow=1)  # 1 - midnight to midnight, 2 - noon to noon

