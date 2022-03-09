import Foundation

public class LearningXCodeShortcuts
{
    public func NewCodeHere()
    {
        // cmd + B = build project
        // cmd + R = run project
        // cmd + U = run testst in project
        // cmd + Shift + K = clen project
        // cmd + . = cancel the build
        // cmd '+' = increase font size, cmd '-' = decrease font size
        
        // Control + Space = bring back auto completion hints
        // cmd + Shift + O = open a file = consider this thing is for a search
        // cmd + Shift + L = open Library
        // Control + cmd + T = open a second window in XCode // use cmd + Shift + O to open different files in that window
        // cmd + T = open a new tab entirely
        // cmd + W = close a tab
        // Option + button on up right = will switch and give you option to open a new tab at the bottom
        // cmd + J = switch focus between windows with arrows and then press Enter
        // Shift + Control + Command + Enter = open a partial window in a full screen, and press that combination again to return you
        // to multiple screens mode
        
        // Control + Command + E = Refactor all occourences // refactoring only in the current file
        // Select variable and then press: Command + Alt + E (And then e to select more variables)
        // (and right arrow to edit and not remove completely ->)- will allow you to refactor and write some code
        // Control + 6 = within class to see all functions, then click on item to navigate to the function
        // Shift + Option + cmd + (back arrow (<-)) = to fold all methods within class(file), to unfold, same combination with right arrow ->
        // cmd + Option + <- = fold a block of code, same with -> to unfold it
        // cmd + Option + [ or ] = to swap lines of code, up or down
        
        // cmd + Option + control + Enter = being in XCode, for example, in StoryBoard, open
        // class of assigned ViewController
        
        var b = 3
        var coolVariable = 5
        coolVariable += 6
        
        print(coolVariable)
    }
    
    private var _lessonName:String
    public init (var lessonName:String)
    {
        _lessonName = lessonName
    }
    
    public func ShowLesson()
    {
        print(_lessonName)
        NewCodeHere()
    }
    
    // Use this to simply write code and test how you have memorized it
    public func ShowMemorizing()
    {
        
    }
}
