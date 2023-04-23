import Foundation
func namNhuan(_ n:Int)->Bool{
    if ((n % 4 == 0 && n % 100 != 0) || n % 400 == 0)
    {
            return true;
    }
    return false;
}

func NhapNgay()->(day:Int,month:Int,year:Int)
{
    var year:Int=0
    while (year<=0) {
        print("Nhập năm : ",terminator: "")
        year=Int(readLine()!) ?? 0
    }
    
    var month:Int=0
    while(month>12 || month<=0)
    {
            print("Nhập tháng : ",terminator: "")
            month=Int(readLine()!) ?? 0
    }
    
    var day:Int=0
    while(true)
    {
        if(month==2)
        {
            if(NamNhuan(year))
            {
                if(day<=0 || day > 29)
                {
                    print("Nhập ngày : ",terminator: "")
                    day=Int(readLine()!) ?? 0
                }
                else
                {
                    break
                }
            }
            else
            {
                if(day<=0 || day > 28)
                {
                    print("Nhập ngày : ",terminator: "")
                    day=Int(readLine()!) ?? 0
                }
                else
                {
                    break
                }
            }
        }
        else if(month == 4 || month == 6 || month == 9 || month == 11)
        {
            if(day<=0 || day > 30)
            {
                print("Nhập ngày : ",terminator: "")
                day=Int(readLine()!) ?? 0
            }
            else
            {
                break
            }
        }
        else
        {
            if(day<=0 || day > 31)
            {
                print("Nhập ngày : ",terminator: "")
                day=Int(readLine()!) ?? 0
            }
            else
            {
                break
            }
        }
        
    }
    return (day,month,year)
}

func DayLienTruoc(_ a:Int,_ b:Int,_ c:Int) -> (day:Int,month:Int,year:Int)
{
    if(a>1)
    {
        return(a-1,b,c)
    }
    else
    {
        if(b==3)
        {
            if(namNhuan(c)==true)
            {
                return(29,2,c)
            }
            else{
                return (28,2,c)
            }
        }
        
        else if(b==1)
        {
            return (31,12,c-1)
        }
        else if(b==2 || b==4 || b==6 || b==9 || b==11)
        {
            return(31,b-1,c)
        }
        else
        {
            return(30,b-1,c)
        }
    }
}

func DayLienSau(_ a:Int,_ b:Int,_ c:Int) -> (day:Int,month:Int,year:Int)
{
    if(b==12)
    {
        if(a==31)
        {
            return (1,1,c+1)
        }
        else
        {
            return (a+1,12,c)
        }
    }
    
    else if(b==2)
    {
        if(NamNhuan(c))
        {
            if(a==29)
            {
                return(1,3,c)
            }
            else
            {
                return(a+1,2,c)
            }
        }
    }
    else
    {
        if(a<30)
        {
            return(a+1,b,c)
        }
        else if(a==30)
        {
            if(b==4 || b==6 || b==9 || b==11)
            {
                return(1,b+1,c)
            }
            else
            {
                return(31,b,c)
            }
        }
        else
        {
            return(1,b+1,c)
        }
    }
    return (a,b,c)
}


func Bai3()
{
    let(day,month,year)=NhapNgay()
    let a=DayLienSau(day,month,year).day
    let b=DayLienSau(day,month,year).month
    let c=DayLienSau(day,month,year).year
    
    
    let x=DayLienTruoc(day,month,year).day
    let y=DayLienTruoc(day,month,year).month
    let z=DayLienTruoc(day,month,year).year
    print("Ngày liền sau của \(day)/\(month)/\(year) là \(a)/\(b)/\(c)")
    print("Ngày liền trước của \(day)/\(month)/\(year) là \(x)/\(y)/\(z)")
}

