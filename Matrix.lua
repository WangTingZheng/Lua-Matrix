--create a matrix
--m n :the length of matrix
-- return Matrix :the matrix which is created 
function init(m,n)
    Matrix={}
    for i=1,m do
        Matrix[i]={}
        for j=1,n do
            Matrix[i][j]=0
        end
    end
    return Matrix
end
-- get matrix's length
-- Matrix: the matrix which is ready to be Measured Length
-- return length : the table which includes the length inf
function getLength(Matrix)
    length={0,0}
    length[1]=#Matrix
    length[2]=#Matrix[1]
    return length
end

function Print(Matrix)
    length={}
    length=getLength(Matrix)
    m=length[1]
    n=length[2]
    for i=1,m do
        Matrix[i]={}
        for j=1,n do
            print(Matrix[i][j])
        end
        print("\n")
    end
end


----------------------------------

function add(MatrixO,MatrixT)
    lengthO={}
    lengthT={}
    MatrixA={}
    lengthO=getLength(MatrixO)
    lengthT=getLength(MatrixT)
    if lengthO[1]~=lengthT[1] then
        if lengthO[2]~=lengthT[2] then
            print("These two matrices cannot be added.")
            return 0
        end
    end
    for i=1,lengthO[1] do
        for j=1,lengthO[2] do
            MatrixA[i][j]=MatrixO[i][j]+MatrixT[i][j]
        end
    end
    return MatrixA
end

function subtract(MatrixO,MatrixT)
    lengthO={}
    lengthT={}
    MatrixS={}
    lengthO=getLength(MatrixO)
    lengthT=getLength(MatrixT)
    if lengthO[1]~=lengthT[1] then
        if lengthO[2]~=lengthT[2] then
            print("These two matrices cannot be added.")
            return 0
        end
    end
    for i=1,lengthO[1] do
        Matrix[i]={}
        for j=1,lengthO[2] do
            MatrixS[i][j]=MatrixO[i][j]-MatrixT[i][j]
        end
    end
    return MatrixS
end

function  multiply(MatrixO,MatrixT)
    lengthO={}
    lengthT={}
    lengthO=getLength(MatrixO)
    lengthT=getLength(MatrixT)
    if lengthO[2]~=lengthT[1] then
        print("These two matrices cannot be multiplied.")
        return 0
    end
    MartrixR =init(lengthO[1],lengthT[2])
    for i=1,lengthO[1] do
        for j=1,lengthT[2] do
            for a=1,lengthO[2] do
                MartrixR[i][j]=MatrixO[i][a]*MatrixT[a][j]
            end
        end
    end
    return MartrixR
end

-- transpositiopn of matrix
-- Martrix : the matrix which is ready to transponsite

function transposition(Matrix)
    length={}
    length=getLength(Matrix)
    m=length[1]
    n=length[2]
    MatrixT={}
    for i=1,n do
        for j=1,m do
            MatrixT[i][j]=Matrix[j][i]
        end
    end
end

function inverse(Martrix)
    for i=1,m do
        for j=1,n do
            Matrix[i][j]=-1*Martrix[i][j]
        end
    end
end

function scalarMultiply(number,Martrix)
    MartriSM={}
    length={}
    length=getLength(Matrix)
    for i=1,length[1] do
        Matrix[i]={}
        for j=1,length[2] do
            MatrixSM[i][j]=number*Martrix[i][j]
        end
    end
end
