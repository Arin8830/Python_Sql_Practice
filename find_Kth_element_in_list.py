#find kth element in list

def kth_element():
    num=list(map(int,input("ENter the numbers").split()))
    k=int(input("Enter the value of K"))
    if k>len( num):
        print("k is greater than the length of the list")
        return
    print(num[(k-1)+1])
kth_element()
