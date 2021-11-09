function [dout] = sbox(addr, lookup)
%SBOX Summary of this function goes here
%   Detailed explanation goes here

addr_perm = cat(1,addr(1),addr(6),addr(2:5))';
addr_dec = binaryVectorToDecimal(addr_perm,'LSBFirst');

switch (lookup)
    
    case 1
            dout = sbox1(addr_dec);
    case 2
            dout = sbox2(addr_dec);    
    case 3
            dout =sbox3(addr_dec);
    case 4
            dout = sbox4(addr_dec);
    case 5
            dout = sbox5(addr_dec);
    case 6
            dout = sbox6(addr_dec);
    case 7
            dout =sbox7(addr_dec);
    case 8
            dout = sbox8(addr_dec);

    end

end
function [dout] = sbox1(addr_dec)

switch (addr_dec) 
case   0  
	dout =  14;
case   1  
	dout =   4;
case   2  
	dout =  13;
case   3  
	dout =   1;
case   4  
	dout =   2;
case   5  
	dout =  15;
case   6  
	dout =  11;
case   7  
	dout =   8;
case   8  
	dout =   3;
case   9  
	dout =  10;
case  10  
	dout =   6;
case  11  
	dout =  12;
case  12  
	dout =   5;
case  13  
	dout =   9;
case  14  
	dout =   0;
case  15  
	dout =   7;

case  16  
	dout =   0;
case  17  
	dout =  15;
case  18  
	dout =   7;
case  19  
	dout =   4;
case  20  
	dout =  14;
case  21  
	dout =   2;
case  22  
	dout =  13;
case  23  
	dout =   1;
case  24  
	dout =  10;
case  25  
	dout =   6;
case  26  
	dout =  12;
case  27  
	dout =  11;
case  28  
	dout =   9;
case  29  
	dout =   5;
case  30  
	dout =   3;
case  31  
	dout =   8;

case  32  
	dout =   4;
case  33  
	dout =   1;
case  34  
	dout =  14;
case  35  
	dout =   8;
case  36  
	dout =  13;
case  37  
	dout =   6;
case  38  
	dout =   2;
case  39  
	dout =  11;
case  40  
	dout =  15;
case  41  
	dout =  12;
case  42  
	dout =   9;
case  43  
	dout =   7;
case  44  
	dout =   3;
case  45  
	dout =  10;
case  46  
	dout =   5;
case  47  
	dout =   0;

case  48  
	dout =  15;
case  49  
	dout =  12;
case  50  
	dout =   8;
case  51  
	dout =   2;
case  52  
	dout =   4;
case  53  
	dout =   9;
case  54  
	dout =   1;
case  55  
	dout =   7;
case  56  
	dout =   5;
case  57  
	dout =  11;
case  58  
	dout =   3;
case  59  
	dout =  14;
case  60  
	dout =  10;
case  61  
	dout =   0;
case  62  
	dout =   6;
case  63  
	dout =  13;
end
end

function [dout] = sbox2(addr_dec)
switch (addr_dec)
    case 0
	   dout = 15;
case 1
	   dout =  1;
case 2
	   dout =  8;
case 3
	   dout = 14;
case 4
	   dout =  6;
case 5
	   dout = 11;
case 6
	   dout =  3;
case 7
	   dout =  4;
case 8
	   dout =  9;
case 9
	   dout =  7;
case  10
	   dout =  2;
case  11
	   dout = 13;
case  12
	   dout = 12;
case  13
	   dout =  0;
case  14
	   dout =  5;
case  15
	   dout = 10;

case  16
	   dout =  3;
case  17
	   dout = 13;
case  18
	   dout =  4;
case  19
	   dout =  7;
case  20
	   dout = 15;
case  21
	   dout =  2;
case  22
	   dout =  8;
case  23
	   dout = 14;
case  24
	   dout = 12;
case  25
	   dout =  0;
case  26
	   dout =  1;
case  27
	   dout = 10;
case  28
	   dout =  6;
case  29
	   dout =  9;
case  30
	   dout = 11;
case  31
	   dout =  5;

case  32
	   dout =  0;
case  33
	   dout = 14;
case  34
	   dout =  7;
case  35
	   dout = 11;
case  36
	   dout = 10;
case  37
	   dout =  4;
case  38
	   dout = 13;
case  39
	   dout =  1;
case  40
	   dout =  5;
case  41
	   dout =  8;
case  42
	   dout = 12;
case  43
	   dout =  6;
case  44
	   dout =  9;
case  45
	   dout =  3;
case  46
	   dout =  2;
