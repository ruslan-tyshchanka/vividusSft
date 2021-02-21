Scenario: Initiate variables for new profiles
When I initialize the SCENARIO,NEXT_BATCHES variable `profileFirstName` with value `#{generate(Cat.name)}`
When I initialize the SCENARIO,NEXT_BATCHES variable `profileLastName` with value `#{generate(Ancient.god)}`
When I initialize the NEXT_BATCHES variable `profileEmail<userNum>` with value `${profileFirstName}_${profileLastName}@gmail.com`
When I initialize the NEXT_BATCHES variable `profileFullName<userNum>` with value `${profileFirstName} ${profileLastName}`
When I initialize the NEXT_BATCHES variable `profilePassword<userNum>` with value `#{generate(Crypto.md5)}`
When I initialize the NEXT_BATCHES variable `existingProfileEmail` with value `gagakel165@edultry.com`
When I initialize the NEXT_BATCHES variable `existingProfileName` with value `Vividus_Test`
When I initialize the NEXT_BATCHES variable `existingProfilePassword` with value `ZkvHhriF792Wp4w`
When I initialize the NEXT_BATCHES variable `existingProfileKey` with value `53c718a34cf91f5a2c2fafee29a2f79d`
When I initialize the NEXT_BATCHES variable `existingProfileToken` with value `495df1bdfacc633d405e41542341618c2033a470260efb57082fca75858ae6c7`
When I initialize the NEXT_BATCHES variable `boardName` with value `#{generate(Cat.breed)}`
Examples:
|userNum|
|User1|
|User2|
|User3|
|User4|
|User5|