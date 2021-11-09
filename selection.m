function selection (M,b,K)
    % M is plaintext
    % b is register that is chosen
    % K is 6 bit key guess (0 to 63)
    
    % Checks if K and b are vaild values
    if K < 0 || K > 63
        display("INVALID K VALUE")
        
    end
    if b < 1 || b > 322
        display("INVALID b VALUE")
        
    end
    
    % converts Plaintext(M) and Key(K) to binary
    %traces_names_binary = hexToBinaryVector(traces_names,64);
    desIn = hexToBinaryVector(M,64)';
    K_binary = decimalToBinaryVector(K,6)';
    
    %inital permutation plaintext binary (M)
    perm1 = cat(1,desIn(06+1,:), desIn(14+1,:), desIn(22+1,:), desIn(30+1,:), desIn(38+1,:), desIn(46+1,:),...
                desIn(54+1,:), desIn(62+1,:), desIn(04+1,:), desIn(12+1,:), desIn(20+1,:), desIn(28+1,:),...
                desIn(36+1,:), desIn(44+1,:), desIn(52+1,:), desIn(60+1,:), desIn(02+1,:), desIn(10+1,:), ...
                desIn(18+1,:), desIn(26+1,:), desIn(34+1,:), desIn(42+1,:), desIn(50+1,:), desIn(58+1,:), ...
                desIn(00+1,:), desIn(08+1,:), desIn(16+1,:), desIn(24+1,:), desIn(32+1,:), desIn(40+1,:), ...
                desIn(48+1,:), desIn(56+1,:), desIn(07+1,:), desIn(15+1,:), desIn(23+1,:), desIn(31+1,:), ...
                desIn(39+1,:), desIn(47+1,:), desIn(55+1,:), desIn(63+1,:), desIn(05+1,:), desIn(13+1,:),...
                desIn(21+1,:), desIn(29+1,:), desIn(37+1,:), desIn(45+1,:), desIn(53+1,:), desIn(61+1,:),...
                desIn(03+1,:), desIn(11+1,:), desIn(19+1,:), desIn(27+1,:), desIn(35+1,:), desIn(43+1,:),...
                desIn(51+1,:), desIn(59+1,:), desIn(01+1,:), desIn(09+1,:), desIn(17+1,:), desIn(25+1,:),...
                desIn(33+1,:), desIn(41+1,:), desIn(49+1,:), desIn(57+1,:) );
    
    %Round 0 bit check
    % Splits the initial permutation into Lout and Xin
    Lout = perm1(33:64,:);
    Xin = perm1 (1:32,:);
    R= Lout;
    
    % begin CRP for round 0
    % Compute the E block
    E = cat(1, R(32,:), R(1,:), R(2,:), R(3,:), R(4,:), R(5,:), R(4,:), R(5,:),...
            R(6,:), R(7,:), R(8,:), R(9,:), R(8,:), R(9,:), R(10,:), R(11,:),...
            R(12,:), R(13,:), R(12,:), R(13,:), R(14,:), R(15,:), R(16,:),...
            R(17,:), R(16,:), R(17,:), R(18,:), R(19,:), R(20,:), R(21,:),...
            R(20,:), R(21,:), R(22,:), R(23,:), R(24,:), R(25,:), R(24,:),...
            R(25,:), R(26,:), R(27,:), R(28,:), R(29,:), R(28,:), R(29,:),...
            R(30,:), R(31,:), R(32,:), R(1,:));
     
    
    % Compute the xor between E and Key
    % Only a specific bit will be checked rest of X is don't care
    offset = 0;
    X8 = xor(E(1+offset:6+offset), K_binary);
    offset = 6;
    X7 = xor(E(1+offset:6+offset), K_binary);
    offset = 12;
    X6 = xor(E(1+offset:6+offset), K_binary);
    offset = 18;
    X5 = xor(E(1+offset:6+offset), K_binary);
    offset = 24;
    X4 = xor(E(1+offset:6+offset), K_binary);
    offset = 30;
    X3 = xor(E(1+offset:6+offset), K_binary);
    offset = 36;
    X2 = xor(E(1+offset:6+offset), K_binary);
    offset = 42;
    X1 = xor(E(1+offset:6+offset), K_binary);
    
    % Compute the S-box
    % insert code
    
    % Compute the P block
    % insert code
    
    % end CRP
    
    % XOR Xin and P block
    % insert code
    
    % check bit flip of bit b from "XOR Xin and P block" and perm1
    % insert code if bit is the same output 0 else output 1
    
end