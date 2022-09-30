//SONIDOS CLICK
let sonido = new Audio();
sonido.src = "./IMG/botones.mp3";

//Botón volver arriba
const btn_scrolltop=document.querySelector('#btn_scrolltop');
btn_scrolltop.addEventListener('click', ()=>{
    window.scrollTo({
        top:0,
        behavior: "smooth"
    });
});

window.onscroll = ()=>{
    if(window.scrollY < 300){
        btn_scrolltop.classList.remove("btn-scrolltop-on")
    }else{
        btn_scrolltop.classList.add("btn-scrolltop-on")
    }
};

//PASARELA
window.addEventListener('load', function(){
    new Glider(document.querySelector('.carrusel__lista'), {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: '.carrusel__indicador',
        arrows: {
            prev: '.carrusel__anterior',
            next: '.carrusel__siguiente'
        },
		responsive: [
			{
			  // screens greater than >= 450px
			  breakpoint: 450,
			  settings: {
				// Set to `auto` and provide item width to adjust to viewport
				slidesToShow: 2,
				slidesToScroll: 3
			  }
			},{
			  // screens greater than >= 800px
			  breakpoint: 800,
			  settings: {
				slidesToShow: 3,
				slidesToScroll: 4
			  }
			}
		]
    });
});

const boton1 = document.getElementById('adoptar_mascota');
function alertas(e){
    e.preventDefault();
    boton1.addEventListener('click', ()=>{
       Swal.fire({
            text:'¡Agregado al carrito!',
            icon:'success',
            confirmButtonText: '¡Entendido!',
            timer: 10000,
            timerProgressBar: true,
            background:'#403536',
            color: 'white',
            allowOutsideClick: false,    //No deja que el usuario de click afuera de la alerta
            confirmButtonColor: '#480F17',
        }); 
    });
}