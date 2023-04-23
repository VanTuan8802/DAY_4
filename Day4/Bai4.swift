import Foundation
func SapXep(arr:[Int])->[Int]{
    var arr2:[Int]=arr
    for i in 0..<arr.count
    {
        for j in i..<arr.count
        {
            if(arr2[j] < arr2[i])
            {
                let tg:Int=arr2[i]
                arr2[i]=arr2[j]
                arr2[j]=tg
            }
        }
    }
    return arr2
}

func Bai4()
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
        let t:Int = Int(readLine()!) ?? 0
        arr.append(t)
    }
    let arr2:[Int]=SapXep(arr: arr)
    print(arr2)
}

