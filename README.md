# SpatialDomainFiltering-2

## AIM
Perform various spatial domain filtering techniques on a given image. Apply filter operations with different kernel sizes: 3x3, 7x7, 11x11, 15x15, and 21x21.

### Techniques Included
1. **Low-Pass Filtering**
2. **High-Pass Filtering**
3. **Weighted Average Filtering (Gaussian Filter)**

---

## Description
This project demonstrates the effects of spatial domain filtering on a grayscale image. By applying low-pass, high-pass, and weighted average filtering, the project visualizes how different kernel sizes influence image restoration and enhancement. 

### Filters Explained
- **Low-Pass Filtering:** Smooths the image by averaging pixel values over a defined neighborhood.
- **High-Pass Filtering:** Enhances edges by emphasizing high-frequency components and subtracting low-pass results.
- **Weighted Average Filtering:** Smooths the image using a Gaussian filter, where pixel weights decrease with distance.

---

## Directory Structure
```
project-directory/
├── cameraman.jpg         # Input grayscale image
├── lab06_spatial_filtering.m  # MATLAB script file
├── low_pass_filters.png  # Output for low-pass filtering
├── high_pass_filters.png # Output for high-pass filtering
├── weighted_avg_filters.png # Output for weighted average filtering
├── README.md             # Project documentation
```

---

## Prerequisites
1. MATLAB installed on your system.
2. `cameraman.jpg` image in the project directory.
3. Basic knowledge of MATLAB image processing commands.

---

## How to Run
1. Clone or download this repository.
2. Place the `cameraman.jpg` file in the project directory.
3. Open `lab06_spatial_filtering.m` in MATLAB.
4. Run the script.
5. Check the generated `.png` files for results.

---

## Results
### Generated Outputs
- **Low-Pass Filters:**
  
![Screenshot 2025-01-16 210838](https://github.com/user-attachments/assets/bd18977c-48b4-4105-a2a2-28902da28c02)

- **High-Pass Filters:**

  
 ![Screenshot 2025-01-16 210852](https://github.com/user-attachments/assets/01403b06-e0b7-4061-bc00-231bef0e3143)


- **Weighted Average Filters:**


  ![Screenshot 2025-01-16 210913](https://github.com/user-attachments/assets/5f5eedb8-6569-4b91-b448-dac7b657b343)


---

## Key Observations
- Increasing kernel size for low-pass filters results in greater smoothing but blurs details.
- High-pass filters highlight edges more distinctly with smaller kernel sizes.
- Gaussian filters provide smooth transitions and are less sensitive to noise.

---



## Author
**Rahul Patel**  
Roll No: UI22EC58
