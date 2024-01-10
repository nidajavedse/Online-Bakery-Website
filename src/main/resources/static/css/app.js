let openShopping = document.querySelector('.shopping');
let closeShopping = document.querySelector('.closeShopping');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');

openShopping.addEventListener('click', ()=>{
    body.classList.add('active');
})
closeShopping.addEventListener('click', ()=>{
    body.classList.remove('active');
})

let products = [];

fetch('/data')
    .then(response => response.json())
    .then(data => {
        // Add the retrieved JSON object to the products array
        products.push(data);
        // Process the data as needed
    })
    .catch(error => {
        console.error('Error:', error);
    });



let listCards  = [];
function initApp(){
    products.forEach((value, key) =>{
        let newDiv = document.createElement('div');
        newDiv.classList.add('item');
        newDiv.innerHTML = `
            <img src="images/${value.picture}">
            <div class="title">${value.name}</div>
            <div class="price">${value.price.toLocaleString()}</div>
            <button onclick="addToCard(${key})">Add To Cart</button>`;
        list.appendChild(newDiv);
    })
}
initApp();
function addToCard(key){
    if(listCards[key] == null){
        // copy product form list to list card
        listCards[key] = JSON.parse(JSON.stringify(products[key]));
        listCards[key].quantity = 1;
    }
    reloadCard();
}
function reloadCard(){
    listCard.innerHTML = '';
    let count = 0;
    let totalPrice = 0;
    listCards.forEach((value, key)=>{
        totalPrice = totalPrice + value.price;
        count = count + value.quantity;
        if(value != null){
            let newDiv = document.createElement('li');
            newDiv.innerHTML = `
                <div><img src="images/${value.picture}"/></div>
                <div>${value.name}</div>
                <div>${value.price.toLocaleString()}</div>
                <div>
                    <button onclick="changeQuantity(${key}, ${value.quantity - 1})">-</button>
                    <div class="count">${value.quantity}</div>
                    <button onclick="changeQuantity(${key}, ${value.quantity + 1})">+</button>
                </div>`;
                listCard.appendChild(newDiv);
        }
    })
    // Update the product names in the 'productsname' input field
    let productsnameInput = document.getElementById('productsname');
    productsnameInput.value = '';
    
    // Update the product names in the 'productsname' div
    let productsnameDiv = document.getElementById('myproductsname');
    productsnameDiv.innerHTML = '';

  listCards.forEach(function (value) {
    if (value != null) {
		productsnameInput.value += value.name + ', ';
      productsnameDiv.innerHTML += `<div>${value.name}</div>`;
    }
  });
    let myTotalElement = document.getElementById('mytotal');
    total.innerText = totalPrice.toLocaleString();
    myTotalElement.innerText = totalPrice.toLocaleString();
    let GrandTotal = document.getElementById('mygrandtotal');
    GrandTotal.innerText = totalPrice.toLocaleString();
    let mGrandTotal = document.getElementById('grandtotal');
    mGrandTotal.value = totalPrice.toLocaleString();
    quantity.innerText = count;
    
}
function changeQuantity(key, quantity){
    if(quantity == 0){
        delete listCards[key];
    }else{
        listCards[key].quantity = quantity;
        listCards[key].price = quantity * products[key].price;
    }
    reloadCard();
}

