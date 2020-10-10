USE `heroku_dd2cb150d033ed5`;

INSERT INTO heroku_dd2cb150d033ed5.weather (weatherCondition, dayDescription, nightDescription)
VALUES
    ("clear sky", "The sun shines bright in the sky above you, with nary a cloud in sight.", "The moon shines bright above you in the star-splashed night sky."),
    ("few clouds", "The sun is shining high in the sky, with pretty white clouds wafting along in the breeze.", "The moon shines down on you from a starry sky with a few dark shadows of clouds."),
    ("scattered clouds", "The sky is gray with clouds, spread evenly across the sky like a dour blanket.", "The night is dark, with clouds covering the moon and stars."),
    ("broken clouds", "The sky is patchy with clouds and blue, shards of light shining through briefly only to be obscured by clouds.", "The night sky shows patches of shadow and patches of starry brightness."),
    ("shower rain", "Rain spatters down from a cloudy sky, but bits of blue show here and there.", "Rain mists down from the dark night sky."),
    ("rain", "Rain pours down from a sky uniformly covered by gray clouds.", "Rain pours down from the dark sky."),
    ("thunderstorm", "Rain is sheeting down from ominously dark clouds lit by slashes of lightning. Thunder booms from time to time.", "Rain sheets down as the dark night is pierced by shards of lightning and the booming crack of thunder."),
    ("snow", "Snow drifts down from the white sky.", "Snow drifts down in the darkness with a soft patter."),
    ("mist", "The landscape is partially obscured by a damp mist.", "Wavering moonlight filters down through the damp mist.");


INSERT INTO actions (actionName, commandBriefDescription, commandLongDescription, waysToCall, exampleCall, exampleResult)
VALUES
("get", "Pick up an item", "When you type a get command word followed by an item in your location that is free to pick up, you will add it to your inventory. If the item isn't free to pick up, you will get a result of 'You can't pick that up!'", "get, g, pick up, grab", "You pick up a ", " picks up a "),
("look", "You look around you.", "When you type a look command word with nothing after it, you will look around your location, seeing the description, possible exits, and items nearby.", "You look around.", "look, l, look around", " glances around."),
("drop", "You drop an item", "When you type a drop command word followed by an item in your inventory, you will drop it into your location.", "drop, d, discard", "You drop a ", " drops a "),
("inventory", "You check your inventory", "When you type an inventory command, you will recieve a list of all items in your inventory", "inventory, i, check inventory", "inventory", "You have 3 mushrooms, 1 branch, and a frog."),
("move", "You move through an exit", "When you type a move command word followed by an available exit from your location, you will move in that direction.", "move, m, go, walk", "You go ", " goes "),
("speak", "You speak.", "When you type a speak command word followed by other text, your other text will be spoken aloud to your location. For yelling, see yell.", "speak, s, talk, t, chat, c, say", "say Hello!", "character: Hello!"),
("wear", "You put on a wearable item.", "When you type a wear command followed by a valid item in your inventory, you will put it on if you're not already wearing something there.", "wear, put on, don", "wear green socks", "You put on green socks."),
("remove", "You take off an item you are wearing.", "When you type a remove command followed by an item you are wearing, you will take it off and add it to your inventory.", "take off, remove, doff", "remove green socks", "You take off green socks."),
("stats", "You call up your character stats.", "When you type stats, you will see a list of your stats and their values.", "stats", Null, Null),
("juggle", "You juggle something.", "When you type juggle, followed by a number, followed by an appropriate item, you will attempt to juggle that number of those items if you have them.", "juggle", Null, Null);

INSERT INTO locations
    (id,locationName, dayDescription, nightDescription, exitN, exitE, exitS, exitW)
