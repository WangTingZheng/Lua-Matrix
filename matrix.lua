matrix ={}
--create a matrix
--m n :the length of matrix
-- return Matrix :the matrix which is created 
function matrix.init(m,n,value)
    Matrix={}
    for i=1,m do
        Matrix[i]={}
        for j=1,n do
            Matrix[i][j]=value
        end
    end
    return Matrix
end
-- get matrix's length
-- Matrix: the matrix which is ready to be Measured Length
-- return length : the table which includes the length inf
function matrix.getLength(Matrix)
    length={0,0}
    length[1]=#Matrix
    length[2]=#Matrix[1]
    return length
end

function matrix.print(Matrix)
    length={0,0}
    length=matrix.getLength(Matrix)
    m=length[1]
    n=length[2]
    for i=1,m do
        for j=1,n do
            io.write(Matrix[i][j])
        end
        print("")
    end
end

----------------------------------

function matrix.add(MatrixO,MatrixT)
    lengthO={}
    lengthT={}
    MatrixA={}
    lengthO=matrix.getLength(MatrixO)
    lengthT=matrix.getLength(MatrixT)
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

function matrix.subtract(MatrixO,MatrixT)
    lengthO={}
    lengthT={}
    MatrixS={}
    lengthO=matrix.getLength(MatrixO)
    lengthT=matrix.getLength(MatrixT)
    if lengthO[1]~=lengthT[1] then
        if lengthO[2]~=lengthT[2] then
            print("These two matrices cannot be subtracted.")
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

function  matrix.multiply(MatrixO,MatrixT)
    lengthO={}
    lengthT={}
    lengthO=matrix.getLength(MatrixO)
    lengthT=matrix.getLength(MatrixT)
    if lengthO[2]~=lengthT[1] then
        print("These two matrices cannot be multiplied.")
        return 0
    end
    MartrixR =matrix.init(lengthO[1],lengthT[2],1)
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

function matrix.transposition(Matrix)
    length={}
    length=matrix.getLength(Matrix)
    MatrixT=matrix.init(length[2],length[1],1)
    for i=1,length[2] do
        for j=1,length[1] do
            MatrixT[i][j]=Matrix[j][i]
        end
    end
    return MatrixT
end

function matrix.inverse(Martrix)
    length=martrix.getLength(Martrix)
    MartrixI=martrix.init(length[1],length[2],1)
    for i=1,m do
        for j=1,n do
            MartrixI[i][j]=-1*Martrix[i][j]
        end
    end
    return MartrixI
end

function matrix.scalarMultiply(number,Martrix)
    length=matrix.getLength(Martrix)
    MartriSM=martrix.init(length[1],length[2],1)
    for i=1,length[1] do
        for j=1,length[2] do
            MatrixSM[i][j]=number*Martrix[i][j]
        end
    end
    return MartriSM
end

function matrix.compare(MatrixO,MatrixT)
    lengthO=matrix.getLength(MatrixO)
    lengthT=matrix.getLength(MatrixT)
    if lengthO[1]~=lengthT[1] or lengthO[2]~=lengthT[2] then
        return false
    else
        for i=1,lengthO[1] do
            for j=1,lengthO[2] do
                if MatrixO[i][j]~=MatrixT[i][j] then
                    return false
                end
            end
        end
        return true
    end
end

return matrix