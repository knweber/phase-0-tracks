hogwarts = {
	gryffindor: {
		Harry: {
			lastName: "Potter",
			hairColor: "black",
			description: ["messy hair", "lightning bolt scar", "green eyes"]
		},
		Ron: {
			lastName: "Weasley",
			hairColor: "red",
			description: ["lanky", "freckles", "hungry"]
		},
		Hermione: {
			lastName: "Granger",
			hairColor: "brown",
			description: ["kind", "intelligent", "bushy hair"]
		}},
	hufflepuff: {
		Cedric: {
			lastName: "Diggory",
			hairColor: "brown",
			description: ["one of two Hogwarts champions", "dies"]
		}},
	ravenclaw: {
		Luna: {
			lastName: "Lovegood",
			hairColor: "blonde",
			description: ["intelligent", "creative", "good friend"]
		},
		Padma: {
			lastName: "Patil",
			hairColor: "black",
			description: ["has a twin", "went with Ron to Yule Ball"]
		}},
	slytherin: {
		Draco: {
			lastName: "Malfoy",
			hairColor: "blonde",
			description: ["manipulative", "misunderstood", "just a kid"]
		},
		Vincent: {
			lastName: "Crabbe",
			hairColor: "brown",
			description: ["short", "eats cupcakes", "crony of Malfoy"]
		},
		Gregory: {
			lastName: "Goyle",
			hairColor: "brown",
			description: ["tall", "also eats cupcakes", "another crony of Malfoy"]
		}}
}

# accessing second descriptive element of Harry Potter:
puts hogwarts[:gryffindor][:Harry][:description][1]

#accessing hair color of Luna Lovegood:
puts hogwarts[:ravenclaw][:Luna][:hairColor]