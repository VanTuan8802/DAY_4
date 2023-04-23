import Foundation

func MaiLinh()->Float
{
    print("1:4 chỗ nhỏ")
    print("2:4 chỗ lớn")
    print("3:7 chỗ")
    var t:Int=0
    while(t<=0 || t>3)
    {
        print("Nhập loại dịch vụ : ",terminator: "")
        t=Int(readLine()!) ?? 0
    }
    
    let gia:Float=20000/1.28
    
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0
    }
    
    if(t==1)
    {
        if(km<31)
        {
            return gia + km * 14500
        }
        else
        {
            return gia + 30 * 14500 + (km-31) * 12000
        }
        
    }
    else if(t==2)
    {
        if(km<31)
        {
            return gia + km * 16000
        }
        else
        {
            return gia + 30 * 16000 + (km-31) * 12700
        }
    }
    else
    {
        if(km<31)
        {
            return gia + km * 17000
        }
        else
        {
            return gia + 30 * 17000 + (km-31) * 14300
        }
    }
}

func Vinasun()->Float
{
    print("1:4 chỗ ")
    print("2:7 chỗ ")
    var t:Int=0
    while(t<=0 || t>2)
    {
        print("Nhập loại dịch vụ : ",terminator: "")
        t=Int(readLine()!) ?? 0
    }
    
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0
    }
    
    if(t==1)
    {
        if(km<31)
        {
            return 11000/0.5 + km * 17600
        }
        else
        {
            return 11000/0.5 + 30 * 17600 + (km-31) * 14500
        }
        
    }
    
    else
    {
        if(km<31)
        {
            return 12000/0.5 + km * 19600
        }
        else
        {
            return 12000/0.5 + 30 * 19600 + (km-31) * 17100
        }
    }
}

func VinaTaxi()->Float
{
    print("4 chỗ")
    print("7 chỗ")
    var t:Int=0
    while(t<=0 || t>3)
    {
        print("Nhập loại dịch vụ : ",terminator: "")
        t=Int(readLine()!) ?? 0
    }
    
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0.0
    }
    
    if(t==1)
    {
        if(km<31)
        {
            return 11000/0.5 + km * 17100
        }
        else
        {
            return 11000/0.5 + 30 * 17100 + (km-31) * 13600
        }
        
    }
    else
    {
        if(km<31)
        {
            return 12000/0.5 + km * 19100
        }
        else
        {
            return 12000/0.5 + 30 * 19100 + (km-31) * 15100
        }
    }
}

func Group()->Float
{
    print("1:Xe Vios")
    print("2:Xe Innova")
    print("3:Xe Eco")
    var t:Int=0
    while(t<=0 || t>3)
    {
        print("Nhập loại dịch vụ : ",terminator: "")
        t=Int(readLine()!) ?? 0
    }
    
    let gia:Float=20000
    
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0.0
    }
    
    if(t==1)
    {
        if(km<31)
        {
            return gia/0.9 + km * 17600
        }
        else
        {
            return gia/0.9 + 30 * 17600 + (km-31) * 14400
        }
        
    }
    else if(t==2)
    {
        if(km<31)
        {
            return gia/0.9 + km * 19600
        }
        else
        {
            return gia/0.9 + 30 * 19600 + (km-31) * 16200
        }
    }
    else
    {
        if(km<31)
        {
            return gia/1.5 + km * 17000
        }
        else
        {
            return gia/1.5 + 30 * 17000 + (km-31) * 14300
        }
    }
}

func G7()->Float
{
    print("1:4 chỗ nhỏ")
    print("2:4 chỗ lớn")
    print("3:7 chỗ")
    var t:Int=0
    while(t<=0 || t>3)
    {
        print("Nhập loại dịch vụ : ",terminator: "")
        t=Int(readLine()!) ?? 0
    }
    
    let gia:Float=20000
    
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0.0
    }
    
    if(t==1)
    {
            return gia/1.379 + km * 12000
    }
    else if(t==2)
    {
            return gia/1.25 + km * 13000
    }
    else
    {
            return gia/1.143 + km * 14500
    }
}

func SaoMai()->Float
{
    print("1:4 chỗ nhỏ")
    print("2:4 chỗ lớn")
    var t:Int=0
    while(t<=0 || t>3)
    {
        print("Nhập loại dịch vụ : ",terminator: "")
        t=Int(readLine()!) ?? 0
    }
    
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0.0
    }
    
    if(t==1)
    {
        if(km<31)
        {
            return 20000/1.5 + km * 13500
        }
        else
        {
            return 20000/1.5 + 30 * 13500 + (km-31) * 11500
        }
        
    }
    else
    {
        if(km<31)
        {
            return 20000/1.4 + km * 19100
        }
        else
        {
            return 20000/1.4 + 30 * 19100 + (km-31) * 12500
        }
    }
}

func GMS()->Float
{
    var km:Float=0
    while(km<=0)
    {
        print("Nhập số km : ",terminator: "")
        km=Float(readLine()!) ?? 0.0
    }
    
        if(km<31)
        {
            return 20000 + km * 15500
        }
        else
        {
            return 20000 + 30 * 15500 + (km-31) * 12500
        }
}

func Bai10()
{
    var t:Int=0
    while(t<=0 || t>7)
    {
        print("Nhập hãng xe : ")
        t=Int(readLine()!) ?? 0
    }
    
    switch t {
    case 1:
        print("Số tiền phải trả là \(MaiLinh())")
    case 2:
        print("Số tiền phải trả là \(Vinasun())")
    case 3:
        print("Số tiền phải trả là \(VinaTaxi())")
    case 4:
        print("Số tiền phải trả là \(Group())")
    case 5:
        print("Số tiền phải trả là \(G7())")
    case 6:
        print("Số tiền phải trả là \(SaoMai())")
    default:
        print("Số tiền phải trả là \(GMS())")
    }
}
