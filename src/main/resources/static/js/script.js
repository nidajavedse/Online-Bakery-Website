const wrapper = document.querySelector('.wrapper');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnPopup = document.querySelector('.btnLogin-popup');
const iconClose = document.querySelector('.icon-close');
const myPopup = document.querySelector('.mypopup');
/*************** This for order ************/
const myTotalbtn = document.querySelector('.total');
const myContainer = document.querySelector('.mycontainer');
const myHeader = document.querySelector ('.myheader');
const OrderIconClose = document.querySelector ('.Order-icon-close');
/*************** This for thanks ************/
const leftForm = document.querySelector('.left');
const thankYouPopup = document.querySelector('.thank-you-popup');
const okButton = document.querySelector('.thank-you-popup button');

registerLink.addEventListener('click', ()=> {
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', ()=> {
    wrapper.classList.remove('active');
});

btnPopup.addEventListener('click', ()=> {
    wrapper.classList.add('active-popup');
    myPopup.classList.add('active-popup');
});

iconClose.addEventListener('click', ()=> {
    wrapper.classList.remove('active-popup');
    myPopup.classList.remove('active-popup');
});

/*************** This for order ************/
let totalDiv = document.querySelector('.total');

let observer = new MutationObserver((mutationsList) => {
  for (let mutation of mutationsList) {
    if (mutation.type === 'childList' && totalDiv.textContent !== '0') {
      myTotalbtn.addEventListener('click', () => {
        myContainer.classList.add('active-popup');
        myHeader.classList.add('active-popup');
      });

      OrderIconClose.addEventListener('click', () => {
        myContainer.classList.remove('active-popup');
        myHeader.classList.remove('active-popup');
      });
    }
  }
});

// Start observing the target element for changes
observer.observe(totalDiv, { childList: true });

/*************** This for thanks ************/

leftForm.addEventListener('submit', () => {
    myContainer.classList.remove('active-popup');
    myHeader.classList.remove('active-popup');
    thankYouPopup.classList.add('active-popup');
    
  });
  
  okButton.addEventListener('click', () => {
    wrapper.classList.remove('active-popup');
    myPopup.classList.remove('active-popup');
    thankYouPopup.classList.remove('active-popup');
  });
  
  
  $(document).ready(function() {
    // Submit form using AJAX
    $('form').submit(function(event) {
        event.preventDefault(); // Prevent form submission
        
        $.ajax({
            type: 'POST',
            url: '/saveOrder',
            data: $(this).serialize(),
            success: function(response) {
                if (response === 'success') {
                    leftForm.addEventListener('submit', () => {
    myContainer.classList.remove('active-popup');
    myHeader.classList.remove('active-popup');
    thankYouPopup.classList.add('active-popup');
  });
  
  okButton.addEventListener('click', () => {
    wrapper.classList.remove('active-popup');
    myPopup.classList.remove('active-popup');
    thankYouPopup.classList.remove('active-popup');
    
  });
  
  
}// Manually trigger form submission
                     //   event.currentTarget.submit();
            },
            error: function() {
                // Handle error case
            }
            
        });
       
    });
});



  

  