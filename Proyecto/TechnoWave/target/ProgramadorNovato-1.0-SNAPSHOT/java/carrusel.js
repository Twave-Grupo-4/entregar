// Carrusel con Swiper JS
var swiper = new Swiper(".slide_content_1", {
	slidesPerView: 3,
	spaceBetween: 30,
	slidesPerGroup: 3,
	loop: true,
	loopFillGroupWithBlank: true,
	pagination: {
		cl: ".swiper-pagination",
		clickable: true,
	},
	navigation: {
		nextEl: ".carrusel-1-boton-prev",
		prevEl: ".carrusel-1-boton-next",
	},
});

var swiper2 = new Swiper(".slide-content_2", {
	slidesPerView: 3,
	spaceBetween: 30,
	slidesPerGroup: 3,
	loop: true,
	loopFillGroupWithBlank: true,
	pagination: {
		cl: ".swiper-pagination",
		clickable: true,
	},
	navigation: {
		nextEl: ".carrusel-2-boton-next",
		prevEl: ".carrusel-2-boton-prev",
	},
});

// Esto no es para el carrusel, es para dejar activado el check que cambia el botón de añadir el producto al carrito por el de quitarlo
checkbox = document.getElementById('btn-añadir-carro')
checkbox.checked = eval(window.localStorage.getItem(checkbox.id))

checkbox.addEventListener('change', function(){
window.localStorage.setItem(checkbox.id, checkbox.checked)
})