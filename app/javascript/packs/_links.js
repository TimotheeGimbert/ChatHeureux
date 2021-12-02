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

category_link = document.querySelectorAll('a.category-link')
console.log(category_link)
category_link.forEach(
  function(element){
    if (element.getAttribute('href')==(window.location.pathname + window.location.search)){
      element.classList.add('btn-primary')
      element.classList.remove('btn-success')
    }else{
      element.classList.add('btn-success')
      element.classList.remove('btn-primary')    }
    console.log(element.getAttribute('href'))
  }
)