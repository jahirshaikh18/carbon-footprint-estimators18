# 🌿 Carbon Footprint Estimator
**Comprehensive Individual & Person-Wise Environmental Impact Assessment System**

---

## 📌 Project Overview
The **Carbon Footprint Estimator** is an interactive, responsive web application developed for academic demonstration, environmental sustainability analysis, and personal carbon accounting.

The application allows users to quantify, visualize, and compare greenhouse gas emissions ($\text{CO}_2\text{e}$) across four core lifestyle sectors:
1. **Transportation & Travel** (Private Car, Two-wheeler, Public Transit/Metro, Flights)
2. **Electricity & Household Energy** (Grid electricity in kWh, LPG cylinders)
3. **Diet & Nutrition** (Plant-based/Vegan, Vegetarian, Mixed, Meat-heavy)
4. **Waste & Goods Consumption** (Low/Minimalist, Moderate, High single-use plastic)

---

## 🎯 Key Project Features

### 1. Person-Wise & Multi-Profile Analysis (`👥 Person-Wise Analysis`)
- Allows testing and comparing realistic archetypes side-by-side:
  - 🎓 **Aarav (College Student)**: Uses bus/metro, modest electricity consumption, vegetarian mess diet $\rightarrow$ **~2.3 t $\text{CO}_2\text{e}$/yr**.
  - 🚆 **Sneha (Metro Commuter / Junior Dev)**: Daily metro travel, moderate electricity $\rightarrow$ **~3.7 t $\text{CO}_2\text{e}$/yr**.
  - 🚗 **Vikram (Corporate Executive)**: Daily solo car driving ($700\text{ km/mo}$), high AC usage ($320\text{ kWh/mo}$), meat-heavy diet $\rightarrow$ **~8.8 t $\text{CO}_2\text{e}$/yr**.
  - 🌿 **Ananya (Eco-Warrior)**: Bicycle/EV, solar-powered home, zero-waste vegan $\rightarrow$ **~1.8 t $\text{CO}_2\text{e}$/yr** (Meets Paris Climate Target).
- **Add Custom Person Profiles**: Teachers, students, or family members can be added on the fly and compared in a side-by-side matrix table.
- **Tree Offset Calculator**: Shows how many trees ($\approx 22\text{ kg CO}_2\text{/tree/yr}$) are required to offset each person's lifestyle.

### 2. Interactive Real-Time Dashboard
- Live dynamic SVG Donut Chart showing category breakdown.
- Visual category progress bars with percentage contributions.
- Benchmark meter comparing the person against:
  - **Paris Agreement Target:** $2.0\text{ t / yr}$
  - **Indian National Average:** $1.9\text{ t / yr}$
  - **Global Average:** $4.7\text{ t / yr}$

### 3. "What-If" Habit Reduction Simulator (`🧪 What-If Simulator`)
- Demonstrates how policy or personal habit interventions directly slash emissions.
- Example: Shifting 50% of car trips to the metro + setting AC thermostat to 25°C saves over **2,700 kg $\text{CO}_2\text{e}$/year** for a high emitter.

### 4. Teacher & Viva Presentation Walkthrough (`🎓 For Ma'am`)
- Built-in demonstration script, mathematical formulations, and top 6 viva questions and model answers embedded directly into the application.

---

## 📐 Scientific Mathematical Model & Emission Factors

The calculation engine applies standard empirical factors from the **Intergovernmental Panel on Climate Change (IPCC)** and the **Central Electricity Authority (CEA)**:

$$\text{Monthly Total } (\text{kg CO}_2\text{e}) = E_{\text{transport}} + E_{\text{energy}} + E_{\text{food}} + E_{\text{waste}}$$

$$\text{Annual Total } (\text{tonnes CO}_2\text{e}) = \frac{\text{Monthly Total} \times 12}{1000}$$

$$\text{Trees Needed to Offset} = \left\lceil \frac{\text{Annual Total } (\text{kg CO}_2\text{e})}{22} \right\rceil$$

### Emission Factor Reference Table:
| Sector | Activity Parameter | Factor | Unit | Reference |
|---|---|---|---|---|
| **Private Car** | Distance | $0.18$ | $\text{kg CO}_2\text{e / km}$ | IPCC Mobile Combustion |
| **Two-Wheeler** | Distance | $0.07$ | $\text{kg CO}_2\text{e / km}$ | ARAI / MoRTH Guidelines |
| **Public Transit (Bus/Metro)** | Distance | $0.04$ | $\text{kg CO}_2\text{e / pass-km}$ | CRRI Urban Transit Avg |
| **Flight / Aviation** | Flight Duration | $90.0$ | $\text{kg CO}_2\text{e / flight hour}$ | ICAO Aviation Calculator |
| **Grid Electricity** | Energy | $0.70$ | $\text{kg CO}_2\text{e / kWh}$ | CEA Baseline Database |
| **Cooking Gas (LPG)** | Cylinder | $42.5$ | $\text{kg CO}_2\text{e / cylinder}$ | PCRA Fuel Combustion |
| **Diet: Plant-Based** | Monthly food | $100.0$ | $\text{kg CO}_2\text{e / month}$ | Poore & Nemecek (Oxford) |
| **Diet: Vegetarian** | Monthly food | $140.0$ | $\text{kg CO}_2\text{e / month}$ | Average Indian Diet LCA |
| **Diet: Meat-Heavy** | Monthly food | $250.0$ | $\text{kg CO}_2\text{e / month}$ | Livestock Enteric Fermentation |
| **Waste: Low** | Waste level | $20.0$ | $\text{kg CO}_2\text{e / month}$ | Minimal municipal disposal |
| **Waste: High** | Waste level | $85.0$ | $\text{kg CO}_2\text{e / month}$ | Packaging + single-use plastic |

