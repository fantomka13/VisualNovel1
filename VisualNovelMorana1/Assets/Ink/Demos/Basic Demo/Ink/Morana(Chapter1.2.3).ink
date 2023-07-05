//Variables
//main
VAR Fight_Skill = 0
VAR Knoweledge = 0
VAR Mushroom = 0
VAR VictorMonster = 0
VAR VictorHuman = 0
//Chapter1
VAR Vladimir = 0
VAR VladimirLife = true
VAR Light = 0
VAR Maze = 0
//Chapter 1.1 (introdaction)


->Chapter1
=== Chapter1 ===
This happened five years before the main events. 
Back then, I couldn't foresee what awaited me and the terrible truth about myself that I would have to uncover, the choices I would have to make.
It all started in a small shelter where many children lost their parents during the war, whether they went missing or were killed.
The morning turned out to be surprisingly fortunate. We were fed potatoes, but while playing with our food, we were occasionally hit on the forehead with a spoon and then sent to play outside.
Suddenly,
Vladimir shouted, "Hey, catch!" 
  + catch
  U look at it closer
~Vladimir = Vladimir + 1
-> Apple
  + evade
  U look at something near your feet.
~Vladimir = Vladimir - 1
-> Apple
==  Apple ==
It turned out to be an apple that he had picked from the nearest tree.It had just ripened and was slightly sour but delicious.
Overall, I liked Vladimir more than the other boys. The others often whined and cried, immediately running to complain to the caregiver, 
but Vladimir wasn't afraid of getting into trouble. How many times were we left without dinner, but we were happy anyway.
And we are, the most active ones, were assigned to go to the forest to pick mushrooms so that we wouldn't get in the way.
* Go to the forest.
->ForestMushroom
== ForestMushroom ==
#BackgroundForestMashroom
#ForestNoice
I don't know why but the forest is truly an amazing place; I would say it feels like... 
home.
Vladimir "Viktor, do you think there are wolves here?
*Of course, there are wolves here
Vladimir knew i was joking but looked around just in case.
->RunningAway
*Are you scared of them?
~Vladimir = Vladimir - 1
Vladimir smiled" Hah do u really think i would be scared of puppies.
->RunningAway
 *No, if they were here, they would have already eaten someone as loud as you,
Vladimir" No, They probably noticed your horrible smell and run away.
~Vladimir = Vladimir + 1
  **Show a tongue.
->RunningAway
  **Through the stick at him

->RunningAway

==RunningAway
Vladimir"Well, then, what about running away from here and going to the big settlemen ? Im sure the life is going to be more interesting there than wandering between these three houses. 
Vladimir"I dream of becoming a blacksmith, and there's no opportunity to forge anything here. Only the elderly spend their last years here. 
  *We can try in a couple of years? 
  Victor"When we grow up.
->NotTryRunAway
  *what's the point? 
They won't even hire us to clean the barn, and you're talking about actual job.
->NotTryRunAway
  *Yee lets do it tomorrow.
  Vladimir" I dont know about tommorow, i promised one grandma to help her to find her dog this week.
->TryRunAway

==TryRunAway
  *What happened with a dog?
 Vladimir" A couple days ago the dog disappeared. He never run away before and grandma worries that something could have happened.
 ->MushroomCollection
  
  *Forget about it.
  Vladimir" Dont say such stupid staff. That grandma doesnt have anyone to help her.
  ->TryRunAway
  
==NotTryRunAway
Vladimir"Why are you so boring today.I just wanted to dream.
->MushroomCollection

//Create a mini game for collecting mashrooms
=== MushroomCollection ===
So, after our pointless conversation, we arrived at the mushroom clearing.


While I was collecting mushrooms, I heard Vladimir scream.
->CaveEntrance

