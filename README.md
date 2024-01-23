### Stack
Ruby

### Libs used
- uri
- net/http
- json

### Problem
- We have an intial URL https://www.letsrevolutionizetesting.com/challenge
- the request has to be json so we send request on https://www.letsrevolutionizetesting.com/challenge.json
- it returns a follow url and message body
```
{
"follow": "https://www.letsrevolutionizetesting.com/challenge?id=756775492",
"message": "This is not the end"
}
```
- sending request the to follow as us to add json
- sending request with .json return another follow with different id and keeps doing the same thing

### solution
- sending a first .json request
- getting a URL back
- if it has a follow urls
- add .json on follow url
- send request to the new .json url
- repeat the process until we reach the end


### Output
https://www.letsrevolutionizetesting.com/challenge.json?id=756775492
https://www.letsrevolutionizetesting.com/challenge.json?id=995287801
https://www.letsrevolutionizetesting.com/challenge.json?id=572744636
https://www.letsrevolutionizetesting.com/challenge.json?id=461736456
https://www.letsrevolutionizetesting.com/challenge.json?id=47526821
https://www.letsrevolutionizetesting.com/challenge.json?id=80296008
https://www.letsrevolutionizetesting.com/challenge.json?id=567724423
https://www.letsrevolutionizetesting.com/challenge.json?id=32758300
https://www.letsrevolutionizetesting.com/challenge.json?id=580396716
https://www.letsrevolutionizetesting.com/challenge.json?id=479167105
https://www.letsrevolutionizetesting.com/challenge.json?id=949971757
https://www.letsrevolutionizetesting.com/challenge.json?id=861310992
https://www.letsrevolutionizetesting.com/challenge.json?id=937651877
https://www.letsrevolutionizetesting.com/challenge.json?id=354271637
https://www.letsrevolutionizetesting.com/challenge.json?id=705630460
https://www.letsrevolutionizetesting.com/challenge.json?id=606216317
https://www.letsrevolutionizetesting.com/challenge.json?id=65584552
https://www.letsrevolutionizetesting.com/challenge.json?id=831657532
https://www.letsrevolutionizetesting.com/challenge.json?id=256000467
https://www.letsrevolutionizetesting.com/challenge.json?id=161184211
https://www.letsrevolutionizetesting.com/challenge.json?id=208550157
https://www.letsrevolutionizetesting.com/challenge.json?id=475613963
https://www.letsrevolutionizetesting.com/challenge.json?id=37577102
https://www.letsrevolutionizetesting.com/challenge.json?id=724114586
https://www.letsrevolutionizetesting.com/challenge.json?id=556333858
https://www.letsrevolutionizetesting.com/challenge.json?id=115660865
https://www.letsrevolutionizetesting.com/challenge.json?id=716571928
https://www.letsrevolutionizetesting.com/challenge.json?id=596834351
https://www.letsrevolutionizetesting.com/challenge.json?id=630823541
https://www.letsrevolutionizetesting.com/challenge.json?id=652202071
https://www.letsrevolutionizetesting.com/challenge.json?id=300716465
https://www.letsrevolutionizetesting.com/challenge.json?id=155015675
https://www.letsrevolutionizetesting.com/challenge.json?id=135205298
https://www.letsrevolutionizetesting.com/challenge.json?id=897873681
https://www.letsrevolutionizetesting.com/challenge.json?id=967454426
https://www.letsrevolutionizetesting.com/challenge.json?id=71656714
https://www.letsrevolutionizetesting.com/challenge.json?id=142868048
https://www.letsrevolutionizetesting.com/challenge.json?id=930312428
https://www.letsrevolutionizetesting.com/challenge.json?id=197119602
https://www.letsrevolutionizetesting.com/challenge.json?id=617265884
https://www.letsrevolutionizetesting.com/challenge.json?id=970138205
https://www.letsrevolutionizetesting.com/challenge.json?id=201907239
https://www.letsrevolutionizetesting.com/challenge.json?id=686630567
https://www.letsrevolutionizetesting.com/challenge.json?id=121457796
https://www.letsrevolutionizetesting.com/challenge.json?id=488888020
https://www.letsrevolutionizetesting.com/challenge.json?id=895507276
https://www.letsrevolutionizetesting.com/challenge.json?id=173103113
https://www.letsrevolutionizetesting.com/challenge.json?id=803136089
https://www.letsrevolutionizetesting.com/challenge.json?id=480810857
https://www.letsrevolutionizetesting.com/challenge.json?id=553833934
https://www.letsrevolutionizetesting.com/challenge.json?id=801238070
https://www.letsrevolutionizetesting.com/challenge.json?id=477183693
https://www.letsrevolutionizetesting.com/challenge.json?id=278432362
https://www.letsrevolutionizetesting.com/challenge.json?id=75367184
https://www.letsrevolutionizetesting.com/challenge.json?id=653620253
https://www.letsrevolutionizetesting.com/challenge.json?id=620822263
https://www.letsrevolutionizetesting.com/challenge.json?id=368201548
https://www.letsrevolutionizetesting.com/challenge.json?id=202982190
https://www.letsrevolutionizetesting.com/challenge.json?id=449699507
https://www.letsrevolutionizetesting.com/challenge.json?id=469802573
https://www.letsrevolutionizetesting.com/challenge.json?id=100196142
https://www.letsrevolutionizetesting.com/challenge.json?id=532212727
https://www.letsrevolutionizetesting.com/challenge.json?id=180103962
https://www.letsrevolutionizetesting.com/challenge.json?id=569247979
https://www.letsrevolutionizetesting.com/challenge.json?id=513897475
https://www.letsrevolutionizetesting.com/challenge.json?id=911918452
https://www.letsrevolutionizetesting.com/challenge.json?id=515668116
https://www.letsrevolutionizetesting.com/challenge.json?id=400102864
https://www.letsrevolutionizetesting.com/challenge.json?id=598053525
https://www.letsrevolutionizetesting.com/challenge.json?id=94928201
https://www.letsrevolutionizetesting.com/challenge.json?id=765856838
https://www.letsrevolutionizetesting.com/challenge.json?id=529200894
https://www.letsrevolutionizetesting.com/challenge.json?id=300886136
https://www.letsrevolutionizetesting.com/challenge.json?id=307895327
https://www.letsrevolutionizetesting.com/challenge.json?id=530146612
https://www.letsrevolutionizetesting.com/challenge.json?id=599920573
https://www.letsrevolutionizetesting.com/challenge.json?id=135743876
https://www.letsrevolutionizetesting.com/challenge.json?id=454110831
https://www.letsrevolutionizetesting.com/challenge.json?id=995478629
https://www.letsrevolutionizetesting.com/challenge.json?id=582208015
https://www.letsrevolutionizetesting.com/challenge.json?id=811715985
https://www.letsrevolutionizetesting.com/challenge.json?id=650890482
https://www.letsrevolutionizetesting.com/challenge.json?id=822042114
https://www.letsrevolutionizetesting.com/challenge.json?id=582600663
https://www.letsrevolutionizetesting.com/challenge.json?id=314974329
https://www.letsrevolutionizetesting.com/challenge.json?id=169280871
https://www.letsrevolutionizetesting.com/challenge.json?id=5136418
https://www.letsrevolutionizetesting.com/challenge.json?id=329594904
https://www.letsrevolutionizetesting.com/challenge.json?id=183208047
https://www.letsrevolutionizetesting.com/challenge.json?id=627597879
https://www.letsrevolutionizetesting.com/challenge.json?id=50576458
https://www.letsrevolutionizetesting.com/challenge.json?id=302722799
https://www.letsrevolutionizetesting.com/challenge.json?id=936408135
https://www.letsrevolutionizetesting.com/challenge.json?id=254043118
https://www.letsrevolutionizetesting.com/challenge.json?id=702496729
https://www.letsrevolutionizetesting.com/challenge.json?id=94985935
https://www.letsrevolutionizetesting.com/challenge.json?id=951438732
https://www.letsrevolutionizetesting.com/challenge.json?id=903777032
https://www.letsrevolutionizetesting.com/challenge.json?id=503047199
{"message"=>"Congratulations! You've reached the end! Please add the code (or a link to a repo with the code in it) you used to solve it to your application. We'll be in touch shortly!"}
