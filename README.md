# Shivam — Solar System Simulator

A WebGL-based Solar System and orbital mechanics simulator. Set any date to see accurate planet positions and observe real celestial events (eclipses, phases, conjunctions) in your browser.

---

## Features

- **Date-accurate positions** — Orbital elements and integrations for realistic planet positions on any date
- **Interactive 3D view** — Orbit controls, multiple viewpoints, and configurable planet scale
- **Scenarios** — Inner planets, full Solar System, Moon, and more
- **Shareable links** — Direct links with date and camera state for sharing

---

## Tech Stack

- **Frontend:** JavaScript, [Three.js](https://threejs.org/) (WebGL), jQuery, GSAP
- **Build:** Webpack, Babel, Sass
- **Server:** Node.js, Express (dev)

---

## Prerequisites

- **Node.js** 18+ ([nodejs.org](https://nodejs.org))
- **npm** (comes with Node.js)

---

## Quick Start

### 1. Clone and install

```bash
git clone <your-repo-url>
cd jsorrery
npm install --legacy-peer-deps
```

### 2. Run locally

```bash
npm start
```

Then open **http://localhost:2018** in your browser.

### 3. (Optional) Run in the background

```bash
npm run start:bg
```

Logs go to `server.log`. To stop: `kill $(cat .server.pid)` or `pkill -f "node server.js"`.

---

## Build for Production

```bash
npm run build
```

Output is in the `dist/` folder. Serve it with any static host (e.g. `npx serve dist`) or deploy to Vercel, Netlify, or GitHub Pages — see **[DEPLOY.md](./DEPLOY.md)** for step-by-step hosting instructions.

---

## Project Structure

```
├── src/
│   ├── index.html      # Main page and UI
│   ├── index.js        # Entry point, exposes JSOrrery
│   ├── core/            # App core, universe, scenarios
│   ├── gui/             # Controls, preloader, share
│   ├── graphics3d/      # Three.js scene, camera, rendering
│   ├── scenario/        # Scenario definitions and loader
│   └── scss/            # Styles
├── assets/              # Textures, shaders, orbital data
├── server.js            # Dev server (Express + Webpack)
├── webpack.config.js    # Build configuration
└── dist/                # Production build (after npm run build)
```

---

## Scripts

| Command | Description |
|--------|-------------|
| `npm start` | Start dev server at http://localhost:2018 |
| `npm run build` | Production build → `dist/` |
| `npm run start:bg` | Start dev server in background (logs to `server.log`) |
| `npm run lint` | Run ESLint on `src` |

---

## Deployment

To get a live URL for your portfolio (Vercel, Netlify, or GitHub Pages), follow the guide in **[DEPLOY.md](./DEPLOY.md)**.

---

## Samples

<img width="1512" height="862" alt="image" src="https://github.com/user-attachments/assets/0b0a673e-4405-4392-b8c4-1ae572166373" />
<img width="1512" height="862" alt="image" src="https://github.com/user-attachments/assets/4b9d8a47-f1a9-4d03-970c-48f2016b6e74" />
<img width="1511" height="860" alt="image" src="https://github.com/user-attachments/assets/617c27a3-e80f-4225-ae8b-98a656bb9289" />
<img width="1512" height="864" alt="image" src="https://github.com/user-attachments/assets/edb5155d-d317-4223-a9c8-99fbf36e0de0" />





## Credits & Acknowledgements

- Planet orbital elements: [NASA JPL](http://ssd.jpl.nasa.gov/?planet_pos)
- Orbital mechanics references: Keith Burnett, Paul Schlyter, E. M. Standish (JPL)
- Planet textures: [James Hastings-Trew](http://planetpixelemporium.com/planets.html)
- Star data: [AstroNexus](http://astronexus.com/), NASA
- Lunar theory: Chapront-Touze & Chapront (ELP2000-85), David Eagle
- Apollo trajectories: [Bob Braeunig](http://www.braeunig.us/apollo/)
- Orbiter integration notes: Martin Schweiger
- 3D engine: [Three.js](http://threejs.org/) by Mr Doob

---

## License

MIT — see [LICENSE.md](./LICENSE.md).