//Chapter1.2 (Cave)
=== CaveEntrance ===
#BackgroundCaveEntrance
It turned out to be a scream of joy.
He was standing in front of the entrance to a cave, which wasn't so easy to notice behind the bushes. It was the first time I saw it, although we had walked here several times
before. Although, perhaps we just passed by without paying attention. In any case, it was clear from
Vladimir's face that he was going to enter it.
Vladimir"Well, are you ready for an adventure?
+ Yes,of course.
"Whoever is last has to clean the room!" I shouted, and I was the first to enter the cave.
->InsideCave
Valera ran after me
+ May be its better to go there another time.
I just don't want to miss lunch while we wander around.
Vladimir"What if no one has been in this cave before us, or even better, what if
treasures are buried here, like in that book we were read?"
->InsideCave

==InsideCave==
#BackgroundCaveInside
The two of us entered the cave. Inside, it was magical, covered in moss and other plants I didn't know.
But the further we went, the less light penetrated until we found ourselves in complete darkness.
Holding onto the wall, we continued moving forward, listening to each other's footsteps and trying not to get lost.
Suddenly, a flickering light appeared in the distance.
->LightCave
=LightCave
+Look at the light
~ Light=Light+1
The light was weird i couldnt take away my eyes from it
{ Light == 3:
		-> CaveMaze
	- else:
		-> LightCave
	}

//Maze game starts
==CaveMaze==
I stared at it and didn't notice that Vladimir wasn't
next to me anymore.
->ShoutVladimir
=ShoutVladimir
  + Shout for Vladimir.
  After the fourth shout, my voice became hoarse, and I couldn't shout anymore.
->ShoutVladimir
  + Go look for him.
->InsideMaze
=InsideMaze
I was walking for a while until noticed fork in the road.I knew i coulod get lost but the idea of not finding Vladimir terrified me.
Choosing a way to go
->Maze1

==Maze1
~ Maze=Maze+1
{ Maze <10:
Maze1
+Turning left
->Maze3
+Turning right
->Maze2
+Climb up
->Maze4 
	- else:
	     
		-> MazeExit
	}
==Maze2
~ Maze=Maze+1
{ Maze <10:
Maze2
+Turning left
->Maze1
+Climb down
->Maze2
+Climb up
->Maze5
	- else:
	     
		-> MazeExit
	}
==Maze3
~ Maze=Maze+1
{ Maze <10:
Maze3
+Climb up
->Maze16
+Going right
->Maze1
	- else:
	     
		-> MazeExit
	}
==Maze4
Maze4
~ Maze=Maze+1
{ Maze <10:
+Turning left
->Maze16
+Turning right
->Maze5
+Climb up
->Maze9
+Climb down
->Maze1
	- else:
	     
		-> MazeExit
	}
==Maze5
~ Maze=Maze+1
{ Maze <10:
Maze5
+Turning left
->Maze4
+climb up
->Maze2
	- else:
	     
		-> MazeExit
	}
==Maze6
~ Maze=Maze+1
{ Maze <10:
Maze6
+Turning left
->Maze7
+Climb down
->Maze5
	- else:
	     
		-> MazeExit
	}
==Maze7
~ Maze=Maze+1
{ Maze <10:
Maze7
+Turning right
->Maze6
+Climb up
->Maze8
	- else:
	     
		-> MazeExit
	}
==Maze8
~ Maze=Maze+1
{ Maze <10:
Maze8
+climb up
->Maze12
+climb down
->Maze7
+turning left
->Maze9
	- else:
	     
		-> MazeExit
	}
==Maze9
~ Maze=Maze+1
{ Maze <10:
Maze9
+Turning right
->Maze8
+climb up
->Maze13
+Turning left
->Maze10
+Climb down
->Maze4
	- else:
	     
		-> MazeExit
	}
==Maze10
~ Maze=Maze+1
{ Maze <10:
Maze10
+Turning right
->Maze9
+Climb down
->MazeSecretRoom
	- else:
	     
		-> MazeExit
	}
==Maze11
~ Maze=Maze+1
{ Maze <10:
Maze11
+Turning left
->Maze13
+Turning right
->Maze12
	- else:
	     
		-> MazeExit
	}