case  47
	   dout = 15;

case  48
	   dout = 13;
case  49
	   dout =  8;
case  50
	   dout = 10;
case  51
	   dout =  1;
case  52
	   dout =  3;
case  53
	   dout = 15;
case  54
	   dout =  4;
case  55
	   dout =  2;
case  56
	   dout = 11;
case  57
	   dout =  6;
case  58
	   dout =  7;
case  59
	   dout = 12;
case  60
	   dout =  0;
case  61
	   dout =  5;
case  62
	   dout = 14;
case  63
	   dout =  9;
    
end
end

function [dout] = sbox3(addr_dec)
switch (addr_dec)
    case  0
	  dout = 10;
case  1
	  dout =  0;
case  2
	  dout =  9;
case  3
	  dout = 14;
case  4
	  dout =  6;
case  5
	  dout =  3;
case  6
	  dout = 15;
case  7
	  dout =  5;
case  8
	  dout =  1;
case  9
	  dout = 13;
case 10
	  dout = 12;
case 11
	  dout =  7;
case 12
	  dout = 11;
case 13
	  dout =  4;
case 14
	  dout =  2;
case 15
	  dout =  8;

case 16
	  dout = 13;
case 17
	  dout =  7;
case 18
	  dout =  0;
case 19
	  dout =  9;
case 20
	  dout =  3;
case 21
	  dout =  4;
case 22
	  dout =  6;
case 23
	  dout = 10;
case 24
	  dout =  2;
case 25
	  dout =  8;
case 26
	  dout =  5;
case 27
	  dout = 14;
case 28
	  dout = 12;
case 29
	  dout = 11;
case 30
	  dout = 15;
case 31
	  dout =  1;

case 32
	  dout = 13;
case 33
	  dout =  6;
case 34
	  dout =  4;
case 35
	  dout =  9;
case 36
	  dout =  8;
case 37
	  dout = 15;
case 38
	  dout =  3;
case 39
	  dout =  0;
case 40
	  dout = 11;
case 41
	  dout =  1;
case 42
	  dout =  2;
case 43
	  dout = 12;
case 44
	  dout =  5;
case 45
	  dout = 10;
case 46
	  dout = 14;
case 47
	  dout =  7;

case 48
	  dout =  1;
case 49
	  dout = 10;
case 50
	  dout = 13;
case 51
	  dout =  0;
case 52
	  dout =  6;
case 53
	  dout =  9;
case 54
	  dout =  8;
case 55
	  dout =  7;
case 56
	  dout =  4;
case 57
	  dout = 15;
case 58
	  dout = 14;
case 59
	  dout =  3;
case 60
	  dout = 11;
case 61
	  dout =  5;
case 62
	  dout =  2;
case 63
	  dout = 12;

    
end
end

function [dout] = sbox4(addr_dec)
switch (addr_dec)
case    0
	  dout =  7;
case   1
	  dout = 13;
case   2
	  dout = 14;
case   3
	  dout =  3;
case   4
	  dout =  0;
case   5
	  dout =  6;
case   6
	  dout =  9;
case   7
	  dout = 10;
case   8
	  dout =  1;
case   9
	  dout =  2;
case  10
	  dout =  8;
case  11
	  dout =  5;
case  12
	  dout = 11;
case  13
	  dout = 12;
case  14
	  dout =  4;
case  15
	  dout = 15;

case  16
	  dout = 13;
case  17
	  dout =  8;
case  18
	  dout = 11;
case  19
	  dout =  5;
case  20
	  dout =  6;
case  21
	  dout = 15;
case  22
	  dout =  0;
case  23
	  dout =  3;
case  24
	  dout =  4;
case  25
	  dout =  7;
case  26
	  dout =  2;
case  27
	  dout = 12;
case  28
	  dout =  1;
case  29
	  dout = 10;
case  30
	  dout = 14;
case  31
	  dout =  9;

case  32
	  dout = 10;
case  33
	  dout =  6;
case  34
	  dout =  9;
case  35
	  dout =  0;
case  36
	  dout = 12;
case  37
	  dout = 11;
case  38
	  dout =  7;
case  39
	  dout = 13;
case  40
	  dout = 15;
case  41
	  dout =  1;
case  42
	  dout =  3;
case  43
	  dout = 14;
case  44
	  dout =  5;
case  45
	  dout =  2;
case  46
	  dout =  8;
case  47
	  dout =  4;

case  48
	  dout =  3;
case  49
	  dout = 15;
case  50
	  dout =  0;
case  51
	  dout =  6;
case  52
	  dout = 10;
