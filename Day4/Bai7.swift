import Foundation
func Sum(n:Int)->Int
{
    var m:Int=n
    var sum:Int=0
    while(m != 0)
    {
        sum+=m%10
        m/=10
    }
    return sum
}

func Bai7(){
    print("Nhập n = ",terminator: "")
    let n : Int = Int(readLine()!) ?? 0
    let m=Sum(n: n)
    print("Tổng các chữ số của \(n) là \(m)")
}
