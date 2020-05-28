import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Monstera", "Cactus", "Philodendron"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };
