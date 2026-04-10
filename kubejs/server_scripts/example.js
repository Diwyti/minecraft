/* 
 * ServerEvents.recipes(callback) is a function that accepts another function,
 * called the "callback", as a parameter. The callback gets run when the 
 * server is working on recipes, and then we can make our own changes.
 * When the callback runs, it is also known as the event "firing". 
*/

// Listen for the "recipes" server event.
ServerEvents.recipes(event => {
    event.remove({ id: 'selfexpression:base_bootscraft' })
    event.remove({ id: 'selfexpression:base_capcraft' })
    event.remove({ id: 'selfexpression:base_trouserscraft' })
    event.remove({ id: 'selfexpression:clothcrfaft' })
    event.remove({ id: 'selfexpression:base_jacketcrfaft' })

    event.remove({ id: 'selfexpression_slim:small_base_bootscraft' })
    event.remove({ id: 'selfexpression_slim:small_base_capcraft' })
    event.remove({ id: 'selfexpression_slim:small_base_jacketcraft' })
    event.remove({ id: 'selfexpression_slim:small_base_trouserscraft' })

    // You can replace `event` with any name you like, as
    // long as you change it inside the callback too!
  
    // This part, inside the curly braces, is the callback.
    // You can modify as many recipes as you like in here,
    // without needing to use ServerEvents.recipes() again.
  
    console.log('Hello! The recipe event has fired!')
  })