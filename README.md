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