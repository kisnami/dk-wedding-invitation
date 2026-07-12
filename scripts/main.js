// Main interactive behaviors: theme switching, bg selection, upload, hearts animation
(function(){
  const themeBtns = document.querySelectorAll('.theme-btn');
  const bgBtns = document.querySelectorAll('.bg-btn');
  const bgUpload = document.getElementById('bgUpload');
  const heartsToggle = document.getElementById('heartsToggle');
  const heartsContainer = document.getElementById('hearts');

  // Restore saved settings
  const savedTheme = localStorage.getItem('wedding_theme') || 'rose';
  document.body.setAttribute('data-theme', savedTheme);

  const savedBg = localStorage.getItem('wedding_bg');
  if (savedBg) setHeroBg(savedBg);

  const savedHearts = localStorage.getItem('wedding_hearts') === 'true';
  heartsToggle.checked = savedHearts;
  if (savedHearts) startHearts();

  themeBtns.forEach(btn => btn.addEventListener('click', () => {
    const t = btn.dataset.theme;
    document.body.setAttribute('data-theme', t);
    localStorage.setItem('wedding_theme', t);
  }));

  bgBtns.forEach(btn => btn.addEventListener('click', () => {
    const src = btn.dataset.src;
    // use relative path
    setHeroBg(`url('${src}')`);
    localStorage.setItem('wedding_bg', `url('${src}')`);
  }));

  bgUpload.addEventListener('change', (e)=>{
    const file = e.target.files && e.target.files[0];
    if (!file) return;
    const url = URL.createObjectURL(file);
    setHeroBg(`url('${url}')`);
    localStorage.setItem('wedding_bg', `url('${url}')`);
  });

  heartsToggle.addEventListener('change', (e)=>{
    const on = e.target.checked;
    localStorage.setItem('wedding_hearts', on);
    if (on) startHearts(); else stopHearts();
  });

  function setHeroBg(value){
    // set both root var and --hero-bg used in stylesheet
    document.documentElement.style.setProperty('--hero-bg', value);
    document.documentElement.style.setProperty('--hero-bg', value);
  }

  // Hearts animation
  let heartsInterval = null;
  function startHearts(){
    if (heartsInterval) return;
    heartsInterval = setInterval(spawnHeart, 600);
  }
  function stopHearts(){
    clearInterval(heartsInterval); heartsInterval = null; // remove existing hearts
    heartsContainer.innerHTML = '';
  }

  function spawnHeart(){
    const h = document.createElement('div');
    h.className = 'heart';
    h.textContent = '❤';
    const size = Math.random()*18 + 12; // 12 - 30px
    h.style.fontSize = size + 'px';
    const left = Math.random()*100;
    h.style.left = left + 'vw';
    h.style.bottom = '-30px';
    h.style.color = getComputedStyle(document.body).getPropertyValue('--accent').trim() || '#b76e79';
    heartsContainer.appendChild(h);
    // remove after animation
    setTimeout(()=>{ h.remove(); }, 4200);
  }

})();
