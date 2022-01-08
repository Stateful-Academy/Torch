# Torch
We are going to build a simple flashlight app. While an app like this may seem simple on the outside it actually has some challenging logic and state tracking. 

Lets start by building the UI

## Create the project
1. Open Xcode and click `Create a new Xcode project`
2. Select `App` and click `next`
3. Fill in the `Produce Name` section with a name of your choosing. We choose Torch for ours.
4. Verify the `Interface` selected is `Storyboard`. 
5. Verify the `Language` selected is `Swift`
6. Verify the options `Use Core Data`, `Host in CloudKit`, and `Include Tests` are unchecked
7. Click `Next`
8. Now you should be able to choose the location you would like this file. This is entirely up to you.
9. Click `Create`

## Design the UI
1. Click on `Main` to access the default `View Controller` scene. 

Because Flashlights are typically stored `Off` we want our screen to be black.

2. Change the `view` background color to `Black`.  OR whatever color you want. I’m a README, not a cop. 

Now we need a way for the user to control wether the flashlight is on or off. To do that we are going to use a `UIButton`. 

3. Open the `Object Library` 
	1. This is the `+` button on the top right..
4. Drag a `Button` on the `ViewController` scene

Let’s center the button onto the screen. 

6. Select the `Button` then Control-Drag from the center of the `Button` to the `VIew Controller` scene. 
7. Holding down the `Shift` key select `Center Horizontally in container` and `Center Vertically in container`.

Boom! Nice work! Now the button will always be in the center regardless of what size screen the user has. Lets update some of the UI attributes of the Button

8. Select the `Button` and open the `Attributes Inspecter` . This is the icon with three slider icons stacked.
9. Update the text on the `Button` to `Turn On`
10. Update the text color on the button to `White`

Now it should look much better! Before we move onto the proper logic side of this project we will need to link the `Button`  to our `View Controller` file. 

11. Open the `View Controller` file in the `Assistant editor`.
	1. To do this, have the `Main` storyboard open, hold down the `Option` Key, select the `ViewController.swift` file. They should now be side by side.
12. Control-Drag from the button the `ViewController.swift` file. Have your cursor end above the function `viewDidLoad`. 
13. Verify the connection type says `Outlet` and name this `powerButton`
14. Control-Drag from the button the `ViewController.swift` file. Have your cursor end below the function `viewDidLoad`. 
15. Verify the connection type says `Action` and name this `powerButtonTapped`

Your `Action` should look like this:

``` swift
@IBAction func powerButtonTapped(_ sender: Any) {
}
```

Nice work! You are all set up and ready to start the logic!

## Flashlight Logic
We need away to track if the flashlight is currently on or not…

1. Create a `Bool` named `isOn`. Be sure to choose the correct mutability! 
2. Because flashlights typically start in the `Off` portions give the `Bool` a default value of `False`

The `IBAction` we created earlier will `trigger` each time the user pressed the `powerButton` button.  Within the scope of this function we need to do a few things…

Depending on the current `state` of the flashlight we need to update the background color to either `White` or `Black`. We need to set the buttons title to “Turn on” or “Turn off”. We also need to set the `Button` title color to ether `White` or `Black` as well. 

First, we need to check the condition of the flashlight -  is it `on` or `off`.  Then we can update the other properties accordingly. 

3. Create an `if-else` statement based on the value of the `isOn` Boolean.
4. If `IsOn` is equal to true
	* Update the background color to the proper color
	* Set the title of the `powerButton` to  the proper statement
	* Set the titleColor of the `powerButton` to the proper color
	* Update the state
5. Else 
	* Update the background color to the proper color
	* Set the title of the `powerButton` to  the proper statement
	* Set the titleColor of the `powerButton` to the proper color
	* Update the state

Hint: Finding how to change  the text of the button and the textColor of the `powerButton` can be a real challenge. This is how you do it:
``` swift
powerButton.setTitle("Turn On", for: .normal)
powerButton.setTitleColor(.white, for: .normal)
```

Hey! Great work! You’ve just completed your very first app! If you have some extra time or want a challenge feel free to try these stretches!

Level 1 - Use a switch statement instead of an if statement
Level 2 -  Use a Ternary operator instead of an if statement
Level 3 - Don’t use a property to keep track of the `isOn` state
Level 4 -  Remove the IBOutlet for your button
