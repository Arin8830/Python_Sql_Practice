#reversing_list_by_using_inbuild_function

def reverse_list():
    num=list(map(int,input("enter the number").split()))
    reverse=num[::-1]
    print(reverse)
reverse_list()        