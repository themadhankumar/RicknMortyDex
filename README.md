# Flutter Rick and Morty info App 🥒

Flutter app which displays the details of the characters in the series. The first slide shows the information about the developer of the app, Madhan Kumar. It is followed by the characters of the series. Each slide loads when the floatingActionButton is pressed. The name of the character, Live status (Dead/Live), Species and Gender is mentioned. The API has 493 charecters to feed. 

## Installation

Check the official [Flutter Github Page](https://github.com/flutter/flutter) for installation .

## App Preview


<img src="assets/gif2.gif" width="350"> 


<img src="assets/gif1.gif" width="350">

## Remove Developer Details

Developer's data is added in the app as the first resource. To remove that, follow the following methods:

In [app.dart](lib/src/app.dart) file, replace


    void fetchImage() async{
      var response;
      if(counter==0)
      {
        response = await get('https://api.myjson.com/bins/wd8ns');
        counter++;
      }
      else {
            response = await get(
           'https://rickandmortyapi.com/api/character/$counter');
             counter++;
            }
        ...

to 

    void fetchImage() async{
        counter++;
        var response= await get(
          'https://rickandmortyapi.com/api/character/$counter');
    
    
    
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## ️ Found this project useful?
If you found this project useful, then please consider giving it a ⭐️ on Github and sharing it with your friends via social media.

## Resources

[Rick and Morty Api](https://rickandmortyapi.com/)


## Getting Started

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).
