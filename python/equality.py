
from sys import intern
import math


class Person:
    def __init__(self, name):
        self.name = name

    def __eq__(self, other):
        return self.name == other.name


# ─── REFERENCE EQUALITY ─────────────────────────────────────────────────────────
p1 = Person("John")
p2 = Person("Sarah")
p3 = p1
p4 = Person("John")

print(p1 is p2)  # False
print(p1 is p3)  # True

print(id(p1))
print(id(p2))


# ─── STRUCTURE EQAULITY ─────────────────────────────────────────────────────────

a = 123
b = 300
print(a == b)  # false
c = 123
print(a == c)  # True


print(p1 == p2)  # False
print(p1 == p4)  # True


# ─── WHEN THINGS GO WRONG ───────────────────────────────────────────────────────

print(a is c)  # True
print(a is 123)  # True
print(b is 300)  # True/False Depends on optimization routine of the python


# ─── INTERNING ──────────────────────────────────────────────────────────────────

print(id(a))
print(id(123))  # would be the same location as the a is

# now python puts "Welcome" in a fixed singular location in the memory
message1 = intern("Welcome")
message2 = intern("Welcome")

print(message1 is message2)  # True because both are interned


# ─── FLOATING POINT EQUALITY ────────────────────────────────────────────────────

f1 = .1
f2 = .10000000000000001

# True because they share the same nearest approximate binary fraction
print(f1 == f2)

# False. The rounding makes an illusion that this equality should be True. But due to the approcimation it's not
print(.1 + .1 + .1 == .3)

# there are different functions and libraries that can help equality checking for floating points.
print(math.isclose(.1 + .1 + .1, .3))
