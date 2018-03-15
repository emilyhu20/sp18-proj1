# Q0: Why is this error being thrown?
This error is being thrown because the Controller for pokemon has not been created yet!
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random pokemon are appearing during the refresh after login. They are appearing because not all pokemon have to belong to a trainer, so the ones that are popping up are free from captivity :'). In the home controller, a random trainer-less pokemon is selected and then rendered onto the screen in the html file. 

# Question 2: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button_to method sends the id of the current pokemon to the capture method via the PATCH request referred to by capture_path in routes.rb. It basically creates a form to send that data, so that the capture method can assign that pokemon to the logged in trainer. 

# Question 3: What would you name your own Pokemon?
Bobasaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer_path to the redirect_to and it required an id parameter, so I supplied the id of the current trainer, which I passed into damage through the button_to call. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
If the save fails, that line will identify the error thrown by the validation and flash it as a sentence on the next rendered page, which is the form in this case. 

# Give us feedback on the project and decal below!
This project was pretty doable and definitely the right difficulty!

# Extra credit: Link your Heroku deployed app
https://github.com/emilyhu20/sp18-proj1


