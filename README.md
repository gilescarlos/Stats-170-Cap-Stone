# Assessing Stem Cell Therapeutics in Murine Models 

Giles Carlos,  Nathan Gin, Alexander Nathanael, Vinh Nguyen, Owen Sitiabudi

## Summary:

This project is in collaboration with the Stem Cell Research Center at the UCI School of Medicine. The center is focused on learning how stem cells can treat neurological disorders and injuries such as Alzheimer’s, Huntington’s disease, stroke, and spinal cord injury. Our collaborators’ research focuses on developing stem cell therapeutics that could aid in recovering from spinal cord injuries. Specifically, the lab utilizes murine models, or mice, to test different treatments. In their experiments, injured mice are given a certain treatment and undergo one of several tasks to see how they are recovering. We are focused on the Ladder Beam Task which helps evaluate mice motor function. We had two goals for this project. The first is to assess the effectiveness of different treatments through statistical models and appropriate hypothesis tests by analyzing pre-labeled data provided to us by our collaborators. The second was to aid in the lab’s data collection process for the ladder beam task since researchers must manually watch recordings of mice and keep track of each step they take. Specifically, we attempted to build a model capable of accurately tracking the skeletal structure of mice as they complete the ladder beam task. Eventually, we would build upon this and create a model capable of classifying and mouse steps as good ones or bad ones. 


### Running the Project

To run the project take the following steps: 

1. 
2. 
3.
4. 

All file descriptions are provided below. 

## File Descriptions by Folder: 

### (A) presentations: contains all presentations given throughout the course

- Final Presentation.pdf: Final presentation for the project presented on June 7, 2023.
- Progress Presentation 2.pdf: Second presentation for the project presented on May 10, 2023.
- Progress Presentation 1.pdf: First presentation for the project presented on April 21, 2023.

### (B) wrangling: contains the files necessary to clean summary sheet data

- cleaning_extracting.Rmd: 

### (C) eda: contains the files necessary to explore the data

- eda.Rmd: 

### (D) UCI_HD_Label-NG-2023-05-19: contains the all the files, data, and models to run the CNN from DeepLabCut

- dlc-models: 
- evaluation-results: 
- labeled-data: 
- training-datasets: 
- config.yaml: hyperparameters 

### 

### (E) Data: contains all summary data provided by our collaborators

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

## Conclusion: 
