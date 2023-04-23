import Foundation
func NamNhuan(_ n:Int)->Bool{
    if ((n % 4 == 0 && n % 100 != 0) || n % 400 == 0)
        {
            return true;
        }
    return false;
}


func Bai2()
{
    print("Nhập năm : ",terminator: "")
    let n:Int=Int(readLine()!) ?? 0

    if(NamNhuan(n)==true)
    {
        print("Số ngày của 12 tháng là 366 ngày")
    }
    else
    {
        print("Số ngày của 12 tháng là 365 ngày")
    }
}