---

## 🗣️ How to Present to Your Teacher / Ma'am (Step-by-Step Script)

When your teacher asks: *"Beta / Student, show me how your Carbon Footprint Estimator works, and explain person-wise results."* Follow this script:

### Step 1: Open the Application
- Open `index.html` in your browser.
- Point to the header title: *"Ma'am, this is our project **Carbon Footprint Estimator**."*

### Step 2: Show Person-Wise Differences (The Core Demonstration)
- Click on the **"👥 Person-Wise Analysis"** tab.
- Say: 
  > *"Ma'am, to test how emissions vary person-by-person, we have preloaded 4 representative profiles:*
  > 1. *Here is **Aarav**, a college student. Because he travels by metro/bus and consumes only 40 kWh of hostel electricity, his annual footprint is only **2.3 tonnes/year**.*
  > 2. *Now look at **Vikram**, a corporate manager who drives a private car daily and runs AC extensively. His footprint jumps to **8.8 tonnes/year**—almost 4 times higher!*
  > 3. *We can also add your profile or any new person on the spot by clicking '+ Add New Person Profile'."*

### Step 3: Demonstrate the Real-Time Calculator
- Click **"Load ↗"** on Vikram's row to load his parameters into the **Calculator & Dashboard**.
- Move the **Car Travel slider** from $700\text{ km}$ down to $200\text{ km}$.
- Show how the **SVG Donut Chart**, **KPI cards**, and **Tree Offset badge** immediately react in real-time.

### Step 4: Show the "What-If" Simulator
- Click the **"🧪 What-If Simulator"** tab.
- Say: 
  > *"Ma'am, our project also provides an actionable solution. If Vikram replaces 50% of his car trips with the metro and raises his AC temperature to 25°C, his annual emissions drop by **over 2,700 kg $\text{CO}_2\text{e}$**, which is equivalent to planting 55 trees!"*

### Step 5: Refer to the "Teacher & Viva Demo Guide" Tab
- Click the **"🎓 Teacher / Viva Demo"** tab.
- Say: 
  > *"All underlying IPCC formulas, emission factors, and viva theoretical references are documented right here inside the application."*

---

## ❓ Top Viva Questions & Quick Answers

1. **What is $\text{CO}_2\text{e}$?**
   - **Answer:** Carbon Dioxide Equivalent. It bundles all greenhouse gases ($\text{CO}_2$, $\text{CH}_4$, $\text{N}_2\text{O}$, fluorinated gases) into a single metric by multiplying each gas with its Global Warming Potential (GWP).
2. **Why does diet produce carbon emissions?**
   - **Answer:** Food emissions originate from enteric fermentation (methane released by livestock cattle), deforestation for animal feed, nitrogen fertilizer emissions ($\text{N}_2\text{O}$), and cold-chain transportation.
3. **What is the source of the electricity factor?**
   - **Answer:** The Central Electricity Authority (CEA) of India, which calculates a weighted grid average of ~0.70 to 0.82 kg $\text{CO}_2\text{e}$ per kWh generated by thermal coal power plants.
4. **How did you store the user's data?**
   - **Answer:** We utilized the HTML5 Web Storage API (`localStorage`), which keeps profiles persistent across sessions in the browser without requiring a heavy backend setup.

---

## 💻 Tech Stack
- **Frontend:** Pure HTML5, Modern CSS3 (CSS Custom Properties, Flexbox, CSS Grid, SVG, Print Media Queries), Vanilla JavaScript (ES6+).
- **Architecture:** Client-side reactive MVC-style pattern with zero external build dependencies (works 100% offline).
- **Storage:** HTML5 `localStorage` for offline persistence.

---

## 🚀 How to Run the Project
1. **Directly in Browser:** Double-click [`index.html`](file:///C:/Users/SSJ22/.gemini/antigravity/scratch/carbon-footprint-estimator/index.html) or right-click $\rightarrow$ Open With $\rightarrow$ Google Chrome / Microsoft Edge.
2. **Via Local Server (Optional):**
   ```powershell
   cd C:\Users\SSJ22\.gemini\antigravity\scratch\carbon-footprint-estimator
   python -m http.server 8000
   ```
   Then open `http://localhost:8000` in your browser.
