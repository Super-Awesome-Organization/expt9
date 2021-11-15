% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 9 Part 2
% 11/15/21
%
% Description:
%	selection.m function determines if a specific bit b filps during the
%	first round or not. If it does filp the function returns 1 otherwise it
%	returns 0. The function takes in the plaintext(M), bit register to
%	determine bit flip (b), and 6 bit subkey guess (K). The selection
%	function was created by implmenting the first round of DES and checking
%	if the bit,b, in Lout filps when compared to the last xor, Rout bit b.
%	First an intial permutation is done on M. Then the initial permutation
%	is split into Xin and Lout. Xin is then permutated to create the E
%	block in the crp function (from expt 4). Then the E block is xor with
%	the guess key K. From their 8 Sboxes are used. The result of the Sboxes
%	are permutated and the permutation result is xor'd with Xin.

function [flip] = selection (M,b,K)
    % M is plaintext
    % b is register that is chosen as a decimal 
    % K is 6 bit key guess (0 to 63) as a decimal
    
    % Checks if K and b are vaild values
    if K < 0 || K > 63
        display("INVALID K VALUE")
        
    end
    if b < 1 || b > 32
        display("INVALID b VALUE")
        
    end
    
    % converts Plaintext(M) and Key(K) to binary
    %traces_names_binary = hexToBinaryVector(traces_names,64);
    desIn = hexToBinaryVector(M,64,'LSBFirst')';
    K_binary = decimalToBinaryVector(K,6,'LSBFirst')';
    
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
    X0 = xor(E(1+offset:6+offset), K_binary);
    offset = 6;
    X1 = xor(E(1+offset:6+offset), K_binary);
    offset = 12;
    X2 = xor(E(1+offset:6+offset), K_binary);
    offset = 18;
    X3 = xor(E(1+offset:6+offset), K_binary);
    offset = 24;
    X4 = xor(E(1+offset:6+offset), K_binary);
    offset = 30;
    X5 = xor(E(1+offset:6+offset), K_binary);
    offset = 36;
    X6 = xor(E(1+offset:6+offset), K_binary);
    offset = 42;
    X7 = xor(E(1+offset:6+offset), K_binary);
    
    % Compute the S-box
    % insert code
    dout = cat (1, decimalToBinaryVector(sbox(X0,1),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X1,2),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X2,3),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X3,4),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X4,5),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X5,6),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X6,7),4,'LSBFirst')',...
                   decimalToBinaryVector(sbox(X7,8),4,'LSBFirst')')';
   S = dout'; 
    
    % Compute the P block
     out = cat (1,S(16,:), S(7,:), S(20,:), S(21,:), S(29,:), S(12,:), S(28,:),...
            S(17,:), S(1,:), S(15,:), S(23,:), S(26,:), S(5,:), S(18,:),...
            S(31,:), S(10,:), S(2,:), S(8,:), S(24,:), S(14,:), S(32,:),...
            S(27,:), S(3,:), S(9,:), S(19,:), S(13,:), S(30,:), S(6,:),...
            S(22,:), S(11,:), S(4,:), S(25,:))';
    
    
    
    % end CRP
    
    % XOR Xin and P block
    Rout = xor(Xin',out);
    
    
    % check bit flip of bit b from Rout and Lout
    % insert code if bit is the same output 0 else output 1
    
    if Rout (b) == Lout (b)
        flip = 0;
    else
        flip = 1;
        
    end    
    
    
end