case  53
	  dout =  1;
case  54
	  dout = 13;
case  55
	  dout =  8;
case  56
	  dout =  9;
case  57
	  dout =  4;
case  58
	  dout =  5;
case  59
	  dout = 11;
case  60
	  dout = 12;
case  61
	  dout =  7;
case  62
	  dout =  2;
case  63
	  dout = 14;

    
end
end

function [dout] = sbox5(addr_dec)
switch (addr_dec)
    case  0
	  dout =  2;
case  1
	  dout = 12;
case  2
	  dout =  4;
case  3
	  dout =  1;
case  4
	  dout =  7;
case  5
	  dout = 10;
case  6
	  dout = 11;
case  7
	  dout =  6;
case  8
	  dout =  8;
case  9
	  dout =  5;
case 10
	  dout =  3;
case 11
	  dout = 15;
case 12
	  dout = 13;
case 13
	  dout =  0;
case 14
	  dout = 14;
case 15
	  dout =  9;

case 16
	  dout = 14;
case 17
	  dout = 11;
case 18
	  dout =  2;
case 19
	  dout = 12;
case 20
	  dout =  4;
case 21
	  dout =  7;
case 22
	  dout = 13;
case 23
	  dout =  1;
case 24
	  dout =  5;
case 25
	  dout =  0;
case 26
	  dout = 15;
case 27
	  dout = 10;
case 28
	  dout =  3;
case 29
	  dout =  9;
case 30
	  dout =  8;
case 31
	  dout =  6;

case 32
	  dout =  4;
case 33
	  dout =  2;
case 34
	  dout =  1;
case 35
	  dout = 11;
case 36
	  dout = 10;
case 37
	  dout = 13;
case 38
	  dout =  7;
case 39
	  dout =  8;
case 40
	  dout = 15;
case 41
	  dout =  9;
case 42
	  dout = 12;
case 43
	  dout =  5;
case 44
	  dout =  6;
case 45
	  dout =  3;
case 46
	  dout =  0;
case 47
	  dout = 14;

case 48
	  dout = 11;
case 49
	  dout =  8;
case 50
	  dout = 12;
case 51
	  dout =  7;
case 52
	  dout =  1;
case 53
	  dout = 14;
case 54
	  dout =  2;
case 55
	  dout = 13;
case 56
	  dout =  6;
case 57
	  dout = 15;
case 58
	  dout =  0;
case 59
	  dout =  9;
case 60
	  dout = 10;
case 61
	  dout =  4;
case 62
	  dout =  5;
case 63
	  dout =  3;
    
end
end

function [dout] = sbox6(addr_dec)
switch (addr_dec)
    case   0
	  dout = 12;
case   1
	  dout =  1;
case   2
	  dout = 10;
case   3
	  dout = 15;
case   4
	  dout =  9;
case   5
	  dout =  2;
case   6
	  dout =  6;
case   7
	  dout =  8;
case   8
	  dout =  0;
case   9
	  dout = 13;
case  10
	  dout =  3;
case  11
	  dout =  4;
case  12
	  dout = 14;
case  13
	  dout =  7;
case  14
	  dout =  5;
case  15
	  dout = 11;

case  16
	  dout = 10;
case  17
	  dout = 15;
case  18
	  dout =  4;
case  19
	  dout =  2;
case  20
	  dout =  7;
case  21
	  dout = 12;
case  22
	  dout =  9;
case  23
	  dout =  5;
case  24
	  dout =  6;
case  25
	  dout =  1;
case  26
	  dout = 13;
case  27
	  dout = 14;
case  28
	  dout =  0;
case  29
	  dout = 11;
case  30
	  dout =  3;
case  31
	  dout =  8;

case  32
	  dout =  9;
case  33
	  dout = 14;
case  34
	  dout = 15;
case  35
	  dout =  5;
case  36
	  dout =  2;
case  37
	  dout =  8;
case  38
	  dout = 12;
case  39
	  dout =  3;
case  40
	  dout =  7;
case  41
	  dout =  0;
case  42
	  dout =  4;
case  43
	  dout = 10;
case  44
	  dout =  1;
case  45
	  dout = 13;
case  46
	  dout = 11;
case  47
	  dout =  6;

case  48
	  dout =  4;
case  49
	  dout =  3;
case  50
	  dout =  2;
case  51
	  dout = 12;
case  52
	  dout =  9;
case  53
	  dout =  5;
case  54
	  dout = 15;
case  55
	  dout = 10;
case  56
	  dout = 11;
case  57
	  dout = 14;
case  58
	  dout =  1;
