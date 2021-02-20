Scenario: Initiate variables for new profiles
When I initialize the SCENARIO,NEXT_BATCHES variable `profileFirstName` with value `#{generate(Cat.name)}`
When I initialize the SCENARIO,NEXT_BATCHES variable `profileLastName` with value `#{generate(Ancient.god)}`
When I initialize the NEXT_BATCHES variable `profileEmail<userNum>` with value `${profileFirstName}_${profileLastName}@gmail.com`
When I initialize the NEXT_BATCHES variable `profileFullName<userNum>` with value `${profileFirstName} ${profileLastName}`
When I initialize the NEXT_BATCHES variable `profilePassword<userNum>` with value `#{generate(Crypto.md5)}`
When I initialize the NEXT_BATCHES variable `profileTeamName<userNum>` with value `#{generate(Cat.breed)}`
When I initialize the NEXT_BATCHES variable `profileTeamOption<userNum>` with value `#{generate(regexify 'Human Resources|Marketing|Engineering-IT|Education|Operations')}`
Examples:
|userNum|
|User1|
|User2|
|User3|
|User4|
|User5|