const add = () => {const ingredients = document.querySelectorAll("#cocktail_ingredient_ids > option");
  const dose = document.querySelectorAll("body > div:nth-child(5) > button")
// ["0"].innerHTML
let select = [];
let i = 0;
ingredients.forEach((ingredient) => {
   ingredient.addEventListener("click", (event) => {
       select.push(ingredient.innerHTML)
       fetch('/ingredient/new', body: {
       	headers: json
       	body: JSON.strinify({
       		ingredient: ingredient.innerHTML
       		
       	})
       })
   });
})
dose.forEach((dose) => {
  dose.addEventListener("click", (event) => {
       fetch('/ingredient/new', body: {
        headers: json
        body: JSON.strinify({
        
          description: dose.innerHTML
        })
       })
   });
})
}



// ingredient/new

export { add } ;
