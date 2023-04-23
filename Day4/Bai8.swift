import Foundation
func SoDoiXung(n:Int)->Bool
{
    var arr=[Int]()
    var m:Int=n
    while(m != 0)
    {
        arr.append(m%10)
        m/=10
    }
    
    for i in 0..<arr.count{
        if(arr[i] != arr[arr.count-1-i])
        {
            return false
        }
    }
    return true
}

func Bai8()
{
    print("Nhập n = ",terminator: "")
    let n : Int = Int(readLine()!) ?? 0
    if(SoDoiXung(n: n))
    {
        print("\(n) là số đối xúng")
    }
    else
    {
        print("\(n) không là số đối xứng")
    }
}
