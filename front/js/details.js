async function fetchMovieDetails() {
    const params = new URLSearchParams(window.location.search);
    const movieId = params.get('id');
    
    // Buscar os detalhes do filme na api
    const response = await fetch("http://localhost:8000/films/" + movieId);

    const movie = await response.json();

    const id = movie.id;
    // Busca os nomes dos personagens na api
    const getCharactersNames = async (movie) => {
        
        const characterPromises = movie.characters.map(async (character) => {
            
            if(character['name'] == undefined ){
                const charactersName = await fetch(
                    'http://localhost:8000/character?characters=' + character + '&film=' + id
                );
                return await charactersName.json();
            }
            return character['name'];
        });
        return Promise.all(characterPromises);
    };

    //Cria os campos do html
    var releaseDate  =  new Date(movie.release_date.replace("-","/"));
    const detailsContainer = document.getElementById('movie-details');
    detailsContainer.innerHTML = '<h2>' + movie.title + '</h2>' +
      '<p><strong>Episode:</strong>' + movie.episode_id + '</p>' +
      '<p><strong>Synopsis:</strong>' + movie.opening_crawl + '</p>' +
      '<p><strong>Release Date:</strong>' + releaseDate.toLocaleDateString('pt-BR') + '</p>' +
      '<p><strong>Director:</strong>' + movie.director + '</p>' +
      '<p><strong>Producers:</strong>' + movie.producer + '</p>';
    
    //Cria os campos com os nomes dos personagens do filme
    const names = document.getElementById('characters-details');
    names.innerHTML = '<p><strong>Characters:</strong> Carregando...<img src="front/imagens/icon.gif"/></p>';

    //Chama a função para buscar os nomes dos personagens

    let charactersNames = await getCharactersNames(movie)
        .then((characterNames) => {
            return characterNames;
        })
        .catch((error) => {
            console.error("Erro ao buscar nomes dos personagens:", error);
        });
    const novo = document.getElementById('characters-details');
    novo.innerHTML = '<p><strong>Characters:</strong>' + charactersNames.join(', ') + '</p>'
}
  
fetchMovieDetails();