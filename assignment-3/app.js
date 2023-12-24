const nav = document.querySelector('nav');
const hamburger = document.querySelector('.icons');
const navLinks = document.querySelectorAll('nav a');
const navButton = document.querySelector('.nav-btn');

hamburger.addEventListener('click', () => {
  nav.classList.toggle('show');
  if (nav.classList.contains('show')) {
    hamburger.innerHTML = '<i class="bx bx-x"></i>';
  } else {
    hamburger.innerHTML = '<i class="bx bx-menu"></i>';
  }
});

document.addEventListener('scroll', () => {
  nav.classList.remove('show');
  hamburger.innerHTML = '<i class="bx bx-menu"></i>';
});

navLinks.forEach(link => {
  link.addEventListener('click', () => {
    nav.classList.remove('show');
    hamburger.innerHTML = '<i class="bx bx-menu"></i>';
  });
});

navButton.addEventListener('click', () => {
  nav.classList.remove('show');
  hamburger.innerHTML = '<i class="bx bx-menu"></i>';
})