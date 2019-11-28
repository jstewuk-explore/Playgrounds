import Cocoa

class Animal {}
class Cat: Animal {}

let animal: Animal = Cat()
// let cat: Cat = Animal()

/// Cat is a subtype of Animal

/// Subtypes can substitute for supertypes

func animalF() -> Animal {
    return Animal()
}

func catF() -> Cat {
    return Cat()
}

let returnsAnimal: () -> Animal = catF
//let returnsCat: () -> Cat = animalF  // doesn't work because
/// '() ->  Cat  <: () -> Animal

func catCatF(inCat: Cat) -> Cat {
    return inCat
}

// let animalAnimal: Animal -> Animal = catCatF(inCat: <#T##Cat#>) doesn't work
/// What about
func animalAnimalF(inAnimal: Animal) -> Animal {
    return inAnimal
}

//let catCat: (Cat) -> Cat = animalAnimalF
/// Nope, but
let catAnimal: (Cat) -> Animal = animalAnimalF
///so CONTRAVariant in argument

// let animalCat: (Animal) -> Cat = animalAnimalF
//// Nope COVariant in output type

