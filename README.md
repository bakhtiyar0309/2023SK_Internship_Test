# 2023SK_Internship_Test
Entry test for research engineer internship  

## Task #1 Applying the diffusion model for generating images of flowers

- Repository of diffusion model: 
- Flower images dataset: 

To replicate the results of the experiment, do the following: 
1. Open `task_1_flowers.ipynb` notebook inside `task_1` folder in Google Colab.

2. Go to `Step 1: Prepare the Dataset` and run all cells inside to load the trained model parameters `ddpm_flower.pth`.
    - `ddpm_flower.pth` - trained `ddpm` model parameters on $\approx$ 27% of Flowers Dataset with 100 epoches.
    
3. To generate images of flowers using diffusion models, go to `__Step 3: Generating the images with the trained diffusion model__` and run corresponding cells.


<p align="center">
  <img src="figures/floodnet.png">
</p>
<p align="center">   
   <em> Fig.1 Results of the DDPM on FloodNet dataset </em>
</p>

