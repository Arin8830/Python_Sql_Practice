#two_lsi_Add_sub_mul_div

def two_list():
    list1=list(map(int,input("Enter the numbers for list 1").split()))
    list2=list(map(int,input("Enter the numbers for list 2").split()))
    if len(list1)!=len(list2):
        print("Length of both lists should be same")
        return
    add=[]
    sub=[]
    mul=[]
    div=[]
    for i in range(len(list1)):
        add.append(list1[i]+list2[i])
        sub.append(list1[i]-list2[i])
        mul.append(list1[i]*list2[i])
        if list2[i]!=0:
            div.append(list1[i]/list2[i])
        else:
            div.append("undefined")

    print("Addition of two lists is",add)
    print("Subtraction of two lists is",sub)
    print("Multiplication of two lists is",mul)
    print("Division of two lists is",div)

two_list()
