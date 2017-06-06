import random

def randomFill(a, length=10):
    for i in range(length):
        a.append(random.randint(1, 10))
    return a
def printArray(a):
    print('-' * 50)
    for i in range(len(a)):
        print(a[i])
    print('-' * 50)
a = []
b = []
#s = a[0]
m = 0
index = 0
length = 5
a = randomFill(a, length)
b = randomFill(b, length)
printArray(a)
printArray(b)
for i in range(length):
    s = a[0]
    for j in range(length):
        if (7 > a[j]):
            s = a[j]
            index = j
    m = s
    if (b.__contains__(m)):
        print('Min: ', m)
        m = 1
        break
    else:
        a[index] = 999999
if (m == 1):
     print('The number contain the array b')
else:
     print('Nope')