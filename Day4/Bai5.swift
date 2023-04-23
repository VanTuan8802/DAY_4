import Foundation
func Bai5()
{
    var n:Int=0
    while(n<=0)
    {
        print("Nhập n = ",terminator: "")
        n=Int(readLine()!) ?? 1
    }
    var arr=[Int]()
    for i in 0..<n{
        print("Nhập phần tử thứ \(i+1) : ",terminator: "")
        var t:Int = Int(readLine()!) ?? 0
        arr.append(t)
    }
    
    var arr1:[Int]=SapXep(arr: arr)
    
    print("Nhập số cần chèn : ",terminator: "")
    let x:Int=Int(readLine()!) ?? 0
    
    if(x>arr1[n-1])
    {
        arr1.append(x)
    }
    
    else
    {
        for i in 0...n
        {
            if(x>=arr1[i] && x<=arr1[i+1])
            {
                arr1.insert(x, at: i+1)
            }
        }
    }
    print(arr1)
}


