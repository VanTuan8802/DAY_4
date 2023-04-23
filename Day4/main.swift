//
//  main.swift
//  Day_4
//
//  Created by Nguyễn Tuấn on 22/04/2023.
//

import Foundation
let deBai: String = """
---------------------------------------
|    1. Bài 1                          |
|    2. Bài 2                          |
|    3. Bài 3                          |
|    4. Bài 4                          |
|    5. Bài 5                          |
|    6. Bài 6                          |
|    7. Bài 7                          |
|    8. Bài 8                          |
|    9. Bài 9                          |
|    10. Bài 10                        |
---------------------------------------
"""

print(deBai)
print("************")
print()
print("Đọc đề và chọn bài tập muốn chạy: ", terminator: "")

let option = Int(readLine() ?? "") ?? 0
print("👇")
switch option{
case 1:
    Bai1()
case 2:
    Bai2()
case 3:
    Bai3()
case 4:
    Bai4()
case 5:
    Bai5()
case 6:
    Bai6()
case 7:
    Bai7()
case 8:
    Bai8()
case 9:
    Bai9()
default:
    Bai10()
}


