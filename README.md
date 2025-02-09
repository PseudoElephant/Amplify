# Playing Amplify
---

To play this mod you will first need to install lovely and steammodded. You can follow the steamodded install guide for more information: [Installing Steamodded](https://github.com/Steamodded/smods/wiki)

Once done, you can download the latest build and add the contents of the zip file to your 'Mods' folder. Should look something like: 

📁 Mods
|  📁 Amplify <-- Add the mod folder here (_not_ the zip)
|  📁 lovely
|  📁 smods

After that, you should be able to run Balatro and play the game with the mod installed. Hope you enjoy it! 

# Development
---

If you are looking into running the source code, there are dev-tools available with hopes of speeding up the development process. Below is a quick rundown for them.

### MacOS Development Tools - Dependencies

If you are looking into running the development tools for *MacOS* you will need to make sure you have 'make' and 'jq' installed and available on the terminal.

We will not go into detail on how to install these, but in most cases `brew install <tool-name>` should be sufficient.

### Using the Project's Development Tools
To use any of the tools below you need to be in the root project folder of the project.

#### Run
Description: This will install the current version of the source code into Balatro and run a game instance.

MacOS: `make run`
Windows: `./build.bat run` note: you might have to change the STEAM_LIBRARY variable at the top. This will be fixed later.

#### Extract Source Code
Description: This will extract Balatro's source code and add it as `/source` into the parent directory.

MacOS: `make extract-source`
Windows: no command for it

# Special Thanks 
---

infinite thanks to the following people and repositories for helping us get the project to where it is today. 

### Repositories 
When we started Amplify we had no idea how to make a mod for Balatro, so we spent a lot of the time reading the code of existing mods. Special shout-out to the following repositories who helped us get past that akward stage where you aren't really sure what is happening. 
1. [Pokermon](https://github.com/InertSteak/Pokermon)
2. [Reverie](https://github.com/dvrp0/reverie)
3. [Steammodded Wiki](https://github.com/Steamodded/smods/wiki)

### People 
Massive thanks on everyone on this list, you helped push the mod forward, either with your kind words of encouragement or by helping us directly. Thank you so much! <3
  - Matt - Dev
  - Stephan - Dev
  - Alessandro - Dev, Artist
  - Katrina - Support 
  - Chemi - Tester
  - Divyesh - Tester
