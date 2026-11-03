#Remove duplicate elements from a list.

def remove_duplicates():
    num=list(map(int,input("Enter the numbers").split()))
    unique_elements=list(set(num))
    print("List after removing duplicates:",unique_elements)

remove_duplicates()