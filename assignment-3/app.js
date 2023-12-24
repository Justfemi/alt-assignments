const nav = document.querySelector('nav');
const hamburger = document.querySelector('.icons');

hamburger.addEventListener('click', () => {
  nav.classList.toggle('show');
  if (nav.classList.contains('show')) {
    hamburger.innerHTML = '<i class="bx bx-x"></i>'; // Close icon
  } else {
    hamburger.innerHTML = '<i class="bx bx-menu"></i>'; // Hamburger icon
  }
});

document.addEventListener('scroll', function () {
  nav.classList.remove('show');
  // hamburger.innerHTML = '&#9776;';
  hamburger.innerHTML = '<i class="bx bx-menu"></i>';
});