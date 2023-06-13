# Assessing Stem Cell Therapeutics in Murine Models 

Giles Carlos,  Nathan Gin, Alexander Nathanael, Vinh Nguyen, Owen Sitiabudi

## Summary:

This project is in collaboration with the Stem Cell Research Center at the UCI School of Medicine. The center is focused on learning how stem cells can treat neurological disorders and injuries such as Alzheimer’s, Huntington’s disease, stroke, and spinal cord injury. Our collaborators’ research focuses on developing stem cell therapeutics that could aid in recovering from spinal cord injuries. Specifically, the lab utilizes murine models, or mice, to test different treatments. In their experiments, injured mice are given a certain treatment and undergo one of several tasks to see how they are recovering. We are focused on the Ladder Beam Task which helps evaluate mice motor function. We had two goals for this project. The first is to assess the effectiveness of different treatments through statistical models and appropriate hypothesis tests by analyzing pre-labeled data provided to us by our collaborators. The second was to aid in the lab’s data collection process for the ladder beam task since researchers must manually watch recordings of mice and keep track of each step they take. Specifically, we attempted to build a model capable of accurately tracking the skeletal structure of mice as they complete the ladder beam task. Eventually, we would build upon this and create a model capable of classifying and mouse steps as good ones or bad ones. 


### Running the Project

Run in terminal: "git clone https://github.com/gilescarlos/Stats-170-Cap-Stone.git"

Download DLC folder from google drive: https://drive.google.com/drive/folders/1N_iCZrvarWnR3yChDOUyAsdOwhwNt4AH?usp=sharing

The project follows two separate pipelines: 

__A. ANOVA and Kruskal-Wallis__

1. Open and run cleaning_extracting.Rmd
2. Open and run eda.Rmd
3. Open and run anova_model.Rmd

__B. CNN using DeepLabCut__

1. Open and run dlc_model.ipynb

Notes: 

- steps provided at https://deeplabcut.github.io/DeepLabCut/docs/installation.html are a point of reference
- anaconda and pip should be installed on your computer
- then execute the following commands one by one: 
  - conda create -n DLC python==3.8
  - conda activate DLC
  - conda install -c conda-forge cudatoolkit==11.7.0 cudnn==8.4.1.50
  - pip install tensorflow==2.10.0
  - pip install deeplabcut==2.2.3
  - pip install ipython
  - pip install -U wxPython
- if running in Visual Studio Code, ensure kernel is "DLC"
- skip the code block underneath "Train Network (Model)" since this is computationally intensive

All file descriptions are provided below. 

## File Descriptions by Folder: 

### (A) presentations: contains all presentations given throughout the course

- Final Presentation.pdf: Final presentation for the project presented on June 7, 2023.
- Progress Presentation 2.pdf: Second presentation for the project presented on May 10, 2023.
- Progress Presentation 1.pdf: First presentation for the project presented on April 21, 2023.

### (B) wrangling: contains the files necessary to clean summary sheet data

- cleaning_extracting.Rmd: R markdown file for cleaning and extracting summary sheet data from excel file provided by our sponsors. 

### (C) eda: contains the files necessary to explore the data

- eda.Rmd: R markdown file containing code used for exploratory data analysis and creating plots.  

### (D) UCI_HD_Label-NG-2023-05-19: contains the all the files, data, and models to run the CNN from DeepLabCut

- dlc-models: contains pose_cfg.yaml which contains information about which specific body parts were labeled and trained on, along with several other hyperparameters
- evaluation-results: contains excel files indicating the number of training iterations and error rate for the model along with labeled images for the training data
- labeled-data: contains separate folders for each video trained on - each folder has a csv file for the labeled data and several frames from the video
- training-datasets: contains an excel file that combines all of the training data in the labeled-data folder from each video
- videos: contains the videos trained on, them labeled from the model, and corresponding excel files about the likelihood of each body part
- config.yaml: file containing several general parameters for the model.  

### (E) data: contains all summary data provided by our collaborators

__post_injury.csv: Cleaned Post Injury csv file:__

- **Source:** Sue and Bill Gross Stem Cell Research Center @ UCI School of Medicine
- **Number of Variables: 7**
- **Number of Observations: 30**
- **Codebook:**
  - Animal: The mouse's unique ID number
  - Total Good: The total number of good (plantar) steps across the mouse's three runs
  - Total Bad: The total number of bad (missteps) steps across the mouse's three runs
  - Average Good: The average number of good (plantar) steps across the mouse's three runs
  - Average Bad: The average number of bad (missteps) steps across the mouse's three runs
  - LB Score: The mouse's overall score out of 100
  - Type: The group the mouse belongs to (Wild, CD44 Knock-out, Vehicle)
  
### (F) reports: 

- final_report.Rmd: R markdown file used to generate our final report
- anova_model.Rmd: R markdown file containing code for ANOVA and Kruskal-Wallis Test
- dlc_model.ipynb: Jupyter notebook containing code for CNN

