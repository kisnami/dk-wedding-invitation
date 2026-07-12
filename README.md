# DK Wedding — Krishnakumar & Dharshini

This update enhances the invitation UI to match a modern theme (inspired by the site you shared) and adds:

- Updated hero with couple names and venue/date/time
- Theme picker (Rose, Teal, Gold, Navy)
- Background selector with a few built-in options and a file upload to set a custom background image
- Toggleable floating hearts animation (CSS + JS)
- Responsive layout and improved styles

How to use

- Open index.html to preview locally.
- Use the control panel at the top to change theme, choose a background, upload your own image, and enable animated hearts.
- To persist user choices we store them in localStorage; this affects browser viewers only.

RSVP

- The RSVP form still uses a placeholder Formspree action. Replace the action attribute in index.html with your Formspree form endpoint or use Netlify Forms by adding data-netlify="true" to the form before deploying to Netlify.

Deploy

- GitHub Pages, Netlify, or Vercel are all fine for static deployment. If you deploy on Netlify you can use Netlify Forms to capture submissions without adding a backend.

