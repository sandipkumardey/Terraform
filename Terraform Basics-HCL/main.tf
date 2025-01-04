#Learning HCL with CloudChamp

/*
this
is 
a multi line
comment*/

#Block
block_type {
    attribute1 = value1
    attribute2 = value2
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro" 
  count = 3
  enabled = true
}

#Attributes
key = value

#Datatypes
"string"
number 2
boolean true false



List
list = ["item1", "item2", "item3]

security_gropus = ["sg-12442", "sg-12321"]


Maps
variable "example_map" {
    type = map
    deafult = { key1 = value
}


#Conditions

#Function

#Resourcedependency