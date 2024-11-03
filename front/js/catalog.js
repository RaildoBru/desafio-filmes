async function fetchMovies() {    
    const response = await fetch('http://localhost:8000/films/');
        
    const movies = await response.json();

    const movieList = document.getElementById('movie-list');
    
    movies['results'].forEach(
        (movie) => {
            const regexp = /\d+/gi;
            const movieItem = document.createElement('li');
            var releaseDate  =  new Date(movie.release_date.replace("-","/"));
            movieItem.innerHTML = '<a href=details.html?id=' 
                + movie.url.match(regexp).toString()  + '>'
                + movie.title 
                + ' (' + releaseDate.toLocaleDateString('pt-BR') + ')'
                + '</a>';

            movieList.appendChild(movieItem);
        }
    );
  }
  
  fetchMovies();