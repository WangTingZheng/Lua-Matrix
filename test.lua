--[[
    这是一个测试程序，能够测试matrx.lua里各个函数的准确性
    基本原理是人工出一套卷子给程序做，在通过本程序比对人工结果和机器结果
    使用时需要人工输入“题目”和“答案”，这就是以下函数的意义
]]--
mym=require("matrix")
Tile={"Init","getLength","print","add","subtract","multiply","transposition","inverse","scalarMultiply","compare"}
Pass={false,false,false,false,false,false,false,false,false,false}

initTable={
    mo={1,1,1},
    m=1,
    n=3,
    value=1
    --[[
    mo: 输入的人工矩阵
    m: 人工矩阵的行数
    n: 人工矩阵的列数
    value：人工矩阵的值
    ]]--
}


getLengthTable={
    mt={{1,2,3},{4,5,6}},
    m=3,
    n=2
    --[[
    mt:人工矩阵
    m:人工矩阵的行数
    n:人工矩阵的列数
    ]]--
}

printTable={
    m={{1,2,3},{1,2,3}}
    --[[
    m:人工矩阵
    ]]--
}

addTable={
    mo={{1,1,1},{2,2,2},{3,3,3}},
    mt={{1,1,1},{1,1,1},{1,1,1}},
    mr={{2,2,2},{3,3,3},{4,4,4}}
    --[[
    mo:第一个人工矩阵
    mt:第二个人工矩阵
    mr:人工矩阵的和
    ]]--
}

substractTable={
    mo={{1,1,1},{2,2,2},{3,3,3}},
    mt={{1,1,1},{1,1,1},{1,1,1}},
    mr={{0,0,0},{1,1,1},{2,3,2}}
    --[[
    mo:第一个人工矩阵
    mt:第二个人工矩阵
    mr:人工矩阵的差
    ]]--
}

multiplyTable={
    mo={{1,1,1},{2,2,2}},
    mt={{1,1},{1,1},{1,1}},
    mr={{0,0,0},{1,1,1},{2,3,2}}
    --[[
    mo:第一个人工矩阵
    mt:第二个人工矩阵
    mr:人工矩阵的积
    ]]--
}

passTable={
    Init=1,
    getLength=1,
    print=1,
    add=1,
    subtract=1,
    multiply=1,
    transposition=1,
    inverse=1,
    scalarMultiply=1,
    compare=1
}

function passInit()
    mo=initTable["mo"]
    m=initTable["m"]
    n=initTable["n"]
    value=initTable["value"]
    mt=mym.init(m,n,value)
    if mym.compare(mt,mo)==true then
        Pass[1]=true
    else
        Pass[1]=false
    end
end


function passGetLength()
    mt=getLengthTable["mt"]
    m=getLengthTable["m"]
    n=getLengthTable["n"]
    lengthT=mym.getLength(mt)
    if LengthT[1]==m and lengthT[2]==n then
        Pass[2] =true
    else
        Pass[2]=false
    end
end



function passPrint()
    m=printTable["m"]
    mym.print(m)
    print("请自行比对")
end


function passAdd()
    mo=addTable["mo"]
    mt=addTable["mt"]
    mr=addTable["mr"]
    Pass[4]=mym.compare(mr,mym.add(mo,mt))
end

function passSubstract()
    mo=substractTable["mo"]
    mt=substractTable["mt"]
    mr=substractTable["mr"]
    Pass[5]=mym.compare(mr,mym.subtract(mo,mt))
end

function passMultiply()
    mo=multiplyTable["mo"]
    mt=multiplyTable["mt"]
    ms=multiplyTable["ms"]
    Pass[6]=mym.compare(mr,mym.multiply(mo,mt))
end

function passTransposition()

end

function passInverse()

end

function passScalarMultiply()

end
function passcompare()

end

function printResult()
    print("the function has't passed the test:")
    for i=1,#Tile do
        if Pass[i]==false then
            print(i,Tile[i])
        end
    end
end

function pass()
    for i=1,#passTable do
        if passTable[i]==1 then
            if i==1 then
                passInit()
            elseif i==2 then
                passGetLength()
            elseif i==3 then
                passPrint()
            elseif i==4 then
                passAdd()
            elseif i==5 then
                passSubstract()
            elseif i==6 then
                passMultiply()
            elseif i==7 then
                passTransposition()
            elseif i==8 then
                passInverse()
            elseif i==9 then
                passScalarMultiply()
            elseif i==10 then
                passcompare()
            else
                print("please enter right code!")
            end
        end
    end
    printResult()
end
--passInit()
--print(initTable["mo"])
m={{1,1},{1,1},{1,1}}
mt=mym.init(1,3,1)
mym.print(m)
mym.print(mt)
print(mym.compare(mt,m))