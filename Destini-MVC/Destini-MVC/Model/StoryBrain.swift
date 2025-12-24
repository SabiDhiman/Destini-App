

struct StoryBrain {
    let stories = [
        Story(title: "you see a fork on the road",
                          choice1: "take left",
                          choice2: "take right"),
        Story(title: "you see a tiger",
                          choice1: "shout for help",
                          choice2: "play dead"),
        Story(title: "you find a treasure chest",
                          choice1: "open it",
                          choice2: "check for traps")
    ]
    
    var storyNumber = 0
    
    mutating func getNextStory(_ choice: String) -> Int {
        if choice == self.stories[storyNumber].choice1 {
            storyNumber = 1
            return storyNumber
        } else {
            storyNumber = 2
            return storyNumber
        }
    }
    
    func getStory() -> Story {
       return stories[storyNumber]
    }
}
