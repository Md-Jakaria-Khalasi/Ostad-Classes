//zoo management system


//start abstract class
import 'dart:ffi';

abstract class Animal {
  String _name;
  Animal(this._name);

  makesound();
  String getname()
  {
    return _name;
  }
}

//End abstruct class

//start inhertinace
//Lion started
class Lion extends Animal {
  double _maneSize;
  Lion(this._maneSize, super._name);

setManeSize(double manevalue)
{
  if(manevalue< 0){
    throw Exception("Error : Mane size cannot be Negative");
  }
  else if(manevalue > 100){
    throw Exception("Error: Mane size Cannot geter then 100");
  }
  else{
    _maneSize = manevalue;
  }
}
double getManeSize()
{
  return _maneSize;
}

 makesound()
 {
   print('Lion is Roaring');
 }
}
//lion ends

//Elephant start
class Elephant extends Animal{
  double _trunkLength;
  Elephant(this._trunkLength, super._name);

  setTrunkLength(double Length)
  {
    if(Length< 0)
      {
        throw Exception("Error: The Trunk Length cannot less then 0");
      }
    else if(Length>100)
      {
        throw Exception("Error : The Trunk cannot be over then 100");
      }
    else{
    _trunkLength = Length ;
    }
  }
  double getTrunkLenfth()
  {
    return _trunkLength;
  }

  makesound()
  {
    print(' Elephant is Trumpeting');
  }

}
//Elephant close


//Parrot start
class Parrot extends Animal {
  int _vocabularySize;
  Parrot(this._vocabularySize, super._name);

  setVocabSize( int Vocab)
  {
    if(Vocab< 0)
      {
        throw Exception( "Error : Vocabullary Cannot Be zero");
      }
    else if(Vocab>10000)
      {
        throw Exception("Error : Vocabullary cannot be more then 10K");
      }
    else{
      _vocabularySize = Vocab;
    }
  }
  int getVocab()
  {
    return _vocabularySize;
  }
  makesound()
  {
    print('Parrot is Squawking');
  }

}
//parrot end

//end All Classes and Inheratatnce


void main()
{
  List<Animal>zoo = [];

  zoo.add(Lion(20.6, 'Lion1'));
  zoo.add(Elephant(50.3, 'Elephant1'));
  zoo.add(Parrot(500, 'Parrot1'));

  for(var Animal in zoo)
    {
      print("Animal : ${Animal.getname()}");
      if(Animal is Lion)
        {
          try{
            Animal.setManeSize(-10);
          }
          catch(e){
            print(e);
          }
          print('Mane Size : ${Animal.getManeSize()} ft ');
        }
      else if(Animal is Elephant)
        {
          try{
            Animal.setTrunkLength(-20.0);
          }
          catch(e){
            print(e);
          }
          print('Trunk Length : ${Animal.getTrunkLenfth()} ft ');
        }
      else if(Animal is Parrot)
        {
          try{
            Animal.setVocabSize(-2);
          }
          catch(e){
            print(e);
          }

          print('Vocabullary Size : ${Animal.getVocab()} Words');
        }
      Animal.makesound();
      print(' ');
    }

}

