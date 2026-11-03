#Find the duplicate elements in a list.

def find_duplicates():
    num=list(map(int,input("Enter the numbers").split()))
    seen=set()
    duplicates=[]

    for i in num:
        if i in seen:
            duplicates.append(i)
        else:
            seen.add(i)

    if len(duplicates)==0:
        print("No duplicates found")
    else:
        print("Duplicate elements are",duplicates)

find_duplicates()


