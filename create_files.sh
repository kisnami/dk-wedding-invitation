#!/usr/bin/env bash
set -e

cat > README.md <<'README'
# DK Wedding Invitation

A simple static wedding invitation site for the DK wedding.
README

cat > index.html <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>DK Wedding Invitation</title>
  <link rel="stylesheet" href="styles/style.css" />
</head>
<body>
  <header class="hero">
    <div class="container">
      <h1>D &amp; K</h1>
      <p class="date">October 10, 2026 · City, Country</p>
    </div>
  </header>

  <main class="container">
    <section class="details">
      <h2>You're invited</h2>
      <p>We'd love for you to celebrate our wedding. Ceremony at 3:00pm, reception to follow.</p>
    </section>

    <section class="rsvp">
      <h2>RSVP</h2>
      <form action="https://formspree.io/f/your-id" method="POST">
        <label>Name <input name="name" type="text" required /></label>
        <label>Email <input name="email" type="email" required /></label>
        <label>Will you attend?
          <select name="attendance" required>
            <option value="">Select</option><option value="yes">Yes</option><option value="no">No</option>
          </select>
        </label>
        <label>Message <textarea name="message"></textarea></label>
        <button type="submit">Send RSVP</button>
      </form>
      <p class="note">This form is a placeholder — configure Formspree or Netlify Forms to receive responses.</p>
    </section>
  </main>

  <footer class="site-footer"><p>&copy; 2026 D &amp; K</p></footer>
</body>
</html>
HTML

mkdir -p styles assets
cat > styles/style.css <<'CSS'
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: system-ui, -apple-system, "Segoe UI", Roboto, Arial; color:#222; background:#fff; }
.container { max-width:900px; margin:0 auto; padding:2rem; }
.hero { background: linear-gradient(120deg,#f9f3f0,#fff); padding:4rem 0; text-align:center; border-bottom:1px solid #eee; }
.hero h1 { font-size:3rem; margin-bottom:0.25rem; }
.hero .date { color:#666; }
.details, .rsvp, .gallery { margin-top:2rem; padding:1.25rem; border:1px solid #f0eaea; border-radius:8px; background:#fffdfd; }
.rsvp form { display:flex; flex-direction:column; gap:0.75rem; }
.rsvp input, .rsvp textarea, .rsvp select { padding:0.6rem; border:1px solid #ddd; border-radius:6px; }
.rsvp button { width:fit-content; padding:0.6rem 1rem; background:#3b82f6; color:white; border:none; border-radius:6px; cursor:pointer; }
.site-footer { text-align:center; padding:1.5rem 0; color:#888; font-size:0.9rem; margin-top:2rem; }
CSS

cat > .gitignore <<'GIT'
.DS_Store
node_modules/
.env
.vscode/
dist/
*.log
GIT

cat > assets/placeholder.txt <<'TXT'
Add your images here:
- header.jpg (recommended 1600x600)
- gallery1.jpg
- gallery2.jpg
TXT

echo "Files created. Now run: git add . && git commit -m \"Add static wedding invitation site\" && git push origin main"
