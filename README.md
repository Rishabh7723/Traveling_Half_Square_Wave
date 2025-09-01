# Traveling Half-Square Pulse Simulation in MATLAB

This project simulates the propagation of a **half-square wave pulse** along a rope using **Fourier series expansion**.

## 🚀 Features
- Models a half-square initial displacement pulse
- Uses Fourier sine series for approximation
- Animates pulse propagation over time
- Adjustable parameters (rope length, pulse width, harmonics, speed)

## 📂 Files
- `half_square_pulse.m` → MATLAB script to run simulation
- `README.md` → Documentation

## 🔧 Parameters
You can modify the following in the script:
- `a` → amplitude of pulse  
- `L_rope` → total rope length  
- `L_pulse` → width of the square pulse  
- `N` → number of harmonics (higher = sharper pulse)  
- `velocity` → wave speed  

## 📊 Output
- A real-time animation of the pulse traveling along the rope.

## 🧮 Method
1. Define initial half-square pulse at center of rope.
2. Compute **Fourier sine coefficients** for the initial condition.
3. Superimpose harmonics with cosine time dependence.
4. Animate displacement profile with respect to time.

## ▶️ How to Run
1. Clone repository:
   ```bash
   git clone https://github.com/Rishabh7723/Traveling_Half_Square_Wave.git
