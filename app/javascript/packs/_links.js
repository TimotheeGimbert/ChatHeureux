links = document.querySelectorAll('a.nav-link')
console.log(links)
links.forEach(
  function(element){
    if (element.getAttribute('href')==window.location.pathname){
      element.classList.add('active')
    }else{
      element.classList.remove('active')
    }
    console.log(element.getAttribute('href'))
  }
)