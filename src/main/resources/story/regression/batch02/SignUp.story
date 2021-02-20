GivenStories: story/regression/batch01/ProfileVariables.story

Scenario: Sign Up
Given I am on the main application page
When I wait until element located `By.xpath(//a[text()="Sign up"])` appears
When I click on element located `By.xpath(//a[text()="Sign up"])`
Then the page with the URL containing 'signup' is loaded
When I enter `${profileEmail<userNum>}` in field located `By.xpath(//input[@placeholder="Enter email"])`
When I click on element located `By.xpath(//input[@id="signup-submit"])`
When I wait until element located `By.xpath(//span[text()="Sign up"])` appears
When I enter `${profileFullName<userNum>}` in field located `By.xpath(//input[@placeholder="Enter full name"])`
When I enter `${profilePassword<userNum>}` in field located `By.xpath(//input[@placeholder="Create password"])`
When I click on all elements located `By.xpath(//span[text()="Sign up"])`
When I wait until element located `By.xpath(//button[text()="Continue"])` appears
When I enter `${profileTeamName<userNum>}` in field located `By.xpath(//label[text()="Name your team"]/following-sibling::input)`
When I click on element located `By.xpath(//div[text()="Select an option..."])`
When I wait until element located `By.xpath(//*[text()="${profileTeamOption<userNum>}"]` appears
When I click on element located `By.xpath(//*[text()="${profileTeamOption<userNum>}"]`
When I click on all elements located `By.xpath(//button[text()="Continue"])`
When I click on element located `By.xpath(//button[text()="Start without Business Class"])`
When I click on element located `By.xpath(//button[text()="Let's go!"])`
Then the page with the URL containing 'getting-started' is loaded
Examples:
|userNum|
|User1  |
|User2  |
|User3  |
|User4  |
|User5  |




