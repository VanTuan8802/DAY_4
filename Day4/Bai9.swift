import Foundation
func GiaiPhuongTrinh(_ a:Float,_ b:Float,_ c:Float)->(songhien:Int,x1:Float,x2:Float)
{
    let delta:Float = b*b - 4*a*c
    if(delta==0)
    {
        return (1,-b/(2*a) , -b/(2*a))
    }
    else if(delta>0)
    {
        return (2,(-b+sqrt(delta))/(2*a) , (-b-sqrt(delta))/(2*a))
    }
    else
    {
        return (0,0,0)
    }
}

func Bai9(){
    print("Nhập a= ",terminator: "")
    let a:Float=Float(readLine()!) ?? 0
    print("Nhập b= ",terminator: "")
    let b:Float=Float(readLine()!) ?? 0
    print("Nhập c= ",terminator: "")
    let c:Float=Float(readLine()!) ?? 0
    
    let (t,x1,x2)=GiaiPhuongTrinh(a, b, c)
    if(t==2)
    {
        print("Phương trình có 2 nghiệm là \(x1) , \(x2)")
    }
    else if(t==1)
    {
        print("Phương trình có nghỉệm kép là \(x1)")
    }
    else
    {
        print("Phương trình vô nghiệm")
    }
}

