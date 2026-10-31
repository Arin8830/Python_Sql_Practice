#reversing_list_without_using_inbuild_function

def reverse_list():
    num=list(map(int,input("Enter the number").split()))

    left=0;
    right=len(num)-1

    while left< right:
        num[left],num[right]=num[right],num[left]


        left+=1
        right-=1

        print("reveresd list is",num)

reverse_list()