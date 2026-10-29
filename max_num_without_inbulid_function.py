#max number without inbuild function max

def max_num():
    num=[1,2,10,3,4,9]
    max_num=num[0]
    for i in num:
        if i>max_num:
            max_num=i
    print(max_num)

max_num()    