==Maze12
~ Maze=Maze+1
{ Maze <10:
Maze12
+Climb up
->Maze15
+Turning right
->Maze11
+Climb down
->Maze8
	- else:
	     
		-> MazeExit
	}
==Maze13
~ Maze=Maze+1
{ Maze <10:
Maze13
+Turning right
->Maze11
+climb up
->Maze14
+Climb down
->Maze9
	- else:
	     
		-> MazeExit
	}
==Maze14
~ Maze=Maze+1
{ Maze <10:
Maze14
+Turning left
->MazeExit
+Climb down
->Maze13
+Turning right
->Maze15
	- else:
	     
		-> MazeExit
	}
==Maze15
~ Maze=Maze+1
{ Maze <10:
Maze15
+Turning left
->Maze14
+Turning Back
->Maze12
+Going streight
->Maze15
	- else:
	     
		-> MazeExit
	}
==Maze16
~ Maze=Maze+1
{ Maze <10:
Maze16
+Turning left
->Maze16
+Turning right
->Maze4
+Climb up
->MazeSecretRoom
	- else:
	     
		-> MazeExit
	}

==MazeSecretRoom
The walls had a scratched map of the cave; surely someone had managed to escape from here.

*Examine the map.
#MapCave
->MazeSecretRoom
*Examine the bones
The bones were new and probably belonged to dog. It meant that any predator left this place not a long time ago.
~ Maze=Maze+1
{ Maze <10:
+Turning right
->Maze10
+Climb down
->Maze16
	- else:
	     
		-> MazeExit
	}
	
	// Monster fight
==MazeExit==
Continuing on my path,I finaly heard something.
I heard a menacing hiss, and before me unfolded a horrifying scene. At that moment, I regretted that agreed to vladimirs idea to come here.
I intended to run back instantly, but the creature standing ahead noticed me and started approaching.
*Stand still
I was too scared to even move my finger.The creature turned his head towords me.
Creature"DO NOT MOVE!
The creature nput his clowes on Vladimirs neck
->SaveVladimir
*Run away
I tried to turn around but the moment i moved the creature shouted at me.
Dont move or i would rippe YOU apart
->SaveVladimir

==SaveVladimir
The creature was getting his mouth closer and closer. Vladimir could hold himself anymore and started screaming.
*Stand and watch.
He started eating him slowly
  **Stand and watch
Vladimir stopted screaming. Because of all blood i couldnt see his face.
   ***Stand and watched
The creature finished eating and came closer
Good boy. Now i will show you the exit. Next time when u will come here dont forget to bring your friends.
Victor"Why u didnt kill me.
Creature laughed
Creature"Hah so you dont know,then its not my job to tell u but one day u will understand 
->ExitingCave
   ***Run
I tried to run but it was alredy too late. Monster already finished with Vladimir and jumped on top of me bringing his claws.
Creature"Stupid boy what did i tald you.
   **** Start crying
Creature looked at me with disgust and stabed.
I fell into darkness.
->VictorDied
   **** Try to fight
I tried to hit him with a stoun in my hand but it didnt work. He just lought at my face.
Creature" For now i will forgive you as you are just a child but if we meet at the future leasten to me or would end up on the another side.
Now im goimg to show you the exit.
->ExitingCave
  **Run
I started running as fast as i could while the creature was busy eating my friend even if i wanted to help i couldnt thats how im going to confort myself for the next years, his scream is going to follow me in my nightmares
->ExitingCave

//First Option
*Run
I started runniing as fast as i could but the creature noticed me immediately and attacked.
He was pushing me to the ground i could feel how his clowes goes deeper into mu body.
->DmitriyHelp

->DmitriyNotHelp

==DmitriyHelp
I was ready to die 
When suddenly i saw how dmitriy try to attack monster from behind.
->ExitingCave

==DmitriyNotHelp
I was looking around in hope that Dmitriy is going to save me but he disappeared. He left me alone with this creature.May be i deserve it.


*Attempt to help.
->END
==ExitingCave





->END
=== VictorDied ===
    -> END
    
    
    
    
    
