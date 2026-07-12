# DK Wedding — Krishnakumar & Dharshini

This update moves the static site into the `docs/` folder and disables Jekyll processing so GitHub Pages can serve the static files directly.

What I added:
- docs/.nojekyll (prevents Jekyll processing)
- Copied site files into docs/ (index.html, styles/, scripts/, assets/) so Pages can publish from the `docs` folder.

What to do next (if you want the site to be served from `main / root` instead):
- In your repository settings -> Pages, change Source to `main` branch and `/ (root)` folder, and optionally remove the `docs/` copies.

Preview locally:
- git clone https://github.com/kisnami/dk-wedding-invitation.git
- cd dk-wedding-invitation/docs
- python3 -m http.server 8000
- open http://localhost:8000

