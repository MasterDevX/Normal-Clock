# Normal-Clock
Finally a **normal** clock with round numbers! 1 day = 10 hours, 1 hour = 100 minutes, 1 minute = 100 seconds!

## Why?
Have you ever wondered why 1 hour has exactly 60 minutes and 1 minute has exactly 60 seconds? I googled it and here is some info I've found:
>The division of the hour into 60 minutes and of the minute into 60 seconds comes from the Babylonians who used a sexagesimal (counting in 60s) system for mathematics and astronomy. They derived their number system from the Sumerians who were using it as early as 3500 BC. ([source](https://www.theguardian.com/notesandqueries/query/0,5753,-1487,00.html))

And beacuse in 21th cenutry we are no longer using a sexagesimal counting system, I decided to write a **normal** clock, where it will be a much easier to do different time calculations. Just imagine, you saw ```7:95:80``` on your clock and can you immediately say that ```79.58%``` of today's day currently passed! Or you can easily say, that current **normal** hour is ```95%``` done. Isn't it great? I'm sure, it is!

## Dependencies
- bash
- bc
- figlet (optional, used for decorated output)

## Usage
To simply diplay current **normal** time, just run the script:
```
$ ./Normal-Clock.sh
7 : 95 : 80
```
If you want to get decorated output, just pipe it to `figlet` (play with the argument of the `-f` key to use different fonts):
```
$ ./Normal-Clock.sh | figlet -f big
 ______        ___  _____        ___   ___  
|____  |  _   / _ \| ____|  _   / _ \ / _ \ 
    / /  (_) | (_) | |__   (_) | (_) | | | |
   / /        \__, |___ \       > _ <| | | |
  / /     _     / / ___) |  _  | (_) | |_| |
 /_/     (_)   /_/ |____/  (_)  \___/ \___/ 
```
You can also combine it with `watch`, so **normal** time will be updated and displayed in real time:
```
$ watch -t -n 0.1 "./Normal-Clock.sh | figlet -f big"
 ______        ___  _____        ___   ___  
|____  |  _   / _ \| ____|  _   / _ \ / _ \ 
    / /  (_) | (_) | |__   (_) | (_) | | | |
   / /        \__, |___ \       > _ <| | | |
  / /     _     / / ___) |  _  | (_) | |_| |
 /_/     (_)   /_/ |____/  (_)  \___/ \___/ 
```
