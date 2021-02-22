GivenStories: story/regression/batch01/ProfileVariables.story

Scenario: Sign Up
Meta:
	@UI
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
Examples:
|userNum|
|User1  |
|User2  |
|User3  |
|User4  |
|User5  |

Scenario: Create a board
Meta:
	@API
Given I am on the main application page
When I send HTTP POST to the relative URL '/boards/?key=${existingProfileKey}&token=${existingProfileToken}&name=${boardName}'
Then the response code is less than '300'

Scenario: Sign In
Meta:
	@UI
Given I am on the main application page
When I login with email '${existingProfileEmail}' and password '${existingProfilePassword}'
When I wait until element located `By.xpath(//div[contains(@title, '${existingProfileName}')])` appears

Scenario: Verify Profile
Meta:
	@UI
Given I am on the main application page
When I click on element located `By.xpath(//div[contains(@title, '${existingProfileName}')])`
When I change context to element located `By.xpath(//section[@data-test-id="header-member-menu-popover"])`
Then number of elements found by `By.xpath(//div[text()="${existingProfileName}"])` is = `1`
Then number of elements found by `By.xpath(//span[text()="${existingProfileEmail}"])` is = `1`
When I reset context

Scenario: Verify some page elements on home page
Meta:
	@UI
When the condition '#{eval("${boardName}"!="")}' is true I do
|step|
|Given I am on a page with the URL 'https://trello.com/vividus_test1/boards'       |
|Then number of elements found by `By.xpath(//div[@title="${boardName}"])` is = `1`|

Scenario: Add visual checks to pages
Meta:
	@UI
Given I am on a page with the URL 'https://trello.com/vividusmodule/<relUrl>'
When I wait until element located `By.xpath(<xpath>)` appears
When I change context to element located `By.xpath(<xpath>)`
When I ${visual-action} baseline with `trello<pageName>`
When I reset context
Examples:
|pageName      |relUrl         |xpath                                                                |
|Highlights    |highlights     |//span[text()="Stay on track and up to date"]/parent::div/parent::div|
|GettingStarted|getting-started|//span[text()="GETTING STARTED"]/parent::div                         |
|Settings      |account        |//span[text()="Team Visibility"]/parent::h3/parent::div/parent::div  |
|Boards        |home           |//h3[text()="Your Team Boards"]                                      |
