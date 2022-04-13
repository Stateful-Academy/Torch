# Torch

# Torch

We are going to build a simple flashlight app. While an app like this may seem simple on the outside it has some challenging logic and `state` tracking.

What is `state` in programming? 

> An example of an everyday device that has a `state` is a television set. To change the channel of a TV, the user usually presses a "channel up" or "channel down" button on the remote control, which sends a coded message to the set. 

In order to calculate the new channel that the user desires, the digital tuner in the television must have stored in it the number of the *current channel* it is on. It then adds one or subtracts one from this number to get the number for the new channel, and adjusts the TV to receive that channel. This new number is then stored as the *current channel*. Similarly, the television also stores a number that controls the level of volume produced by the speaker. Pressing the "volume up" or "volume down" buttons increments or decrements this number, setting a new level of volume. 

Both the *current channel* and *current volume* numbers are part of the TV's **`state`**. 
- Wikipedia
> 

# Let's get started!

## Create the project

1. Open Xcode and click `Create a new Xcode project`
2. Select `App` and click `next`
3. Fill in the `Product Name` section with a name of your choosing. We choose `Torch` for ours.
4. Verify the `Interface` selected is `Storyboard`.
5. Verify the `Language` selected is `Swift`.
6. Verify the options `Use Core Data`, `Host in CloudKit`, and `Include Tests` are unchecked.
7. Click `Next`.
8. Now you should be able to choose the location for this file. This is entirely up to you.
    1. We recommend you place this in your `Developer` folder. You may nest the location further from there.
9. Click `Create`.

## Design the UI

1. Click on `Main` to access the default `View Controller` scene.

Because Flashlights are typically stored `Off` we want our screen to be black.

1. Change the `view` background color to `Black` OR whatever color you want. I’m a README, not a cop.

Now we need a way for the user to control whether the flashlight is on or off. To do that we are going to use a `UIButton`.

1. Open the `Object Library`.
    1. This is the `+` button on the top right.
2. Drag a `Button` on the `ViewController` scene.

Let’s center the button onto the screen.

1. Select the `Button` then Control-Drag from the center of the `Button` to the `View Controller` scene.
2. Holding down the `Shift` key select `Center Horizontally in the container` and `Center Vertically in the container`.

Boom! Nice work! Now the button will always be in the center regardless of what size screen the user has. Let's update some of the UI attributes of the Button.

1. Select the `Button` and open the `Attributes Inspector`. This is the icon with three slider icons stacked.
2. Update the text on the `Button` to `Turn On`.
3. Update the text color on the button to `White`.

Now it should look much better! Before we move onto the proper logic side of this project we will need to link the `Button` to our `View Controller` file.

1. Open the `View Controller` file in the `Assistant editor`.
    1. To do this, have the `Main` storyboard open, hold down the `Option` Key, and select the `ViewController.swift` file. They should now be side by side.
2. Control-Drag from the button the `ViewController.swift` file. Have your cursor end above the function `viewDidLoad`.
3. Verify the connection type says `Outlet` and name this `powerButton`.
4. Control-Drag from the button the `ViewController.swift` file. Have your cursor end below the function `viewDidLoad`.
5. Verify that the connection type says `Action` and name this `powerButtonTapped`.

Your `Action` should look like this:

```swift
@IBAction func powerButtonTapped(_ sender: UIButton) {

    }
```

Nice work! You are all set up and ready to start the logic!

## Flashlight Logic

We need a way to track if the flashlight is currently on or not.

1. Create a `Bool` named `isOn`. Be sure to choose the correct mutability!
2. Because flashlights typically start in the `Off` position; give the `Bool` a default value of `false`.

The `IBAction` we created earlier will `trigger` each time the user presses the `powerButton` button.  Within the scope of this function, we need to do a few things…

> The scope is the space surrounded by an open and closed curly brace. `{ Scope }`
> 

Depending on the current `state` of the flashlight we need to update the background color to either `White` or `Black`. We need to set the title of the button to “Turn on” or “Turn off”. We also need to set the `Button` title color to either `White` or `Black`.

First, we need to check the condition of the flashlight -  whether it is `on` or `off`.  Then we can update the other properties accordingly.

1. Create an `if-else` statement based on the value of the `isOn` Boolean.
2. If `IsOn` is equal to true:
    - Update the background color to the proper color.
    - Set the title of the `powerButton` to the proper statement.
    - Set the title color of the `powerButton` to the proper color.
    - Update the state.
3. Else
    - Update the background color to the proper color.
    - Set the title of the `powerButton` to the proper statement.
    - Set the title color of the `powerButton` to the proper color.
    - Update the state.
- Hint: Finding how to change the text of the button and the textColor of the `powerButton` can be a real challenge. This is how you do it:
    
    ```swift
    powerButton.setTitle("Turn On", for: .normal)
    powerButton.setTitleColor(.white, for: .normal)
    ```
    

Hey! Great work! You’ve just completed your very first app! Why not push yourself with these challenges:

Level 1 - Use a `switch` statement instead of an `if statement`.
Level 2 - Use a `Ternary Operator` instead of an `if statement`.
Level 3 - Use something other than the `IsOn` to track the `state`.
