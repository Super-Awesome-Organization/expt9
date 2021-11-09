
%Import all traces from files
importTraces

%bit value being found

%b values to test: 5, 32, 4, 8, 26, 24,13, 9
b = [5 32 4 8 26 24 13 9];


for bit = 1:length(b)
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
                one_bucket = one_bucket + traces_all (:,i);
          end    
          % if bit_flip is 0 put in bucket zero and inc zero count. 
          if flip == 0
                zero_bucket_count = zero_bucket_count +1;
                zero_bucket = zero_bucket + traces_all (:,i);
          end    


        end  
    % average 1's bit_flip
    one_bucket_final = one_bucket/one_bucket_count;

    % average 0's bit_flip
    zero_bucket_final = zero_bucket/zero_bucket_count;

    % average 0's - average 1's
    diff = zero_bucket_final - one_bucket_final;

    % plot and save figure with key value
    g = plot (diff);
    title("Using Subkey " + k + " for Bit " + b(bit));
    xlabel("Sample");
    ylabel("Amplitude");

    output_file = strcat('./graphs/Bit'," ", string(b(bit)), ' Key '," ", string(k), '.png');
    saveas(g,output_file)    

    end     % increment key value and perform again for k = 0: 63
end



 

