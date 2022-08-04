SELECT firstName, lastName, city, state
FROM Person
LEFT JOIN Address
    ON Person.personId = Address.personId

# SELECT firstName, lastName, city, state
# FROM Person
# LEFT OUTER JOIN Address
#     ON Person.personId = Address.personId

# SELECT firstName, lastName, city, state
# FROM Address
# RIGHT JOIN Person
#     ON Address.personId = Person.personId

# SELECT firstName, lastName, city, state
# FROM Address
# RIGHT OUTER JOIN Person
#     ON Address.personId = Person.personId