#reverse_list_accordinf_to_kth_element.p
#user gives input of list and k value and the list will be reversed according to the kth element

def reverselist():
    num=list(map(int,input("Enter the numbers").split()))
    k=int(input("Enter the value of K"))
    if k>len(num):
        print("k is greater than the length of the list")
        return
    left=0
    right=k-1

    while left< right:
        num[left],num[right]=num[right],num[left]
        left+=1
        right-=1

    print("reversed list according to kth element is",num)

reverselist()    