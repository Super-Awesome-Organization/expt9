
%Import all traces from files
delete(gcp('nocreate'))
parpool(8);
%importTraces

%permutated bits that coorespond with each sbox (8 downto 1)

b = [5 27 15 21 32 12 22 7 4 29 11 19 8 14 25 3 26 20 10 1 24 16 30 6 13 28 2 18 9 17 23 31];


%Bits with greatest values for each sbox:
%b = [21 7 29 14 10 6 28 9];

%run a for loop in parallel for each b
parfor bit = 1:length(b)
    %Redefine b so can run in parallel
    b = [5 27 15 21 32 12 22 7 4 29 11 19 8 14 25 3 26 20 10 1 24 16 30 6 13 28 2 18 9 17 23 31];
    %b = [21 7 29 14 10 6 28 9];
    max_diff = 0;
    max_k = 0;
    %Get the list of names for the trace files and their cooresponding
    %input values in hex
    %must be in loop to run in parallel
    [traces_names,full_names] = getTraceNames
    %Run each guess against each bit value
    for k = 0:63  
    fprintf(1,'Round %d of 64 for Bit %d\n', k+1, bit);
    zero_bucket = zeros(5003,1);
    one_bucket = zero_bucket;
    zero_bucket_count = 0;
    one_bucket_count = 0;

        for i = 1:traces_names.length()

          % call selection function
          flip = selection(traces_names(i), b(bit), k ); 
          % if bit_flip is 1 put in bucket one and inc one count.
          if flip == 1
                one_bucket_count = one_bucket_count +1;
                one_bucket = one_bucket + getTrace(full_names(:,i));
          end    
          % if bit_flip is 0 put in bucket zero and inc zero count. 
          if flip == 0
                zero_bucket_count = zero_bucket_count +1;
                zero_bucket = zero_bucket + getTrace(full_names(:,i));
          end    


        end  
    % average 1's bit_flip
    one_bucket_final = one_bucket/one_bucket_count;

    % average 0's bit_flip
    zero_bucket_final = zero_bucket/zero_bucket_count;

    % average 0's - average 1's
    diff = zero_bucket_final - one_bucket_final;
    
    %Get max diff for bit
    if max(diff) > max_diff
       max_diff = max(diff);
       max_k = k;
    end        

     
    
    % plot and save figure with key value
    g = plot (diff);
    title("Difference of Average Traces Using Subkey " + k + " for Bit " + b(bit));
    xlabel("Trace Over Time");
    ylabel("Voltage Difference");

    output_file = strcat('./graphs/Bit'," ", string(b(bit)), ' Key '," ", string(k), '.png');
    saveas(g,output_file)    

    end     % increment key value and perform again for k = 0: 63
    %Output maximum value for each b     
   write_data = cat(2, max_k,max_diff);
    output_file = strcat('./csv/', string(b(bit)), '.csv');
    csvwrite(output_file,write_data);
    
    
end



 

