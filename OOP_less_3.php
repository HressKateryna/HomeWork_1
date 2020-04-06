<?php

interface Info{
    public function hello();
    public function name();
}

abstract class Entity implements Info{
    public $entity;
    public function __construct($name_p){
        $this->entity = strtolower(get_class($this));
        $this->name_p = $name_p;
    }

    public function hello(){
        echo "Hi, I`m ".$this->entity.". ";
    }

    public function name(){
        echo "My name is ".$this->name_p.". ";
    }

    public function __toString(){
        return $this->hello()."<br>".$this->name();
    }

}

class Human extends Entity{
}
class Cat extends Entity{
}
class Vampire extends Entity{
}
class Witch extends Entity{
}

$human = new Human("Mike");
$cat = new Cat("Nora");
$vampire = new Vampire("Damon");
$witch = new Witch("Bon-bon");

$entities = [$human, $cat, $vampire, $witch];

foreach ($entities as $entity)
{
    echo $entity;
}
