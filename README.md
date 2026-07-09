# DK Wedding Invitation

A simple static wedding invitation site for the DK wedding. This repository contains a lightweight HTML/CSS template you can customize, plus a basic RSVP form that can be hooked to Formspree or Netlify Forms (no backend required).

What I added

- `index.html` — main static invitation page
- `styles/style.css` — basic styles
- `README.md` — this file with usage instructions
- `LICENSE` — MIT license
- `.gitignore` — common ignores
- `assets/placeholder.txt` — add your images here (header.jpg, gallery images)

How to preview

1. Clone the repo locally:

   git clone https://github.com/kisnami/dk-wedding-invitation.git
   cd dk-wedding-invitation

2. Open `index.html` in your browser.

Hosting suggestions

- GitHub Pages: In the repo settings, enable Pages and serve from the main branch root (or `gh-pages` branch if you prefer). Your site will be available at `https://kisnami.github.io/dk-wedding-invitation/`.
- Netlify / Vercel: Connect the repo and deploy — these platforms detect static sites automatically.

RSVP form

The included RSVP form in `index.html` uses a placeholder Formspree action. To make it functional:

- Sign up at https://formspree.io/ or use Netlify Forms.
- Replace the `action` attribute on the form in `index.html` with your Formspree form endpoint (e.g. `https://formspree.io/f/your-id`).

Customization

- Replace images in `assets/` (suggested `header.jpg`, `gallery1.jpg`, `gallery2.jpg`).
- Edit event details in `index.html`.

License

This project is licensed under the MIT License — see `LICENSE`.
