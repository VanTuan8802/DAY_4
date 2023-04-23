import Foundation
func SoNguyenTo(n:Int)->Bool
{
    var dem=0
    for i in 1...n
    {
        if(n % i == 0)
        {
            dem+=1
        }
    }
    if(dem==2)
    {
        return true
    }
    return false
}

func Bai1(){
    var arr=[Int]()
    print("Nhập số phần tử của mảng : ",terminator: "")
    let n:Int=Int(readLine()!) ?? 0
    for i in 0..<n{
        print("Nhập phần tử thứ \(i+1) : ",terminator: "")
        let t:Int = Int(readLine()!) ?? 0
        arr.append(t)
    }

    var dem=0
    for i in arr{
        if(SoNguyenTo(n: i) == true)
        {
            dem+=1
        }
    }
    print("Có \(dem) số nguyên tố trong mảng")
}



