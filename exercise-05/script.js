cards = document.getElementsByClassName("grid-item");
  imgs = document.getElementsByClassName("figure");
  next = document.getElementById("next");
  prev = document.getElementById("prev");
  var pokemonvals = [];
  var index=0,nextPage,prevPage;

  setData('https://pokeapi.co/api/v2/pokemon');

  function setData(url){
  fetch(url)
  .then((response) => response.json())
  .then( async(data) =>{    nextPage = data.next; prevPage = data.previous;
    for(element of data.results){
      const response = await fetch(element.url)
      //<div class="grid-item"> </div>
      var div = document.createElement("div");
      div.className ="grid-item";
      document.getElementByClassName("grid-container").appendChild(div);

      const pokemon = await response.json()
      pokemonvals.push(pokemon)
      }; 
      setOrder('order')
   })
  .catch(error => { throw(error); });
  }

  next.addEventListener("click", function(){
    if (nextPage != undefined){
      next.style.display="inline-block";
      setData(nextPage);
      pokemonvals=[];
    }else{
      next.style.display="none";
     // alert("No next pages to view");
    }
   
  })
  prev.addEventListener("click",function(){
    if (prevPage != undefined){
     prev.style.display="inline-block";
     setData(prevPage)
     pokemonvals=[];
      
    }else{
      //alert("No previous pages to view");
      prev.style.display="none";
    }
  })

  function search(){
    input = document.getElementsByName("search")[0].value;
    pokemonvals.map((element,index)=>{
      cards[index].style.display ="none";
      if(element.name.startsWith(input)){
        console.log(element.name)
        cards[index].style.display="inline-block"
      }
    })
    
  }
  function setOrder(value){ 
    console.log("called")
    pokemonvals.sort((a, b) =>  a[value] - b[value] );
    //console.log(pokemonvals[5])
    pokemonvals.map((element,index)=>{
      cards[index].innerHTML="<img src="+element.sprites.front_default+" data-index="+index.toString()+" alt="+element.name+" class='logo' onmouseover='change(this,1)' onmouseout='change(this,0)'> <br>"+"name: "+element.name+"<br>"+"weight: "+element.weight+"<br>"+"base experience: "+element.base_experience+"<br>"+"hit points: "+element.stats[0].base_stat+"<br>"+"<button onclick='more("+index+")'>View More</button>";
    })
  }

  function more(ind){
    console.log(pokemonvals[ind]);
    sessionStorage.setItem("pokemon",JSON.stringify(pokemonvals[ind]));
    document.getElementsByClassName("frame")[0].src="./information.html"; 
  }

  function change(val,chng){
    indx = Number(val.getAttribute('data-index'));
    if (chng == 1)
      val.src = pokemonvals[indx].sprites.back_default;
    else
     val.src =pokemonvals[indx].sprites.front_default

  }
   
   drpdown = document.getElementById("sort");
   drpdown.addEventListener("input",function(val){ setOrder(drpdown.value) })

        var display =  document.getElementsByClassName("displaymore")[0];
        var val = JSON.parse(sessionStorage.getItem("pokemon"));
        var output  = " Forms: "+val.forms[0].name +" "+val.forms[0].url + "<br> Moves: ";
        val.moves.map((elem,index)=>{
        output += elem.move.name+ ", ";
       });
       output += "<br> Stats: "
       val.stats.map((elem,index)=>{
        output += elem.base_stat+ ", ";
       });

       output += "<br> Species: "+val.species.name +" "+val.species.url ;
       console.log(output)

      display.innerHTML=output.substring(1, 100)+"...";
       display.addEventListener("click",function(){
            display.innerHTML = output;
       })
