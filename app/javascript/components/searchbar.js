// import 'js-autocomplete/auto-complete.css';
// import autocomplete from 'js-autocomplete';

const displayFilteredCocktails = (input) => {

  const url = `/?search[query]=${input.value}`;
  fetch(url, { headers: { accept: "application/json" } })
  .then(response => response.json())
  .then((data) => {
    const result = document.querySelector(".cocktails-list");
    result.innerHTML = data.html;
  });
}

const filtercocktails = () => {
  const form = document.querySelector(".search-cocktail-form");
  if (form) {
    const input = form.querySelector("#search_query");
    form.addEventListener('submit', (event) => {
      event.preventDefault();
      displayFilteredPatients(input);
    });
    input.addEventListener('keyup', (event) => {
      displayFilteredPatients(input);
    })
  }

}

export { filtercocktails }