case  59
	  dout =  7;
case  60
	  dout =  6;
case  61
	  dout =  0;
case  62
	  dout =  8;
case  63
	  dout = 13;
    
end
end

function [dout] = sbox7(addr_dec)
switch (addr_dec)
    case  0
	  dout =  4;
case  1
	  dout = 11;
case  2
	  dout =  2;
case  3
	  dout = 14;
case  4
	  dout = 15;
case  5
	  dout =  0;
case  6
	  dout =  8;
case  7
	  dout = 13;
case  8
	  dout =  3;
case  9
	  dout = 12;
case 10
	  dout =  9;
case 11
	  dout =  7;
case 12
	  dout =  5;
case 13
	  dout = 10;
case 14
	  dout =  6;
case 15
	  dout =  1;

case 16
	  dout = 13;
case 17
	  dout =  0;
case 18
	  dout = 11;
case 19
	  dout =  7;
case 20
	  dout =  4;
case 21
	  dout =  9;
case 22
	  dout =  1;
case 23
	  dout = 10;
case 24
	  dout = 14;
case 25
	  dout =  3;
case 26
	  dout =  5;
case 27
	  dout = 12;
case 28
	  dout =  2;
case 29
	  dout = 15;
case 30
	  dout =  8;
case 31
	  dout =  6;

case 32
	  dout =  1;
case 33
	  dout =  4;
case 34
	  dout = 11;
case 35
	  dout = 13;
case 36
	  dout = 12;
case 37
	  dout =  3;
case 38
	  dout =  7;
case 39
	  dout = 14;
case 40
	  dout = 10;
case 41
	  dout = 15;
case 42
	  dout =  6;
case 43
	  dout =  8;
case 44
	  dout =  0;
case 45
	  dout =  5;
case 46
	  dout =  9;
case 47
	  dout =  2;

case 48
	  dout =  6;
case 49
	  dout = 11;
case 50
	  dout = 13;
case 51
	  dout =  8;
case 52
	  dout =  1;
case 53
	  dout =  4;
case 54
	  dout = 10;
case 55
	  dout =  7;
case 56
	  dout =  9;
case 57
	  dout =  5;
case 58
	  dout =  0;
case 59
	  dout = 15;
case 60
	  dout = 14;
case 61
	  dout =  2;
case 62
	  dout =  3;
case 63
	  dout = 12;
    
end
end

function [dout] = sbox8(addr_dec)
switch (addr_dec)
case 0
	  dout = 13;
case   1
	  dout =  2;
case   2
	  dout =  8;
case   3
	  dout =  4;
case   4
	  dout =  6;
case   5
	  dout = 15;
case   6
	  dout = 11;
case   7
	  dout =  1;
case   8
	  dout = 10;
case   9
	  dout =  9;
case  10
	  dout =  3;
case  11
	  dout = 14;
case  12
	  dout =  5;
case  13
	  dout =  0;
case  14
	  dout = 12;
case  15
	  dout =  7;

case  16
	  dout =  1;
case  17
	  dout = 15;
case  18
	  dout = 13;
case  19
	  dout =  8;
case  20
	  dout = 10;
case  21
	  dout =  3;
case  22
	  dout =  7;
case  23
	  dout =  4;
case  24
	  dout = 12;
case  25
	  dout =  5;
case  26
	  dout =  6;
case  27
	  dout = 11;
case  28
	  dout =  0;
case  29
	  dout = 14;
case  30
	  dout =  9;
case  31
	  dout =  2;

case  32
	  dout =  7;
case  33
	  dout = 11;
case  34
	  dout =  4;
case  35
	  dout =  1;
case  36
	  dout =  9;
case  37
	  dout = 12;
case  38
	  dout = 14;
case  39
	  dout =  2;
case  40
	  dout =  0;
case  41
	  dout =  6;
case  42
	  dout = 10;
case  43
	  dout = 13;
case  44
	  dout = 15;
case  45
	  dout =  3;
case  46
	  dout =  5;
case  47
	  dout =  8;

case  48
	  dout =  2;
case  49
	  dout =  1;
case  50
	  dout = 14;
case  51
	  dout =  7;
case  52
	  dout =  4;
case  53
	  dout = 10;
case  54
	  dout =  8;
case  55
	  dout = 13;
case  56
	  dout = 15;
case  57
	  dout = 12;
case  58
	  dout =  9;
case  59
	  dout =  0;
case  60
	  dout =  3;
case  61
	  dout =  5;
case  62
	  dout =  6;
case  63
	  dout = 11;
    
end
end


    
