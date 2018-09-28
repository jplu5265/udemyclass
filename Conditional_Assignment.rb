#Assign value only when evaluated object is nil

greeting = "Hello"
extraction = 100
letter = greeting[extraction]
p letter
letter ||= "Not found!"
p letter