VALUES
    (1101, "Pumpkin Patch Center", "You are at the heart of a pumpkin patch. Though on the vine, and uncarved, the pumpkins you see out of the corners of your vision seem to be leering evilly at you, like jack-o-lanterns.", Null, 1102, 1103, 1109, 1105),
    (1102, "Pumpkin Patch North", "The pumpkin patch stretches to the east, west and south of you. The pumpkins surrounding you are craggy and crooked, and the longer you look at them, the creepier they seem.", Null, 1110, 1106, 1101, 1107),
    (1103, "Pumpkin Patch East", "The pumpkin patch stretches to the north, west, and south of you. The pumpkins around you a unnervingly creepy. Uncarverd pumpkins shouldn't be creepy, should they?", Null, 1106, Null, 1109, 1101),
    (1104, "Pumpkin Patch South", "The pumpkin patch stretches to the east, west, and north of you. The patch seems dark somehow even in the day. Shadows seem to take the shape of creatures watching you.", Null, Null, 1109, Null, 1108),
    (1105, "Pumpkin Patch West", "The pumpkin patch stretches to the north, east, and south of you. The pumpkins clustered around you seem to be pressing closer, making what should be an open field feel alarmingly claustrophobic.", Null, 1107, 1101, 1108, Null),
    (1106, "Pumpkin Patch Northeast", "The pumpkin patch surrounds you to the west and south. The pumpkins here give of an ineffible feeling of sadness, and you feel tears prick the corners of your eyes.", Null, Null, Null, 1103, 1102),
    (1107, "Pumpkin Patch Northwest", "The pumpkin patch surrounds you to the east and south, and the path to the Haunted Forest beckons toward the north. The pumpkin patch radiates a sinister feeling, and the path north feels equally foreboding. You feel trapped.", Null, 1112, 1102, 1105, Null),
    (1109, "Pumpkin Patch Entrance", "The pumpkin patch surrounds you to the north and west. and you can see the inn to the south. The pumpkins closest to the inn look plump and cheery, but as the patch grows more dense to the northwest, it seems to emanate menace and warning.", Null, 1101, 1103, 1011, 1104),
    (1108, "Pumpkin Patch Southwest", "The pumpkin patch surrounds you to the north and east, leaving you corned against a tall fence backed by dark and impenetrable forest. The patch seems darker than you think the day should be, and what should be ordinary pumpkins are radiating ominous threat. Your pulse starts to quicken as your instincts pick up on predatory intent.", Null, 1105, 1104, Null, Null);


INSERT INTO quests (questTitle, dialogue, hints, XPorItem, reward, completionItem, questToken)
VALUES ("Find my missing sock.", "I'm pretty sure I put it in the washing machine, but it didn't come out of the dryer. Can you help me?;Oh thank you! I'm so glad. I live at 4532 Little Bittle Lane, out east of the inn.", "I suppose you could my closet, but I already looked twice...", True, 500, 101, Null);


INSERT INTO items (itemName, `description`, category)
VALUES
("branch", "a dry, brown branch", "nature"),
("mushroom", "a small, white mushroom with a round top", "nature"),
("sock", "a lone argyle sock, blue and yellow", "household"),
("pumpkin pie", "a whole pumpkin pie! It smells like autumn", "food"),
("collar", "A red collar with a silver buckle. It has pictures of fish on it.", "clothing"),
("leather gloves", "nice leather gloves. They look protective.", "armor");

UPDATE items SET HPeffect = 10 WHERE itemName = "leather gloves";

INSERT INTO items (itemName, `description`, category, neckSlot, DEXeffect)
VALUES ("collar", "a red collar with a silver buckle. It has pictures of fish on it.", "clothing", 1, 2);


INSERT INTO players (email, `password`, characterName, isLiving, isNPC, WIS, DEX, STR, HP, race, class, inventory, backstory, description, headSlot, neckSlot, torsoSlot, rightHandSlot, leftHandSlot, legsSlot, feetSlot, ringSlot, handsSlot, twoHands)
VALUES
    ("moop@mop.com", "verysecure", "Felix", True, True, 10, 10, 10, 50, "Cat", "Rogue", True, "Felix has lived in the inn since he showed up as a young cat. He came in one morning when the innkeeper opened the door, and never left.", "A black and white cat with short hair, and a slight notch in their right ear", 0, 121, 0, 0, 0, 0, 0, 0, 0, 0);



INSERT INTO inventories (locator_id, itemId, quantity, currentlyEquipped)
VALUES ("P1", 121, 1, 1),
("L11", 81, 1, 0),
("L1", 91, 2, 0),	 
("L1", 81, 1, 0),
("P11", 81, 1, 1),
("P11", 111, 4, 0),
("P11", 91, 1, 0);