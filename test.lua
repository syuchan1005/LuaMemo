--
-- Created by IntelliJ IDEA.
-- User: syuchan
-- Date: 2016/09/26
-- Time: 20:56
-- To change this template use File | Settings | File Templates.
--

print("hello!")

-- こめんと

--[[
複数行に
するときは
これなのね
めっちゃめんどくさいな
]]

-- データ型
--[[
整数
文字列
関数
テーブル
boolean
]]

int = 100
str = "もじれつ"
boolean = false

-- テーブルとは
-- ArrayとHashMapを両方使えるようにしたもの???

-- Table宣言 = {}
table = {}

table["Test"] = "Lua"
table["TinTin"] = "鈴"
table[1] = "数値も扱える"
table[2] = true
table[3] = 1000

-- 型にとらわれずに代入できる

-- いてれーた
-- 数字と文字列ではイテレータの使い方が違う

-- 文字列がKey == pairs
for i, ver in pairs(table) do
        print(ver)
end

print("------------------")

-- 数字がKey == ipairs
for i, ver in ipairs(table) do
    print(ver)
end

-- pairsだとすべてを表示 Linkedなら数字推奨
-- (つまりHashMapとArrayで使うときには明示的に使い分けて変数作ればいいと)

-- 演算子

-- 比較演算子
-- X: i != 10
-- O: i ~= 10
-- ! == ~

-- 論理演算子
b1 = true
b2 = false
b3 = b1 and b2
b4 = b1 or b2
b5 = not b1
-- && == and # || == or # ! == not

-- 文字列連結 (+使えない
str1 = "Hello"
str2 = "World"
str3 = str1 .. " " .. str2
print(str3)
-- (文字列の)+ == ..

-- if
if str1 == "Hello" then
    print("Hi!")
elseif str2 == "World" then
    print("Why?")
else
    print("Kill you")
end

-- for
-- 初期値, 終了値, 増加量
-- 終了値になると終了する(+-の判定はやってくれるっぽい
for i = 0, 5, 1 do
    print(i)
end

for i = 10, -1, -1 do
    print("Test: " .. i)
end

-- while
i = 10
while i >= 0 do
    print(i)
    i = i - 1
end

-- repeat (do while文っぽい?)
i = 10
repeat
    print("repeat: " .. i)
    i = i - 1
until i == 0

-- breakについて
--[[
Luaのbreakは必ずendの前になければならない
 つまり単体実行するには
 do
    break
 end
 と書くしか無いらしい
]]

-- continueないです

-- 関数
function funcName()
    print("しょり")
end

function calcSquare(x, y)
    return x * y
end

function calcAll(a, b)
    return a + b, a - b, a * b, a / b, a % b
end

function printTable(...)
    table = { ... }
    for i, ver in pairs(table) do
        print(ver)
    end
end

funcName()
print("S: " .. calcSquare(10, 10))
ad, su, mu, di, re = calcAll(6, 3)
print("C: " .. ad .. " " .. su  .. " " .. mu .. " " .. di .. " " .. re)
printTable("Test1", "Test2", "Test3")
