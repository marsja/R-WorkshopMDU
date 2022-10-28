This is a living document and will be updated (as will the GitHub repository).

Here you will find information on how to install R (mirrors etc.) and R-packages. 


Before the Workshop:

- R (https://cran.r-project.org/)
- Install RStudio* (https://www.rstudio.com/)


Some of the material will be available downloaded prior to the Workshop/Course: [https://github.com/marsja/R-WorkshopMDU](https://github.com/marsja/R-WorkshopMDU). 

If you have any problems contact me at erik.marsja@liu.se (I am available a couple of hours on Sunday afternoon)

A more detailed agenda as well as more instructions will be delivered closer to the Workshop.

*Or your preferred IDE if you already use R


![Click on the right operating system.](https://github.com/marsja/R-WorkshopMDU/blob/main/Imgs/download_R.JPG "Downloading R for Windows or MacOs")

## Downloading and Installing R
If you have not installed R yet, it might be a good time to install it right now.

### Step 1: Go to https://cran.r-project.org/
In the first step, got to [https://cran.r-project.org/](https://cran.r-project.org/). 



### Step 2: Click Download R (for your operating system)
In the second step, you choose to click on the link for your operating system. For Windows users see Figure 1.

I am not a Mac user myself but you can have a look at this YouTube video: [https://www.youtube.com/watch?v=4_Glm-w_ZWI](https://www.youtube.com/watch?v=4_Glm-w_ZWI)(You can skip the Quarto part, you don't need that).

Linux users most likely know how to install R but send me an email if you need help (I know Linux as well).


### Step 3: Click on base
In this step, we need to click on base (See Figure 2).

![Click on "base"](https://github.com/marsja/R-WorkshopMDU/blob/main/Imgs/download_r_binaries.JPG "Click on base")


### Step 4: Download R
Finally, we can download R. We want the latest version: click on "Download R-4.2.1 for Windows" (or your operating system).
Remember where you put the file.  See Figure 3.


![Download the latest version](https://github.com/marsja/R-WorkshopMDU/blob/main/Imgs/finally_download_R.JPG "Download the latest version of R")

### Step 5: Install R
This is the actual final step. Now you can go to the folder you saved the file and click on it. 


## Mirrors
I got a question concerning mirrors. You can use mirrors when downloading R but I mainly use it when installing R packages (more on this during the Workshop). Since I did my PhD in Umeå I prefer this mirror: https://ftp.acc.umu.se/mirror/CRAN/


### Installing R-packages:

Installing r-packages can be done using the Console in RStudio (see Figure 4).

```{installRpackages}
install.packages(c('lavaan', 'semPlot', 'semTools', 'lme4', 'lmerTest'))
```


![Installing some packages](https://github.com/marsja/R-WorkshopMDU/blob/main/Imgs/installing_r_packages.jpg "one way to install packages")


## Helpful packages

In the Workshop, we will use mainly base packages but some packages need to be install. Note, some packages will be added here before the Workshop.

### Factor analysis:

- [lavaan](https://lavaan.ugent.be/)(For SEM and CFA)
- [semTools](https://cran.r-project.org/web/packages/semTools/index.html)(Good tools when you have conducted your CFA and SEM)
- [semPlot](https://cran.r-project.org/web/packages/semPlot/index.html)(Plotting Factor Analysis)

### Multilevel/Linear mixed-effects modeling
If time, we will cover Multilevel/LME modeling as well and then we need:

- lme4
- lmerTools

### Tidyverse packages
We will use the tidyverse packages such as ggplot2, readr. 