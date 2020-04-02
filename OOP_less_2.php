<?php

interface Info{
    public function hello();
    public function name();
}

abstract class Entity implements Info{
    function hello(){
        echo $this->addInfo()."I`m a ".strtolower(get_class($this))."."."<br>";
    }
    function name()
    {
        echo "My name is ".$this->nameInfo()."<br>";
    }

    abstract protected function addInfo();
    abstract protected function nameInfo();
}

class Human extends Entity{

    function __construct($name){
        $this->name = $name;
    }
    protected function addInfo(){
        return "Hello, my dear! ";
    }
    protected function nameInfo()
    {
        return $this->name."<br>";
    }
}

class Cat extends Entity{
    function __construct($name){
        $this->name = $name;
    }
    protected function addInfo(){
        return "Meow! ";
    }
    protected function nameInfo()
    {
        return $this->name."<br>";
    }
}

class Vampire extends Entity{
    function __construct($name){
        $this->name = $name;
    }
    protected function addInfo(){
        return "Hey! ";
    }
    protected function nameInfo()
    {
        return $this->name."<br>";
    }
}

class Witch extends Entity{
    function __construct($name){
        $this->name = $name;
    }
    protected function addInfo(){
        return "Good evening! ";
    }
    protected function nameInfo()
    {
        return $this->name."<br>";
    }
}

$human = new Human("Mike!");
$cat = new Cat("Kitty!");
$vampire = new Vampire("Damon!");
$witch = new Witch("Bon-bon!");

$entity = [$human, $cat, $vampire, $witch];

foreach ($entity as $thing)
{
    $thing->hello();
    $thing->name();

}

?>